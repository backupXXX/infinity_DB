-- Quest 11899
DELETE FROM `creature_questrelation` WHERE `quest` = 11899;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 11899;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 11899;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (25602, 11899);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 25602;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 11899;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 11899;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (25602, 11899);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=25602;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 25814 WHERE `entry` = 11899;

UPDATE `creature_ai_scripts` SET `event_chance` = 100 WHERE `id` = 2581401;
UPDATE `quest_template` SET `ReqSpellCast1` = 46485 WHERE `entry` = 11899;
-- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r48 r49 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r49');

UPDATE db_version SET `cache_id`= 'r49';
UPDATE db_version SET `version`= 'YTDB580_Infinity_Update_r49';
