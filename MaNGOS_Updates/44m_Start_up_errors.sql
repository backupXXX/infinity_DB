UPDATE `creature_template` SET `minhealth` = 5000 WHERE `entry` = 28781;
UPDATE `creature_template` SET `minhealth` = 25000 WHERE `entry` = 27894;

DELETE FROM `creature` WHERE `id`=28781;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(200028, 28781, 607, 1, 1, 0, 0, 1347.65, 208.805, 34.2892, 4.39378, 600, 0, 0, 50000, 0, 0, 0),
(200027, 28781, 607, 1, 1, 0, 0, 1353.28, 224.092, 35.2432, 4.35363, 600, 0, 0, 50000, 0, 0, 0),
(200016, 28781, 607, 1, 1, 0, 0, 1618.6, 62.26, 7.17, 3.61, 450, 0, 0, 50000, 0, 0, 0),
(200015, 28781, 607, 1, 1, 0, 0, 1594.24, 39.16, 7.49, 0.62, 450, 0, 0, 50000, 0, 0, 0),
(200014, 28781, 607, 1, 1, 0, 0, 1610.55, -117.52, 8.77, 2.44, 450, 0, 0, 50000, 0, 0, 0),
(200013, 28781, 607, 1, 1, 0, 0, 1582.57, -96.37, 8.47, 5.57, 450, 0, 0, 50000, 0, 0, 0),
(200029, 28781, 607, 1, 1, 0, 0, 1371.2, -317.169, 34.9982, 1.93504, 600, 0, 0, 50000, 0, 0, 0),
(200030, 28781, 607, 1, 1, 0, 0, 1365.52, -301.854, 34.0439, 1.91998, 600, 0, 0, 50000, 0, 0, 0);

-- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r43 r44 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r44');

UPDATE db_version SET `cache_id`= 'r44';
UPDATE db_version SET `version`= 'YTDB579_Infinity_Update_r44';