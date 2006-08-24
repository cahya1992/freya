// $Id: battle.h 457 2005-10-26 22:17:52Z Yor $
#ifndef _BATTLE_H_
#define _BATTLE_H_

// ダメージ
struct Damage {
	int damage,damage2;
	int type,div_;
	int amotion,dmotion;
	int blewcount;
	int flag;
	int dmg_lv;	//囲まれ減算計算用　0:スキル攻撃 ATK_LUCKY,ATK_FLEE,ATK_DEF
};

// 属性表（読み込みはpc.c、battle_attr_fixで使用）
extern int attr_fix_table[4][10][10];

struct map_session_data;
struct mob_data;
struct block_list;

// ダメージ計算

struct Damage battle_calc_attack(	int attack_type,
	struct block_list *bl,struct block_list *target,int skill_num,int skill_lv,int flag);
struct Damage battle_calc_magic_attack(
	struct block_list *bl,struct block_list *target,int skill_num,int skill_lv,int flag);
struct Damage  battle_calc_misc_attack(
	struct block_list *bl,struct block_list *target,int skill_num,int skill_lv,int flag);

// 属性修正計算
int battle_attr_fix(int damage,int atk_elem,int def_elem);

// ダメージ最終計算
int battle_calc_damage(struct block_list *src,struct block_list *bl,int damage,int div_,int skill_num,int skill_lv,int flag);
int battle_calc_drain(int damage, int rate, int per, int val);
enum {	// 最終計算のフラグ
	BF_WEAPON    = 0x0001,
	BF_MAGIC     = 0x0002,
	BF_MISC      = 0x0004,
	BF_SHORT     = 0x0010,
	BF_LONG      = 0x0040,
	BF_SKILL     = 0x0100,
	BF_NORMAL    = 0x0200,
	BF_WEAPONMASK= 0x000f,
	BF_RANGEMASK = 0x00f0,
	BF_SKILLMASK = 0x0f00
};

// 実際にHPを増減
//int battle_delay_damage(unsigned int tick, struct block_list *src, struct block_list *target, int damage, int flag);
int battle_delay_damage (unsigned int tick, struct block_list *src, struct block_list *target, int attack_type, int skill_id, int skill_lv, int damage, int dmg_lv, int flag);
int battle_damage(struct block_list *bl, struct block_list *target, int damage, int flag);
int battle_heal(struct block_list *bl, struct block_list *target, int hp, int sp, int flag);

// 攻撃や移動を止める
void battle_stopattack(struct block_list *bl);
void battle_stopwalking(struct block_list *bl, int type);

// 通常攻撃処理まとめ
int battle_weapon_attack(struct block_list *bl, struct block_list *target,
	 unsigned int tick, int flag);

// 各種パラメータを得る
int battle_counttargeted(struct block_list *bl, struct block_list *src, int target_lv);
int battle_getcurrentskill(struct block_list *bl);

#define BCT_ENEMY 0x020000
//This should be (~BCT_ENEMY&BCT_ALL)
#define BCT_NOENEMY 0x1d0000
#define BCT_PARTY	0x040000
//This should be (~BCT_PARTY&BCT_ALL)
#define BCT_NOPARTY 0x1b0000
#define BCT_GUILD	0x080000
//This should be (~BCT_GUILD&BCT_ALL)
#define BCT_NOGUILD 0x170000
#define BCT_ALL 0x1f0000
#define BCT_NOONE 0x000000
#define BCT_SELF 0x010000
#define BCT_NEUTRAL 0x100000

/*
enum {
	BCT_NOENEMY = 0x00000,
	BCT_PARTY   = 0x10000,
	BCT_ENEMY   = 0x40000,
	BCT_NOPARTY = 0x50000,
	BCT_ALL     = 0x20000,
	BCT_NOONE   = 0x60000,
	BCT_SELF    = 0x60000
};
*/
int battle_check_undead(int race, int element);
int battle_check_target(struct block_list *src, struct block_list *target, int flag);
int battle_check_range(struct block_list *src, struct block_list *bl, int range);


// 設定

extern struct Battle_Config {
	unsigned short warp_point_debug;
	unsigned short enemy_critical;
	unsigned short enemy_critical_rate;
	unsigned short enemy_str;
	unsigned short enemy_perfect_flee;
	unsigned short cast_rate,delay_rate,delay_dependon_dex;
	unsigned short sdelay_attack_enable;
	unsigned short left_cardfix_to_right;
	unsigned short pc_skill_add_range;
	unsigned short skill_out_range_consume;
	unsigned short mob_skill_add_range;
	unsigned short pc_damage_delay;
	unsigned short pc_damage_delay_rate;
	unsigned short defnotenemy;
	unsigned short random_monster_checklv;
	unsigned short attr_recover;
	unsigned short flooritem_lifetime;
	unsigned short item_auto_get;
	unsigned short item_auto_get_loot;
	unsigned short item_auto_get_distance;
	int item_first_get_time;
	int item_second_get_time;
	int item_third_get_time;
	int mvp_item_first_get_time;
	int mvp_item_second_get_time;
	int mvp_item_third_get_time;
	int base_exp_rate, job_exp_rate;
	unsigned short drop_rate0item;
	unsigned short death_penalty_type_base;
	unsigned short death_penalty_base;
	unsigned short death_penalty_base2_lvl, death_penalty_base2;
	unsigned short death_penalty_base3_lvl, death_penalty_base3;
	unsigned short death_penalty_base4_lvl, death_penalty_base4;
	unsigned short death_penalty_base5_lvl, death_penalty_base5;
	unsigned short death_penalty_type_job;
	unsigned short death_penalty_job;
	unsigned short death_penalty_job2_lvl, death_penalty_job2;
	unsigned short death_penalty_job3_lvl, death_penalty_job3;
	unsigned short death_penalty_job4_lvl, death_penalty_job4;
	unsigned short death_penalty_job5_lvl, death_penalty_job5;
	unsigned short pvp_exp; // [MouseJstr]
	unsigned short gtb_pvp_only; // [MouseJstr]
	int zeny_penalty;
	unsigned short zeny_penalty_percent;
	unsigned short zeny_penalty_by_lvl;
	unsigned short restart_hp_rate;
	unsigned short restart_sp_rate;
	int mvp_item_rate,mvp_exp_rate;
	unsigned short mvp_hp_rate;
	unsigned short monster_hp_rate;
	unsigned short monster_max_aspd;
	unsigned short atc_gmonly;
	unsigned short atc_spawn_quantity_limit;
	unsigned short atc_map_mob_limit;
	unsigned short atc_local_spawn_interval;
	unsigned short gm_allskill;
	unsigned short gm_all_skill_job;
	unsigned short gm_all_skill_platinum;
	unsigned short gm_allskill_addabra;
	unsigned short gm_allequip;
	unsigned short gm_skilluncond;
	unsigned short skillfree;
	unsigned short skillup_limit;
	unsigned short check_minimum_skill_points;
	int check_maximum_skill_points;
	unsigned short wp_rate;
	unsigned short pp_rate;
	unsigned short cdp_rate;
	unsigned short monster_active_enable;
	unsigned short monster_damage_delay_rate;
	unsigned short monster_loot_type;
	unsigned short mob_skill_use;
	unsigned short mob_count_rate;
	unsigned short quest_skill_learn;
	unsigned short quest_skill_reset;
	unsigned short basic_skill_check;
	unsigned short no_caption_cloaking; // remove the caption "cloaking !!" when skill is casted
	unsigned short display_hallucination; // Enable or disable hallucination Skill.
	unsigned short no_guilds_glory;
	unsigned short guild_emperium_check;
	unsigned short guild_exp_limit;
	unsigned short guild_max_castles;
	unsigned short pc_invincible_time;
	unsigned short pet_birth_effect;
	unsigned short pet_catch_rate;
	unsigned short pet_rename;
	unsigned short pet_friendly_rate;
	unsigned short pet_hungry_delay_rate;
	unsigned short pet_hungry_friendly_decrease;
	unsigned short pet_str;
	unsigned short pet_status_support;
	unsigned short pet_attack_support;
	unsigned short pet_damage_support;
	unsigned short pet_support_rate;
	unsigned short pet_attack_exp_to_master;
	unsigned short pet_attack_exp_rate;
	unsigned short skill_min_damage;
	unsigned short finger_offensive_type;
	unsigned short heal_exp;
	unsigned short resurrection_exp;
	unsigned short shop_exp;
	unsigned short combo_delay_rate;
	unsigned short item_check;
	unsigned short item_use_interval; // [Skotlex]
	unsigned short wedding_modifydisplay;
	int natural_healhp_interval;
	int natural_healsp_interval;
	int natural_heal_skill_interval;
	unsigned short natural_heal_weight_rate;
	unsigned short item_name_override_grffile;
	unsigned short indoors_override_grffile; // [Celest]
	unsigned short skill_sp_override_grffile; // [Celest]
	unsigned short cardillust_read_grffile;
	unsigned short item_equip_override_grffile;
	unsigned short item_slots_override_grffile;
	unsigned short arrow_decrement;
	unsigned short max_aspd;
	int max_hp;
	int max_sp;
	unsigned short max_lv;
	unsigned short max_parameter;
	int max_cart_weight;
	unsigned short pc_skill_log;
	unsigned short mob_skill_log;
	unsigned short battle_log;
	unsigned short save_log;
	unsigned short error_log;
	unsigned short etc_log;
	unsigned short save_clothcolor;
	unsigned short undead_detect_type;
	unsigned short pc_auto_counter_type;
	unsigned short monster_auto_counter_type;
	unsigned short agi_penalty_type;
	unsigned short agi_penalty_count;
	unsigned short agi_penalty_num;
	unsigned short vit_penalty_type;
	unsigned short vit_penalty_count;
	unsigned short vit_penalty_num;
	unsigned short player_defense_type;
	unsigned short monster_defense_type;
	unsigned short pet_defense_type;
	unsigned short magic_defense_type;
	unsigned short pc_skill_reiteration;
	unsigned short monster_skill_reiteration;
	unsigned short pc_skill_nofootset;
	unsigned short monster_skill_nofootset;
	unsigned short pc_cloak_check_type;
	unsigned short monster_cloak_check_type;
	unsigned short gvg_short_damage_rate;
	unsigned short gvg_long_damage_rate;
	unsigned short gvg_weapon_damage_rate;
	unsigned short gvg_magic_damage_rate;
	unsigned short gvg_misc_damage_rate;
	unsigned short gvg_flee_penalty;
	unsigned short gvg_eliminate_time;
	unsigned short mob_changetarget_byskill;
	unsigned short pc_attack_direction_change;
	unsigned short monster_attack_direction_change;
	unsigned short pc_land_skill_limit;
	unsigned short monster_land_skill_limit;
	unsigned short party_skill_penalty;
	unsigned short monster_class_change_full_recover;
	unsigned short produce_item_name_input;
	unsigned short produce_potion_name_input;
	unsigned short making_arrow_name_input;
	unsigned short holywater_name_input;
	unsigned short atcommand_item_creation_name_input;
	unsigned short display_delay_skill_fail;
	unsigned short display_snatcher_skill_fail;
	unsigned short chat_warpportal;
	unsigned short mob_warpportal;
	unsigned short dead_branch_active;
	int vending_max_value;
//	unsigned short pet_lootitem; // removed
//	unsigned short pet_weight; // removed
	unsigned short show_steal_in_same_party;
	unsigned short enable_upper_class;
	unsigned short pet_attack_attr_none;
	unsigned short mob_attack_attr_none;
	unsigned short mob_ghostring_fix;
	unsigned short pc_attack_attr_none;
	int item_rate_common, item_rate_card, item_rate_equip, item_rate_heal, item_rate_use;
	unsigned short item_drop_common_min, item_drop_common_max;
	unsigned short item_drop_card_min, item_drop_card_max;
	unsigned short item_drop_equip_min, item_drop_equip_max;
	unsigned short item_drop_mvp_min, item_drop_mvp_max;
	unsigned short item_drop_heal_min, item_drop_heal_max;
	unsigned short item_drop_use_min, item_drop_use_max;

	unsigned short prevent_logout; // Added by RoVeRT

	unsigned short alchemist_summon_reward;	// [Valaris]
	unsigned short maximum_level;
	unsigned short atcommand_max_job_level_novice;
	unsigned short atcommand_max_job_level_job1;
	unsigned short atcommand_max_job_level_job2;
	unsigned short atcommand_max_job_level_supernovice;
	unsigned short atcommand_max_job_level_highnovice;
	unsigned short atcommand_max_job_level_highjob1;
	unsigned short atcommand_max_job_level_highjob2;
	unsigned short atcommand_max_job_level_babynovice;
	unsigned short atcommand_max_job_level_babyjob1;
	unsigned short atcommand_max_job_level_babyjob2;
	unsigned short atcommand_max_job_level_superbaby;
	unsigned short drops_by_luk;
	unsigned short monsters_ignore_gm;
	unsigned short equipment_breaking;
	unsigned short equipment_break_rate;
	unsigned short pet_equip_required;
	unsigned short multi_level_up;
	unsigned short pk_mode;
	unsigned short show_mob_hp;  // end additions [Valaris]

	unsigned short agi_penalty_count_lv;
	unsigned short vit_penalty_count_lv;

	unsigned short gx_allhit;
	unsigned short gx_cardfix;
	unsigned short gx_dupele;
	unsigned short gx_disptype;
	unsigned short devotion_level_difference;
	unsigned short player_skill_partner_check;
	unsigned short hide_GM_session; // minimum level of hidden GMs
	unsigned short unit_movement_type;
	unsigned short invite_request_check;
	unsigned short skill_removetrap_type;
	unsigned short disp_experience;
	unsigned short disp_experience_type;
	unsigned short castle_defense_rate;
	unsigned short riding_weight;
	unsigned short backstab_bow_penalty;
	unsigned short hp_rate;
	unsigned short sp_rate;
	unsigned short gm_can_drop_lv;
	unsigned short display_hpmeter;
	unsigned short bone_drop;

	unsigned short night_at_start; // added by [Yor]
	int day_duration; // added by [Yor]
	int night_duration; // added by [Yor]
	unsigned short ban_spoof_namer; // added by [Yor]
	int ban_hack_trade; // added by [Yor] // can be negative
	int ban_bot; // added by [Yor]
	unsigned short check_ban_bot; // added by [Yor]
	unsigned short max_message_length; // added by [Yor]
	unsigned short max_global_message_length; // added by [Yor]
	unsigned short hack_info_GM_level; // added by [Yor]
	unsigned short speed_hack_info_GM_level; // added by [Yor]
	unsigned short any_warp_GM_min_level; // added by [Yor]
	unsigned short packet_ver_flag; // added by [Yor]
	unsigned short muting_players; // added by [PoW]

	unsigned short min_hair_style; // added by [Yor]
	unsigned short max_hair_style; // added by [Yor]
	unsigned short min_hair_color; // added by [Yor]
	unsigned short max_hair_color; // added by [Yor]
	unsigned short min_cloth_color; // added by [Yor]
	unsigned short max_cloth_color; // added by [Yor]
	unsigned short clothes_color_for_assassin; // added by [Yor]

	unsigned short castrate_dex_scale; // added by [Yor]
	unsigned short area_size; // added by [Yor]

	unsigned short zeny_from_mobs; // [Valaris]
	unsigned short mobs_level_up; // [Valaris]
	unsigned short pk_min_level; // [celest]
	unsigned short skill_steal_type; // [celest]
	unsigned short skill_steal_rate; // [celest]
	//unsigned short night_darkness_level; // [celest]
	unsigned short skill_range_leniency; // [celest]
	unsigned short motd_type; // [celest]
	unsigned short allow_atcommand_when_mute; // [celest]
	unsigned short manner_action; // [Yor]
	unsigned short finding_ore_rate;
	unsigned short min_skill_delay_limit;
	unsigned short idle_no_share; // exp share in party
	unsigned short chat_no_share; // exp share in party
	unsigned short npc_chat_no_share; // exp share in party
	unsigned short shop_no_share; // exp share in party
	unsigned short trade_no_share; // exp share in party
	unsigned short idle_disconnect; // disconnection without sending information
	unsigned short idle_disconnect_chat; // disconnection without sending information
	unsigned short idle_disconnect_vender; // disconnection without sending information
	unsigned short idle_disconnect_disable_for_restore; // disconnection without sending information
	unsigned short idle_disconnect_ignore_GM; // disconnection without sending information
	unsigned short jail_message; // Do we send message to ALL players when a player is put in jail?
	unsigned short jail_discharge_message; // Do we send message to ALL players when a player is discharged?
	unsigned short mingmlvl_message; // Which message do we send when a GM can use a command, but mingmlvl map flag block it?
	unsigned short check_invalid_slot; // Do we check invalid slotted cards?
	unsigned short ruwach_range; // Set the range (number of squares/tiles around you) of 'ruwach' skill to detect invisible.
	unsigned short sight_range; // Set the range (number of squares/tiles around you) of 'sight' skill to detect invisible.
	unsigned short max_icewall; // Set maximum number of ice walls active at the same time.
	unsigned short ignore_items_gender; // Wether item_db gender restrictions will be ignored or not

	unsigned short atcommand_main_channel_at_start;
	unsigned short atcommand_min_GM_level_for_request;
	unsigned short atcommand_follow_stop_dead_target;
	unsigned short atcommand_add_local_message_info;
	unsigned short atcommand_storage_on_pvp_map;
	unsigned short atcommand_gstorage_on_pvp_map;

	unsigned short pm_gm_not_ignored; // GM minimum level to be not ignored in private message. [BeoWulf] (from freya's bug report)

	unsigned short char_disconnect_mode;

#ifdef USE_SQL /* SQL-only options */
	unsigned short mail_system; // [Valaris]
#endif /* USE_SQL */
} battle_config;

int battle_config_read(const char *cfgName);
extern int battle_set_value(char *, char *);

#endif // _BATTLE_H_
