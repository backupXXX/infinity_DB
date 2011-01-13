SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `db_version_InfinitySD2_Update`;
CREATE TABLE `db_version_InfinitySD2_Update` (
  `version` varchar(120) NOT NULL,
  `r00` bit(1) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Used YTDB lock system and revision log';

INSERT INTO `db_version_InfinitySD2_Update` VALUES ('r00', null);

-- FallenAngelX
ALTER TABLE db_version_InfinitySD2_Update CHANGE COLUMN r00 r00 bit;
REPLACE INTO `db_version_InfinitySD2_Update` (`version`) VALUES ('r00');

UPDATE sd2_db_version SET version='ScriptDev2 (for MaNGOS 10950+)_r00  ';