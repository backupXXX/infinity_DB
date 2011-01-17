-- Support for quest Grim(oire) Business (10998)
DELETE FROM `creature` WHERE `id`=22911;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(4457507, 22911, 530, 1, 1, 0, 0, 3275.38, 4644.11, 216.405, 5.67129, 25, 0, 0, 97800, 7196, 0, 0);

-- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r47 r48 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r48');

UPDATE db_version SET `cache_id`= 'r48';
UPDATE db_version SET `version`= 'YTDB580_Infinity_Update_r48';
