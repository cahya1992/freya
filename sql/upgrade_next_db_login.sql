# Upgrade database tables of login-server for Freya 1.2.0 (or later) to next freya

# 'login' Table
# --------------
# `account_id` int(11) NOT NULL AUTO_INCREMENT,
# `userid` varchar(255) NOT NULL default '',
ALTER TABLE `login` MODIFY `userid` varchar(24) NOT NULL default '';
# `user_pass` varchar(32) NOT NULL default '',
# `lastlogin` datetime NOT NULL default '0000-00-00 00:00:00',
# `sex` char(1) NOT NULL default 'M',
# `logincount` mediumint(9) NOT NULL default '0',
# `email` varchar(60) NOT NULL default '',
ALTER TABLE `login` MODIFY `email` varchar(40) NOT NULL default 'a@a.com';
UPDATE `login` SET `email`='a@a.com' WHERE `email`='athena@athena.com' OR `email`='user@athena';
# `level` smallint(3) NOT NULL default '0',
# `error_message` int(11) NOT NULL default '0',
ALTER TABLE `login` MODIFY `error_message` varchar(40) NOT NULL default '';
###### removed, can modify updated tables UPDATE `login` SET `error_message`='';
# `connect_until` int(11) NOT NULL default '0',
# `last_ip` varchar(100) NOT NULL default '',
ALTER TABLE `login` MODIFY `last_ip` varchar(16) NOT NULL default '';
# `memo` int(11) NOT NULL default '0',
ALTER TABLE `login` MODIFY `memo` TEXT NOT NULL default '';
###### removed, can modify updated tables UPDATE `login` SET `memo`='';
# `ban_until` int(11) NOT NULL default '0',
# `state` int(11) NOT NULL default '0',
ALTER TABLE `login` MODIFY `state` smallint(3) NOT NULL default '0';

# Database: Ragnarok
# Table: 'account_reg2_db'
# 
CREATE TABLE IF NOT EXISTS `account_reg2_db` (
  `account_id` int(11) NOT NULL default '0',
  `str` varchar(32) NOT NULL default '',
  `value` int(11) NOT NULL default '0',
  PRIMARY KEY (`account_id`, `str`)
) TYPE = MyISAM;

# 'sstatus' Table
# ----------------
# `index` tinyint(4) NOT NULL default '0',
# `name` varchar(255) NOT NULL default '',
ALTER TABLE `sstatus` MODIFY `name` varchar(20) NOT NULL default '';
# `user` int(11) NOT NULL default '0'

# no more used databases
# ----------------------
DROP TABLE IF EXISTS `ipbanlist`;
DROP TABLE IF EXISTS `login_error`;
DROP TABLE IF EXISTS `loginlog`;

