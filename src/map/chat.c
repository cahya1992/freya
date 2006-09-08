// $Id: chat.c 447 2005-10-23 22:02:39Z Yor $
#include <config.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "../common/db.h"
#include "nullpo.h"
#include "../common/malloc.h"
#include "map.h"
#include "clif.h"
#include "pc.h"
#include "chat.h"
#include "npc.h"
#include "atcommand.h"

#ifdef MEMWATCH
#include "memwatch.h"
#endif

int chat_triggerevent(struct chat_data *cd);


/*==========================================
 * チャットルーム作成
 *------------------------------------------
 */
void chat_createchat(struct map_session_data *sd, unsigned short limit, int pub, char* pass, char* title, int titlelen) {
	struct chat_data *cd;

//	nullpo_retv(sd); // checked before to call function
		
	if(sd->chatID) {
			clif_wis_message(sd->fd, wisp_server_name, msg_txt(670), strlen(msg_txt(670)) + 1); // You can not create chat when you are in one [Proximus]
			return;
	}

	if(!limit || limit > MAX_CHATTERS)
		limit = MAX_CHATTERS; //Incorrect limit, custom packet..

	CALLOC(cd, struct chat_data, 1);

	cd->limit = limit;
	cd->pub = pub;
	cd->users = 1;
	strncpy(cd->pass, pass, sizeof(cd->pass) - 1);
	if (titlelen >= sizeof(cd->title) - 1)
		titlelen = sizeof(cd->title) - 1;
	strncpy(cd->title, title, titlelen);

	cd->owner = (struct block_list **)(&cd->usersd[0]);
	cd->usersd[0] = sd;
	cd->bl.m = sd->bl.m;
	cd->bl.x = sd->bl.x;
	cd->bl.y = sd->bl.y;
	cd->bl.type = BL_CHAT;

	cd->bl.id = map_addobject(&cd->bl);
	if (cd->bl.id == 0) {
		clif_createchat(sd, 1); // 0: ok, 1: room limit exceeded., 2: same room exists.
		FREE(cd);
		return;
	}
	pc_setchatid(sd, cd->bl.id);

	clif_createchat(sd, 0); // 0: ok, 1: room limit exceeded., 2: same room exists.
	clif_dispchat(cd, 0);

	return;
}

/*==========================================
 * 既存チャットルームに参加
 *------------------------------------------
 */
void chat_joinchat(struct map_session_data *sd, int chatid, char* pass) {
	struct chat_data *cd;

//	nullpo_retv(sd); // checked before to call function

	cd = (struct chat_data*)map_id2bl(chatid);
	if (cd == NULL || cd->bl.type != BL_CHAT) // player can send any id (hack), so check if it's a chat.
		return;

	if (cd->bl.m != sd->bl.m || cd->users >= cd->limit) {
		clif_joinchatfail(sd, 0); // 0: The room is full, 1: Incorrect User ID or Password. Please, try again, 2: You have been kicked off this room, 3: (void), 4: You do not have enough zeny., 5: You are not the required level.
		return;
	}
	if (cd->pub == 0 && strncmp(pass, cd->pass, 8)) {
		clif_joinchatfail(sd, 1); // 0: The room is full, 1: Incorrect User ID or Password. Please, try again, 2: You have been kicked off this room, 3: (void), 4: You do not have enough zeny., 5: You are not the required level.
		return;
	}

	// to avoid this bug:
	// 1. MC uses vending to sells anything.
	// 2. Other ppl create chatroom.
	// 3. MC join chatroom.
	// 4. Other ppl quit chatroom that MC joined.
	if (sd->vender_id) {
		clif_wis_message(sd->fd, wisp_server_name, msg_txt(648), strlen(msg_txt(648)) + 1); // A merchant with a vending shop can not join a chat, sorry.
		return;
	}

	if (chatid == sd->chatID) { // Double Chat fix by Alex14, thx CHaNGeTe
		clif_joinchatfail(sd, 1); // 0: The room is full, 1: Incorrect User ID or Password. Please, try again, 2: You have been kicked off this room, 3: (void), 4: You do not have enough zeny., 5: You are not the required level.
		return;
	}

	cd->usersd[cd->users] = sd;
	cd->users++;

	pc_setchatid(sd, cd->bl.id);

	clif_joinchatok(sd, cd); // 新たに参加した人には全員のリスト
	clif_addchat(cd, sd); // 既に中に居た人には追加した人の報告
	clif_dispchat(cd, 0); // 周囲の人には人数変化報告

	chat_triggerevent(cd); // イベント

	return;
}

/*==========================================
 * チャットルームから抜ける
 *------------------------------------------
 */
void chat_leavechat(struct map_session_data *sd) {
	struct chat_data *cd;
	int i, leavechar;

	nullpo_retv(sd);

	cd = (struct chat_data*)map_id2bl(sd->chatID);
	if (cd == NULL || cd->bl.type != BL_CHAT) // player can send any id (hack), so check if it's a chat.
		return;

	leavechar = -1;
	for(i = 0; i < cd->users; i++) {
		if (cd->usersd[i] == sd) {
			leavechar = i;
			break;
		}
	}
	if (leavechar == -1) // そのchatに所属していないらしい (バグ時のみ)
		return;

	if (leavechar == 0 && cd->users > 1 && (*cd->owner)->type == BL_PC) {
		// 所有者だった&他に人が居る&PCのチャット
		clif_changechatowner(cd, cd->usersd[1]);
		clif_clearchat(cd, 0);
	}

	// 抜けるPCにも送るのでusersを減らす前に実行
	clif_leavechat(cd, sd);

	cd->users--;
	pc_setchatid(sd, 0);

	if (cd->users == 0 && (*cd->owner)->type == BL_PC) {
			// 全員居なくなった&PCのチャットなので消す
		clif_clearchat(cd, 0);
		map_delobject(cd->bl.id); // freeまでしてくれる
	} else {
		for(i = leavechar; i < cd->users; i++)
			cd->usersd[i] = cd->usersd[i + 1];
		if (leavechar == 0 && (*cd->owner)->type == BL_PC) {
			// PCのチャットなので所有者が抜けたので位置変更
			cd->bl.x = cd->usersd[0]->bl.x;
			cd->bl.y = cd->usersd[0]->bl.y;
		}
		clif_dispchat(cd, 0);
	}

	return;
}

/*==========================================
 * チャットルームの持ち主を譲る
 *------------------------------------------
 */
void chat_changechatowner(struct map_session_data *sd, char *nextownername) {
	struct chat_data *cd;
	struct map_session_data *tmp_sd;
	int i, nextowner;

//	nullpo_retv(sd); // checked before to call function

	cd = (struct chat_data*)map_id2bl(sd->chatID);
	if (cd == NULL || cd->bl.type != BL_CHAT || (struct block_list *)sd != (*cd->owner))
		return;

	nextowner = -1;
	for(i = 1; i < cd->users; i++) {
		if (strcmp(cd->usersd[i]->status.name, nextownername) == 0) {
			nextowner = i;
			break;
		}
	}
	if (nextowner == -1) // そんな人は居ない
		return;

	clif_changechatowner(cd, cd->usersd[nextowner]);
	// 一旦消す
	clif_clearchat(cd,0);

	// userlistの順番変更 (0が所有者なので)
	if ((tmp_sd = cd->usersd[0]) == NULL)
		return; //ありえるのかな？
	cd->usersd[0] = cd->usersd[nextowner];
	cd->usersd[nextowner] = tmp_sd;

	// 新しい所有者の位置へ変更
	cd->bl.x = cd->usersd[0]->bl.x;
	cd->bl.y = cd->usersd[0]->bl.y;

	// 再度表示
	clif_dispchat(cd,0);

	return;
}

/*==========================================
 * チャットの状態(タイトル等)を変更
 *------------------------------------------
 */
void chat_changechatstatus(struct map_session_data *sd, unsigned short limit, int pub, char* pass, char* title, int titlelen) {
	char *chat_title;
	struct chat_data *cd;

//	nullpo_retv(sd); // checked before to call function

	cd = (struct chat_data*)map_id2bl(sd->chatID);
	if (cd == NULL || cd->bl.type != BL_CHAT || (struct block_list *)sd != (*cd->owner))
		return;

	if(!limit || limit > MAX_CHATTERS)
		limit = MAX_CHATTERS; //Incorrect limit, custom packet..

	if (titlelen >= sizeof(cd->title) - 1)
		titlelen = sizeof(cd->title) - 1;

	CALLOC(chat_title, char, titlelen + 1); // (title) + NULL
	strncpy(chat_title, title, titlelen);
	// check bad words
	if (check_bad_word(chat_title, titlelen, sd)) {
		FREE(chat_title);
		return;
	}

	cd->limit = limit;
	cd->pub = pub;
	memset(cd->pass, 0, sizeof(cd->pass));
	strncpy(cd->pass, pass, sizeof(cd->pass) - 1);
	memset(cd->title, 0, sizeof(cd->title));
	strncpy(cd->title, chat_title, titlelen);

	clif_changechatstatus(cd);
	clif_dispchat(cd, 0);

	FREE(chat_title);

	return;
}

/*==========================================
 * チャットルームから蹴り出す
 *------------------------------------------
 */
void chat_kickchat(struct map_session_data *sd, char *kickusername) {
	struct chat_data *cd;
	int i;

//	nullpo_retv(sd); // checked before to call function

	cd = (struct chat_data*)map_id2bl(sd->chatID);
	if (cd == NULL || cd->bl.type != BL_CHAT || (struct block_list *)sd != (*cd->owner))
		return;

	for(i = 0; i < cd->users; i++)
		if (strcmp(cd->usersd[i]->status.name, kickusername) == 0) {
			chat_leavechat(cd->usersd[i]);
			return;
		}

	return;
}

/*==========================================
 * npcチャットルーム作成
 *------------------------------------------
 */
int chat_createnpcchat(struct npc_data *nd, unsigned short limit, int pub, int trigger, char* title, int titlelen, const char *ev) {
	struct chat_data *cd;

	nullpo_retr(1, nd);

	if(!limit || limit > MAX_CHATTERS)
		limit = MAX_CHATTERS; //Incorrect limit

	CALLOC(cd, struct chat_data, 1);

	cd->limit = cd->trigger = limit;
	if (trigger > 0)
		cd->trigger = trigger;
	cd->pub = pub;
	//cd->users = 0;
	//memset(cd->pass, 0, sizeof(cd->pass));
	if (titlelen >= sizeof(cd->title) - 1)
		titlelen = sizeof(cd->title) - 1;
	strncpy(cd->title, title, titlelen);
	//cd->title[titlelen] = '\0'; CALLOC init to 0

	cd->bl.m = nd->bl.m;
	cd->bl.x = nd->bl.x;
	cd->bl.y = nd->bl.y;
	cd->bl.type = BL_CHAT;
	cd->owner_ = (struct block_list *)nd;
	cd->owner = &cd->owner_;
	strncpy(cd->npc_event, ev, sizeof(cd->npc_event) - 1);

	cd->bl.id = map_addobject(&cd->bl);
	if (cd->bl.id == 0) {
		FREE(cd);
		return 0;
	}
	nd->chat_id = cd->bl.id;

	clif_dispchat(cd, 0);

	return 0;
}

/*==========================================
 * npcチャットルーム削除
 *------------------------------------------
 */
int chat_deletenpcchat(struct npc_data *nd) {
	struct chat_data *cd;

	nullpo_retr(0, nd);
	nullpo_retr(0, cd = (struct chat_data*)map_id2bl(nd->chat_id));

	chat_npckickall(cd);
	clif_clearchat(cd, 0);
	map_delobject(cd->bl.id); // freeまでしてくれる
	nd->chat_id = 0;

	return 0;
}

/*==========================================
 * 規定人数以上でイベントが定義されてるなら実行
 *------------------------------------------
 */
int chat_triggerevent(struct chat_data *cd) {
	nullpo_retr(0, cd);

	if(cd->users>=cd->trigger && cd->npc_event[0])
		npc_event_do(cd->npc_event);

	return 0;
}

/*==========================================
 * イベントの有効化
 *------------------------------------------
 */
int chat_enableevent(struct chat_data *cd) {
	nullpo_retr(0, cd);

	cd->trigger&=0x7f;
	chat_triggerevent(cd);

	return 0;
}

/*==========================================
 * イベントの無効化
 *------------------------------------------
 */
int chat_disableevent(struct chat_data *cd) {
	nullpo_retr(0, cd);

	cd->trigger|=0x80;

	return 0;
}

/*==========================================
 * チャットルームから全員蹴り出す
 *------------------------------------------
 */
int chat_npckickall(struct chat_data *cd) {
	nullpo_retr(0, cd);

	while(cd->users > 0) {
		chat_leavechat(cd->usersd[cd->users-1]);
	}

	return 0;
}

/*==========================================
 * 終了
 *------------------------------------------
 */
int do_final_chat(void) {
	return 0;
}
