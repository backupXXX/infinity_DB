 -- quest Blowing Hodir's Horn 
DELETE FROM item_required_target WHERE entry = 42164; 
INSERT INTO item_required_target (entry, TYPE, targetEntry) VALUES 
('42164', '2', '30135'), 
('42164', '2', '29974'); 
 
DELETE FROM spell_script_target WHERE entry = 55983; 
INSERT INTO spell_script_target (entry, TYPE, targetEntry) VALUES 
('55983', '2', '30135'),
('55983', '2', '29974');
UPDATE creature_template SET ScriptName = 'spell_dummy_npc' WHERE entry IN (29974, 30135);

-- Quest The Restless Dead

DELETE FROM spell_script_target WHERE entry = 57806;
INSERT INTO spell_script_target (entry, TYPE, targetEntry) VALUES
('57806', '2', '30202'),
('57806', '2', '31043');

DELETE FROM spell_script_target WHERE entry = 57806; 
INSERT INTO spell_script_target (entry, TYPE, targetEntry) VALUES 
('57806', '2', '30202'), 
('57806', '2', '31043'); 

UPDATE creature_template SET ScriptName = 'spell_dummy_npc' WHERE entry IN (30202, 31043);

-- scarlet monastry headless horseman
UPDATE creature_template SET ScriptName = 'boss_headless_horseman' WHERE entry = 23682;
UPDATE creature_template SET ScriptName = 'npc_horsemans_head' WHERE entry = 23775;

-- Head of the Horseman
UPDATE `creature_template` SET 
`minlevel`='70',
`maxlevel`='70',
`minhealth`='63000',
`maxhealth`='63000',
`armor`='1000',
`mindmg`='1200',
`maxdmg`='1600',
`faction_A`='14',
`faction_H`='14',
`mechanic_immune_mask`='2048' 
WHERE `entry`='23775';

UPDATE creature_template SET 
`minlevel` = 70,
`maxlevel` = 70,
`minhealth` = 4541,
`maxhealth` = 4541,
`armor` = 6792,
`mindmg` = 651,
`maxdmg` = 834,
`baseattacktime` = 2000,
`mechanic_immune_mask` = '8388624',
`faction_A` = 14,
`faction_H` = 14
WHERE entry IN (23545,23694);

UPDATE creature_template SET ScriptName = 'mob_pulsing_pumpkin' WHERE entry = 23694;

-- Quest: Portals of the Legion (5581)

UPDATE gameobject_template SET ScriptName='go_demon_portal' WHERE entry IN (177243,177365,177369,177397,177398,177399,177400,177366,177367,177368);-- Support for quest Hand of Iruxos (5381)

-- Support for quest Hand of Iruxos (5381)

DELETE FROM creature WHERE id=11876;
UPDATE gameobject_template SET ScriptName='go_hand_of_iruxos_crystal' WHERE entry=176581;
UPDATE creature_template SET AIName='EventAI' WHERE entry=11876;

DELETE FROM creature_ai_scripts WHERE creature_id=11876;
INSERT INTO creature_ai_scripts VALUES
(1187601,11876,11,0,100,0,0,0,0,0,11,7741,0,3,0,0,0,0,0,0,0,0,'Demon Spirit - Summon Demon (Visual)');

-- Quest 4941
UPDATE creature_template SET ScriptName = 'npc_eitrigg' WHERE entry = 3144;

-- Dire maul instance
UPDATE instance_template SET ScriptName = 'instance_dire_maul' WHERE map = 429;

###########################################    npc_old_ironbark    #############################################
-- Old Ironbark
UPDATE creature_template SET
ScriptName = 'npc_old_ironbark',
speed_walk = 2.5
WHERE entry = 11491;

UPDATE creature SET MovementType = 2 WHERE guid = 138118;
DELETE FROM creature_movement WHERE id = 138118;
INSERT INTO creature_movement VALUES
(138118, 1, -57.071, -272.462, -58.0322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.208128, 0, 0),
(138118, 2, -38.4166, -272.315, -56.7539, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.007851, 0, 0),
(138118, 3, -20.9592, -278.991, -54.729, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.91797, 0, 0),
(138118, 4, -5.26298, -282.994, -53.291, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.15359, 0, 0),
(138118, 5, 10.6256, -286.825, -52.3395, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.07898, 0, 0),
(138118, 6, 25.9258, -283.088, -52.4979, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.239544, 0, 0),
(138118, 7, 40.5137, -275.794, -52.8966, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.46731, 0, 0),
(138118, 8, 50.0468, -270.114, -52.9192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.502653, 0, 0),
(138118, 9, 118.742, -278.94, -55.8619, 0, 0, 0, 0, 0, 0, 0, 37, 0, 0, 0.035334, 0, 0),
(138118, 10, 118.742, -278.94, -55.8619, 10000, 0, 0, 0, 0, 0, 0, 37, 0, 0, 0.035334, 0, 0);

DELETE FROM creature_movement_scripts WHERE id = 1000;
INSERT INTO creature_movement_scripts (id,delay,command,datalong,datalong2) VALUES
(1000,1,1,37,0),
(1000,2,11,12656,9000000),
(1000,8,18,1,0);


###########################################    Zevrim Thornhoof    #############################################

INSERT INTO creature_ai_scripts VALUES
(1149003,11490,6,0,100,2,0,0,0,0, 34,0,3,0, 0,0,0,0, 0,0,0,0, 'Zevrim Thornhoof - type DONE');



-- FallenAngelX
UPDATE db_version SET `cache_id`= '580';
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r45 r46 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r46');

UPDATE db_version SET `cache_id`= 'r46';
UPDATE db_version SET `version`= 'YTDB580_Infinity_Update_r46';
