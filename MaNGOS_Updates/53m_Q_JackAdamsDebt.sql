-- Jack Adams dancing on the table
DELETE FROM creature_addon WHERE guid = 115895;
INSERT INTO creature_addon (guid,mount,bytes1,b2_0_sheath,b2_1_pvp_state,emote) VALUES
(115895,0,0,0,0,10);

UPDATE creature_template SET ScriptName = 'npc_olga', AIName = '' WHERE entry = 24639;
UPDATE creature_template SET ScriptName = 'npc_jack_adams', AIName = '' WHERE entry = 24788;

-- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r52 r53 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r53');

UPDATE db_version SET `cache_id`= 'r53';
UPDATE db_version SET `version`= 'YTDB581_Infinity_Update_r53';