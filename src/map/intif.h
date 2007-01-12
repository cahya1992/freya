/*	This file is a part of Freya.
		Freya is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	any later version.
		Freya is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
	GNU General Public License for more details.
		You should have received a copy of the GNU General Public License
	along with Freya; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA */

#ifndef _INTIF_H_
#define _INFIF_H_

int intif_parse(int fd);

int intif_GMmessage(char* mes, int flag);
void intif_announce(char* mes, unsigned int color, unsigned int flag);

int intif_wis_message(struct map_session_data *sd, char *nick, char *mes, int mes_len);
void intif_wis_message_to_gm(char *Wisp_name, short min_gm_level, char *mes);
void intif_main_message(char *Wisp_name, char *mes);
int intif_gm_message(char *Wisp_name, char *mes);

void intif_send_log(unsigned char log_type, char *log_msg);

void intif_saveaccountreg(struct map_session_data *sd);
//int intif_request_accountreg(struct map_session_data *sd); // now send at same moment of character (synchronized)

int intif_request_storage(int account_id);
int intif_send_storage(struct storage *stor);
int intif_request_guild_storage(int account_id, int guild_id);
int intif_send_guild_storage(int account_id, struct guild_storage *gstor);


void intif_create_party(struct map_session_data *sd, char *party_name, short item, short item2);
int intif_request_partyinfo(int party_id);
void intif_party_addmember(int party_id, struct map_session_data *sd);
void intif_party_changeoption(int party_id, int account_id, unsigned short party_exp, unsigned short item);
void intif_party_leave(int party_id, int account_id);
int intif_party_changemap(struct map_session_data *sd, unsigned char online); // flag: 0: offline, 1:online
int intif_break_party(int party_id);
void intif_party_message(int party_id, int account_id, char *mes, int len);
int intif_party_checkconflict(int party_id, int account_id, char *nick);


void intif_guild_create(const char *name, const struct guild_member *master);
int intif_guild_request_info(int guild_id);
int intif_guild_addmember(int guild_id, struct guild_member *m);
void intif_guild_leave(int guild_id, int account_id, int char_id, int flag, const char *mes);
int intif_guild_memberinfoshort(int guild_id, int account_id, int char_id, int online, int lv, int class);
int intif_guild_break(int guild_id);
int intif_guild_message(int guild_id, int account_id, char *mes, int len);
int intif_guild_checkconflict(int guild_id, int account_id, int char_id);
int intif_guild_change_basicinfo(int guild_id, int type, const void *data, int len);
void intif_guild_change_memberinfo(int guild_id, int account_id, int char_id, int type, const void *data, int len);
void intif_guild_position(int guild_id, int idx, struct guild_position *p);
int intif_guild_skillup(int guild_id, int skill_num, int account_id, int flag);
void intif_guild_alliance(int guild_id1, int guild_id2, int account_id1, int account_id2, unsigned char flag);
void intif_guild_notice(int guild_id, const char *mes1, const char *mes2);
void intif_guild_emblem(int guild_id, unsigned short len, const char *data);
int intif_guild_castle_dataload(int castle_id, int idx);
int intif_guild_castle_datasave(int castle_id, int idx, int value);

void intif_create_pet(int account_id, int char_id, short pet_type, short pet_lv, short pet_egg_id,
                      short pet_equip, short intimate, short hungry, char rename_flag, char incuvate, char *pet_name);
void intif_request_petdata(int account_id, int char_id, int pet_id);
void intif_save_petdata(int account_id, struct s_pet *p);
void intif_delete_petdata(int pet_id);

int intif_jumpto(int account_id, char *name);
int intif_where(int account_id, char *name);
int intif_charmovereq(struct map_session_data *sd, char *name, int flag);

#endif // _INFIF_H_
