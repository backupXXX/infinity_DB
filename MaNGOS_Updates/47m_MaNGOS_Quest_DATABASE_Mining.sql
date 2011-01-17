DELETE FROM `creature_questrelation` WHERE `quest` = 12860;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12860;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12860;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (29579, 12860);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 29579;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12860;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12860;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (29579, 12860);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=29579;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '29746' WHERE `entry` = 12860;
UPDATE `quest_template` SET `ReqItemCount1` = 1, `ReqItemCount2` = 0 WHERE `entry` = 12860;

-- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r46 r47 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r47');

UPDATE db_version SET `cache_id`= 'r47';
UPDATE db_version SET `version`= 'YTDB580_Infinity_Update_r47';
