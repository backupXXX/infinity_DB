-- Ymirjar Skycaller true fix (delete hack from YTDB)
DELETE FROM `creature_template_addon` WHERE `entry` = 31260;
INSERT INTO `vehicle_accessory` VALUES (36891, 31260, 0, 0, 'Ymirjar Skycaller');

-- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r51 r52 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r52');

UPDATE db_version SET `cache_id`= 'r52';
UPDATE db_version SET `version`= 'YTDB581_Infinity_Update_r52';
