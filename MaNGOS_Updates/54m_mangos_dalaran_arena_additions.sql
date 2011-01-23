delete from `gameobject` where `map` = 617;
insert into `gameobject` values
-- buffs
('300060','184663','617','1','1','1291.7','813.424','7.11472','4.64562','0','0','0.730314','-0.683111','-120','100','1'),
('300061','184664','617','1','1','1291.7','768.911','7.11472','1.55194','0','0','0.700409','0.713742','-120','100','1'),
-- waterfall
('300064','194395','617','1','1','1291.6','791.05','7.11','3.22012','0','0','0.999229','-0.0392542','-120','100','1'),
('300065','191877','617','1','1','1291.6','791.05','7.11','3.22012','0','0','0.999229','-0.0392542','-120','100','1'),
-- doors
('300062','192642','617','1','1','1350.95','817.2','21.4096','3.15','0','0','0.99627','0.0862864','86400','100','1'),
('300063','192643','617','1','1','1232.65','764.913','21.4729','6.3','0','0','0.0310211','-0.999519','86400','100','1');

delete from `gameobject_battleground` where `guid` in (300060,300061,300062,300063,300064,300065);
insert into `gameobject_battleground` values
-- buffs
('300060','252','0'),
('300061','252','0'),
-- doors
('300062','254','0'),
('300063','254','0'),

-- waterfall
('300064','250','0'),
('300065','250','0');

delete from `battleground_events` where `map` = 617;
insert into `battleground_events` values
('617','252','0','buffs'),
('617','254','0','doors'),
('617','250','0','waterfall');

-- doors
update `gameobject_template` set `faction` = 114, `flags` = 32, `size` = 1.5 where `entry` in (192642,192643);


-- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r53 r54 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r54');

UPDATE db_version SET `cache_id`= 'r54';
UPDATE db_version SET `version`= 'YTDB581_Infinity_Update_r54';