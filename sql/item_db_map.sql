# You can regenerate this file with an option in inter_athena.conf

CREATE TABLE `item_db` (
  `id` smallint(5) unsigned NOT NULL default '0',
  `name_english` varchar(32) NOT NULL default '',
  `name_japanese` varchar(32) NOT NULL default '',
  `type` tinyint(2) unsigned NOT NULL default '0',
  `price_buy` int(10) unsigned default NULL,
  `price_sell` int(10) unsigned default NULL,
  `weight` int(10) unsigned NOT NULL default '0',
  `attack` mediumint(9) unsigned default NULL,
  `defence` mediumint(9) unsigned default NULL,
  `range` tinyint(2) unsigned default NULL,
  `slots` tinyint(2) unsigned default NULL,
  `equip_jobs` int(10) unsigned default NULL,
  `equip_genders` tinyint(2) unsigned default NULL,
  `equip_locations` smallint(4) unsigned default NULL,
  `weapon_level` tinyint(2) unsigned default NULL,
  `equip_level` tinyint(3) unsigned default NULL,
  `view` tinyint(3) unsigned default NULL,
  `script_use` text,
  `script_equip` text,
  PRIMARY KEY (`id`)
) TYPE=MyISAM;

#ID,DB_Name,Natural name,Type,Price,Sell,Weight,ATK,DEF,Range,Slot,Job,Gender,Loc,wLV,eLV,View,{UseScript},{EquipScript}
# 0,      1,           2,   3,    4,   5,     6,  7,  8,    9,  10, 11,    12, 13, 14, 15,  16,{UseScript},{EquipScript}
# Type: 0 Healing, 2: Usable, 3: Misc, 4: Weapon, 5: Armor, 6: Card, 7: Pet egg,
#       8: petequip, 10: arrow, 11: Usable with delayed consumption (all items with
#       script "pet" or "itemskill": Lures, Scrolls, Magnifier, Yggdrasil Leaf)
# Elements: 0 Nothing, 1 Water, 2 Earth ,3 Fire, 4 Wind, 5 Poison, 6 Saint, 7 Darkness, 8 Sense, 9 Immortality
# Loc (Cards): 2: Weapon, 4: Garment, 16: Armor, 32: Shield, 64: Shoes, 136: Accessory, 769: Helm


# Healing Items
INSERT INTO `item_db` VALUES (501, 'Red_Potion', 'Red Potion', 0, 50, 0, 70, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(45,64),0;', NULL);
INSERT INTO `item_db` VALUES (502, 'Orange_Potion', 'Orange Potion', 0, 200, 0, 100, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(105,144),0;', NULL);
INSERT INTO `item_db` VALUES (503, 'Yellow_Potion', 'Yellow Potion', 0, 550, 0, 130, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(175,234),0;', NULL);
INSERT INTO `item_db` VALUES (504, 'White_Potion', 'White Potion', 0, 1200, 0, 150, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(325,404),0;', NULL);
INSERT INTO `item_db` VALUES (505, 'Blue_Potion', 'Blue Potion', 0, 5000, 0, 150, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal 0,rand(40,59);', NULL);
INSERT INTO `item_db` VALUES (506, 'Green_Potion', 'Green Potion', 0, 40, 0, 70, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'sc_end SC_Poison; sc_end SC_Silence; sc_end SC_Blind; sc_end SC_Confusion;', NULL);
INSERT INTO `item_db` VALUES (507, 'Red_Herb', 'Red Herb', 0, 18, 0, 30, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(18,27),0;', NULL);
INSERT INTO `item_db` VALUES (508, 'Yellow_Herb', 'Yellow Herb', 0, 40, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(38,57),0;', NULL);
INSERT INTO `item_db` VALUES (509, 'White_Herb', 'White Herb', 0, 120, 0, 70, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(75,114),0;', NULL);
INSERT INTO `item_db` VALUES (510, 'Blue_Herb', 'Blue Herb', 0, 60, 0, 70, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal 0,rand(15,29);', NULL);
INSERT INTO `item_db` VALUES (511, 'Green_Herb', 'Green Herb', 0, 10, 0, 30, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'sc_end SC_Poison;', NULL);
INSERT INTO `item_db` VALUES (512, 'Apple', 'Apple', 0, 15, 0, 20, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(16,21),0;', NULL);
INSERT INTO `item_db` VALUES (513, 'Banana', 'Banana', 0, 15, 0, 20, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(17,20),0;', NULL);
INSERT INTO `item_db` VALUES (514, 'Grape', 'Grape', 0, 200, 0, 20, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal 0,rand(10,14);', NULL);
INSERT INTO `item_db` VALUES (515, 'Carrot', 'Carrot', 0, 15, 0, 20, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(18,19),0;', NULL);
INSERT INTO `item_db` VALUES (516, 'Sweet_Potato', 'Sweet Potato', 0, 15, 0, 20, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(15,22),0; if(rand(100)<3) sc_start SC_Stan,10000,0;', NULL); #??
INSERT INTO `item_db` VALUES (517, 'Meat', 'Meat', 0, 50, 0, 150, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(70,99),0;', NULL);
INSERT INTO `item_db` VALUES (518, 'Honey', 'Honey', 0, 500, 0, 100, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(70,99),rand(20,39);', NULL);
INSERT INTO `item_db` VALUES (519, 'Milk', 'Milk', 0, 25, 0, 30, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(27,36),0;', NULL);
INSERT INTO `item_db` VALUES (520, 'Hinalle_Leaflet', 'Hinalle Leaflet', 0, 150, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(175,234),0;', NULL);
INSERT INTO `item_db` VALUES (521, 'Aloe_Leaflet', 'Aloe Leaflet', 0, 360, 0, 20, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(325,404),0;', NULL);
INSERT INTO `item_db` VALUES (522, 'Mastela_Fruit', 'Mastela Fruit', 0, 840, 0, 30, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(400,599),0;', NULL);
INSERT INTO `item_db` VALUES (523, 'Holy_Water', 'Holy Water', 0, 20, 0, 30, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'sc_end SC_Curse;', NULL);

INSERT INTO `item_db` VALUES (525, 'Panacea', 'Panacea', 0, 500, 0, 100, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'sc_end SC_Poison; sc_end SC_Silence; sc_end SC_Blind; sc_end SC_Confusion; sc_end SC_Curse;', NULL);
INSERT INTO `item_db` VALUES (526, 'Royal_Jelly', 'Royal Jelly', 0, 7000, 0, 150, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(325,404),rand(40,59); sc_end SC_Poison; sc_end SC_Silence; sc_end SC_Blind; sc_end SC_Confusion; sc_end SC_Curse;', NULL);

INSERT INTO `item_db` VALUES (528, 'Monster\'s_Feed', 'Monster Food', 0, 60, 0, 150, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(72,107),0;', NULL);
INSERT INTO `item_db` VALUES (529, 'Candy', 'Candy', 0, 10, 0, 30, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(45,64),0;', NULL);
INSERT INTO `item_db` VALUES (530, 'Candy_Cane', 'Candy Cane', 0, 20, 0, 40, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(105,144),0;', NULL);
INSERT INTO `item_db` VALUES (531, 'Apple_Juice', 'Apple Juice', 0, 20, 0, 40, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(25,34),0;', NULL);
INSERT INTO `item_db` VALUES (532, 'Banana_Juice', 'Banana Juice', 0, 20, 0, 40, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(26,33),0;', NULL);
INSERT INTO `item_db` VALUES (533, 'Grape_Juice', 'Grape Juice', 0, 250, 0, 40, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal 0,rand(15,24);', NULL);
INSERT INTO `item_db` VALUES (534, 'Carrot_Juice', 'Carrot Juice', 0, 20, 0, 40, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(27,32),0;', NULL);
INSERT INTO `item_db` VALUES (535, 'Pumkin', 'Pumpkin', 0, 15, 0, 20, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal 19,0;', NULL);
INSERT INTO `item_db` VALUES (536, 'Ice_Cream', 'Ice Cream', 0, 150, 0, 80, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(105,144),0; if(rand(100)<24) sc_start SC_Freeze,10000,0;', NULL);
INSERT INTO `item_db` VALUES (537, 'Pet_Food', 'Pet Food', 0, 1000, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(50,89),0;', NULL);
INSERT INTO `item_db` VALUES (538, 'Well-baked_Cookie', 'Well-baked Cookie', 0, 1000, 0, 30, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(160,199),0;', NULL);
INSERT INTO `item_db` VALUES (539, 'Piece_of_Cake', 'Piece of Cake', 0, 3000, 0, 100, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(270,329),0;', NULL);
INSERT INTO `item_db` VALUES (540, 'Falcon_food', 'Falcon food', 0, 20, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (541, 'Pecopeco_food', 'Pecopeco food', 0, 20, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (542, 'Festive_Cookie', 'Festive Cookie', 0, 10, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(325,404),0;', NULL);
INSERT INTO `item_db` VALUES (543, 'Festive_Rainbow_Cake', 'Festive Rainbow Cake', 0, 20, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(325,404),0;', NULL);
INSERT INTO `item_db` VALUES (544, 'Raw_Fish', 'Raw Fish', 0, 20, 0, 30, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(25,59),0;', NULL);
INSERT INTO `item_db` VALUES (545, 'Condensed_Red_Potion', 'Condensed Red Potion', 0, 20, 0, 20, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(45,64),0;', NULL);
INSERT INTO `item_db` VALUES (546, 'Condensed_Yellow_Potion', 'Condensed Yellow Potion', 0, 20, 0, 30, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(175,234),0;', NULL);
INSERT INTO `item_db` VALUES (547, 'Condensed_White_Potion', 'Condensed White Potion', 0, 20, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(325,404),0;', NULL);
INSERT INTO `item_db` VALUES (548, 'Cheese', 'Cheese', 0, 2800, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal 0,rand(10,14);', NULL);
INSERT INTO `item_db` VALUES (549, 'Yam', 'Hot Potato', 0, 180, 0, 80, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(50,99),0;', NULL);
INSERT INTO `item_db` VALUES (550, 'Rice_Cake', 'Rice Popper', 0, 20, 5, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal 10,0;', NULL);
INSERT INTO `item_db` VALUES (551, 'Sushi', 'Sushi', 0, 20, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(50,60),0;', NULL);
INSERT INTO `item_db` VALUES (552, 'Ketupat', 'Ketupat', 0, 100, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(100,200),0;', NULL);
INSERT INTO `item_db` VALUES (553, 'Dumpling', 'Dumpling', 0, 20, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(39,68),0;', NULL);
INSERT INTO `item_db` VALUES (554, 'Mochi', 'Mochi', 0, 100, 0, 80, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(15,22),0; if(rand(100)<3) sc_start SC_Stan,10000,0; if(rand(100)<3) sc_start SC_Blind,10000,0;', NULL);
INSERT INTO `item_db` VALUES (555, 'Traditional_Rice_Cake', 'Rice_Cake', 0, 0, 0, 20, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(30,50),0;', NULL);
INSERT INTO `item_db` VALUES (556, 'Rolled_Rice', 'Rolled Rice', 0, 20, 0, 10, 0, 0, 0, 0, 27254783, 3, 0, 0, 0, 0, 'itemheal rand(10,50),0;', NULL);
INSERT INTO `item_db` VALUES (557, 'Cut_Rice_Rolls', 'Cut Rice Rolls', 0, 20, 0, 10, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 'itemheal rand(10,200),0;', NULL);
INSERT INTO `item_db` VALUES (558, 'Chocolate', 'Chocolate', 0, 500, 0, 20, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal 1,1;', NULL);
INSERT INTO `item_db` VALUES (559, 'Hand-made_Chocolate', 'Hand-made Chocolate', 0, 5000, 0, 80, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal 50,50;', NULL);
INSERT INTO `item_db` VALUES (560, 'White_Chocolate', 'White Chocolate', 0, 0, 0, 80, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(100,200),0;', NULL);
INSERT INTO `item_db` VALUES (561, 'Milk_Chocolate_Bar', 'Milk Chocolate', 0, 0, 0, 80, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(100,200),0;', NULL);
INSERT INTO `item_db` VALUES (562, 'Pizza', 'Pizza', 0, 20, 0, 150, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(100,200),0;', NULL);
INSERT INTO `item_db` VALUES (563, 'Doublecrust_Swiss_Fondue', 'Doublecrust Swiss Fondue', 0, 20, 0, 150, 0, 0, 0, 0, 27254783, 3, 0, 0, 0, 0, 'itemheal rand(100,200),0;', NULL);
INSERT INTO `item_db` VALUES (564, 'Meat_Dumpling', 'Meat Dumpling', 0, 20, 0, 30, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 'itemheal rand(175,234),0;', NULL);
INSERT INTO `item_db` VALUES (565, 'Vita_500_Bottle', 'Vita 500', 0, 2000, 0, 30, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal 500,0;', NULL);

INSERT INTO `item_db` VALUES (566, 'Tom_Yum_Goong', 'Tom Yum Goong', 0, 10000, 0, 150, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(100,200),0;', NULL);
INSERT INTO `item_db` VALUES (567, 'Prawn', 'Prawn', 0, 20, 0, 20, 0, 0, 0, 0, 27254783, 3, 0, 0, 0, 0, 'itemheal rand(50,100),0;', NULL);
INSERT INTO `item_db` VALUES (568, 'Lemon', 'Lemon', 0, 20, 0, 20, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (569, 'Novice\'s_Red_Potion', 'Novices Red Potion', 0, 50, 0, 70, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(45,64),0;', NULL);

# st.Valentine's Day Items
INSERT INTO `item_db` VALUES (570, 'Fortune_Candy', 'Fortune Candy', 0, 10, 0, 30, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(45,64),0;', NULL);
INSERT INTO `item_db` VALUES (571, 'Fortune_Candy_Cane', 'Fortune Candy Cane', 0, 20, 0, 40, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(105,144),0;', NULL);
INSERT INTO `item_db` VALUES (572, 'Fortune_Cookie', 'Fortune Cookie', 0, 15, 0, 30, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(45,64),0;', NULL);
INSERT INTO `item_db` VALUES (573, 'Chocolate_Drink', 'Chocolate Drink', 0, 20, 0, 150, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(105,144),0;', NULL);
INSERT INTO `item_db` VALUES (574, 'Egg', 'Egg', 0, 0, 0, 30, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(16,21),0;', NULL);
INSERT INTO `item_db` VALUES (575, '2nd_Anniversary_Cake', '2nd Anniversary Cake', 0, 0, 0, 100, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(270,329),0;', NULL);
INSERT INTO `item_db` VALUES (576, 'Thorned_Fruit', 'Thorned Fruit', 0, 20, 0, 40, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemheal rand(10,15),rand(10,15);', NULL);
INSERT INTO `item_db` VALUES (577, 'Grain', 'Grain', 0, 0, 10, 20, 0, 0, 0, 0, 16777215, 2, 0, 0, 0, 0, 'itemheal rand(10,14),0;', NULL);
INSERT INTO `item_db` VALUES (578, 'Strawberry', 'Strawberry', 0, 0, 10, 20, 0, 0, 0, 0, 16777215, 2, 0, 0, 0, 0, 'itemheal 0,rand(10,14);', NULL);
INSERT INTO `item_db` VALUES (579, 'Yummy_Fish', 'Yummy_Fish', 0, 0, 10, 20, 0, 0, 0, 0, 16777215, 2, 0, 0, 0, 0, 'itemheal rand(40,54),0;', NULL);
INSERT INTO `item_db` VALUES (580, 'Bread', 'Bread', 0, 0, 10, 20, 0, 0, 0, 0, 16777215, 2, 0, 0, 0, 0, 'itemheal rand(20,34),0;', NULL);
INSERT INTO `item_db` VALUES (581, 'Mushroom', 'Mushroom', 0, 0, 10, 20, 0, 0, 0, 0, 16777215, 2, 0, 0, 0, 0, 'itemheal rand(10,14),0;', NULL);
INSERT INTO `item_db` VALUES (582, 'Orange', 'Orange', 0, 0, 10, 20, 0, 0, 0, 0, 16777215, 2, 0, 0, 0, 0, 'itemheal rand(10,15),rand(10,15);', NULL);
INSERT INTO `item_db` VALUES (583, 'KETUPAT_SAYUR', 'KETUPAT SAYUR', 0, 0, 10, 150, 0, 0, 0, 0, 16777215, 2, 0, 0, 0, 0, NULL, NULL);

# Usable Items
INSERT INTO `item_db` VALUES (601, 'Fly_Wing', 'Fly Wing', 2, 60, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'warp \"Random\",0,0;', NULL);
INSERT INTO `item_db` VALUES (602, 'Butterfly_Wing', 'Butterfly Wing', 2, 300, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'warp \"SavePoint\",0,0;', NULL);
INSERT INTO `item_db` VALUES (603, 'Old_Blue_Box', 'Old Blue Box', 2, 10000, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem -1,1;', NULL);
INSERT INTO `item_db` VALUES (604, 'Dead_Branch', 'Dead Branch', 2, 50, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'monster \"this\",0,0,\"--ja--\",-1,1,;', NULL);
INSERT INTO `item_db` VALUES (605, 'Anodyne', 'Anodyne', 2, 2000, 0, 100, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 8,1,\"Endure\";', NULL);
INSERT INTO `item_db` VALUES (606, 'Aloevera', 'Aloevera', 2, 1500, 0, 100, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 6,1,\"Provoke\";', NULL);
INSERT INTO `item_db` VALUES (607, 'Yggdrasilberry', 'Yggdrasilberry', 0, 2, 0, 300, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'percentheal 100,100;', NULL);
INSERT INTO `item_db` VALUES (608, 'Yggdrasil_Seed', 'Yggdrasil Seed', 0, 5000, 0, 300, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'percentheal 50,50;', NULL);
INSERT INTO `item_db` VALUES (609, 'Amulet', 'Amulet', 2, 100, 0, 100, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (610, 'Yggdrasil_Leaf', 'Yggdrasil Leaf', 2, 4000, 0, 100, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 54,1,\"Resurrection\";', NULL);
INSERT INTO `item_db` VALUES (611, 'Magnifier', 'Magnifier', 2, 40, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 40,1,\"Identify\";', NULL);

# Smithing Items
INSERT INTO `item_db` VALUES (612, 'Mini_Furnace', 'Mini Furnace', 2, 150, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'produce 16;', NULL);
INSERT INTO `item_db` VALUES (613, 'Iron_Hammer', 'Iron Hammer', 2, 1000, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'produce 1;', NULL);
INSERT INTO `item_db` VALUES (614, 'Golden_Hammer', 'Golden Hammer', 2, 3000, 0, 300, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'produce 2;', NULL);
INSERT INTO `item_db` VALUES (615, 'Oridecon_Hammer', 'Oridecon Hammer', 2, 5000, 0, 400, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'produce 3;', NULL);

# Item Givers
INSERT INTO `item_db` VALUES (616, 'Old_Card_Album', 'Old Card Album', 2, 10000, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem -3,1;', NULL);
INSERT INTO `item_db` VALUES (617, 'Old_Violet_Box', 'Old Violet Box', 2, 10000, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem -2,1;', NULL);
INSERT INTO `item_db` VALUES (618, 'Worn_Out_Scroll', 'Worn Out Scroll', 2, 50, 0, 20, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem -5,1;', NULL);

# Pet Items
INSERT INTO `item_db` VALUES (619, 'Unripe_Apple', 'Unripe Apple', 2, 1000, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1002;', NULL);
INSERT INTO `item_db` VALUES (620, 'Orange_Juice', 'Orange Juice', 2, 1500, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1113;', NULL);
INSERT INTO `item_db` VALUES (621, 'Bitter_Herb', 'Bitter Herb', 2, 20, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1031;', NULL);
INSERT INTO `item_db` VALUES (622, 'Rainbow_Carrot', 'Rainbow Carrot', 2, 2500, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1063;', NULL);
INSERT INTO `item_db` VALUES (623, 'Earthworm_the_Dude', 'Earthworm the Dude', 2, 4000, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1049;', NULL);
INSERT INTO `item_db` VALUES (624, 'Rotten_Fish', 'Rotten Fish', 2, 2500, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1011;', NULL);
INSERT INTO `item_db` VALUES (625, 'Rusty_Iron', 'Rusty Iron', 2, 100, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1042;', NULL);
INSERT INTO `item_db` VALUES (626, 'Monster_Juice', 'Monster Juice', 2, 1500, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1035;', NULL);
INSERT INTO `item_db` VALUES (627, 'Sweet_Milk', 'Sweet Milk', 2, 7000, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1167;', NULL);
INSERT INTO `item_db` VALUES (628, 'Well_Dried_Bone', 'Well Dried Bone', 2, 10000, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1107;', NULL);
INSERT INTO `item_db` VALUES (629, 'Singing_Flower', 'Singing Flower', 2, 300, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1052;', NULL);
INSERT INTO `item_db` VALUES (630, 'Dew_Laden_Moss', 'Dew Laden Moss', 2, 10, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1014;', NULL);
INSERT INTO `item_db` VALUES (631, 'Deadly_Noxious_Herb', 'Deadly Noxious Herb', 2, 20, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1077;', NULL);
INSERT INTO `item_db` VALUES (632, 'Fatty_Chubby_Earthworm', 'Fatty Chubby Earthworm', 2, 5000, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1019;', NULL);
INSERT INTO `item_db` VALUES (633, 'Baked_Yam', 'Baked Yam', 2, 20, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1056;', NULL);
INSERT INTO `item_db` VALUES (634, 'Tropical_Banana', 'Tropical Banana', 2, 20, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1057;', NULL);
INSERT INTO `item_db` VALUES (635, 'Horror_of_Tribe', 'Horror of Tribe', 2, 300, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1023;', NULL);
INSERT INTO `item_db` VALUES (636, 'No_Recipient', 'No Recipient', 2, 100, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1026;', NULL);
INSERT INTO `item_db` VALUES (637, 'Old_Broom', 'Old Broom', 2, 350, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1110;', NULL);
INSERT INTO `item_db` VALUES (638, 'Silver_Knife_of_Chastity', 'Silver Knife of Chastity', 2, 12000, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1170;', NULL);
INSERT INTO `item_db` VALUES (639, 'Armlet_of_Obedience', 'Armlet of Obedience', 2, 18000, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1029;', NULL);
INSERT INTO `item_db` VALUES (640, 'Shining_Stone', 'Shining Stone', 2, 3000, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1155;', NULL);
INSERT INTO `item_db` VALUES (641, 'Contract_in_Shadow', 'Contracts in Shadow', 2, 100, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1109;', NULL);
INSERT INTO `item_db` VALUES (642, 'Book_of_Devil', 'Book of Devil', 2, 1800, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1101;', NULL);
INSERT INTO `item_db` VALUES (643, 'Pet_Incubator', 'Pet Incubator', 2, 3000, 0, 30, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'bpet;', NULL);

#Random stuff
INSERT INTO `item_db` VALUES (644, 'Gift_Box', 'Gift Box', 2, 2, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem -4,1;', NULL);
INSERT INTO `item_db` VALUES (645, 'Concentration_Potion', 'Concentration Potion', 2, 800, 0, 100, 0, 0, 0, 0, 44031999, 2, 0, 0, 0, 0, 'sc_start SC_SpeedPot0,1800000,0;', NULL);

INSERT INTO `item_db` VALUES (656, 'Awakening_Potion', 'Awakening Potion', 2, 1500, 0, 150, 0, 0, 0, 0, 25681647, 2, 0, 0, 40, 0, 'sc_start SC_SpeedPot1,1800000,0;', NULL);
INSERT INTO `item_db` VALUES (657, 'Berserk_Potion', 'Berserk Potion', 2, 3000, 0, 200, 0, 0, 0, 0, 17188518, 2, 0, 0, 85, 0, 'sc_start SC_SpeedPot2,1800000,0;', NULL);
INSERT INTO `item_db` VALUES (658, 'Tribal_Solidarity', 'Tribal Solidarity', 2, 1000, 0, 500, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'guildgetexp rand(500000,1000000);', NULL);
INSERT INTO `item_db` VALUES (659, 'Her_Heart', 'Her Heart', 2, 500, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1188;', NULL);
INSERT INTO `item_db` VALUES (660, 'Forbidden_Red_Candle', 'Red Candle', 2, 20, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1200;', NULL);
INSERT INTO `item_db` VALUES (661, 'Sky_Apron', 'Soft Apron', 2, 20, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'pet 1275;', NULL);

# Newer Items
INSERT INTO `item_db` VALUES (662, 'Horse_Crest', 'Crest of the Horse', 2, 3000, 0, 30, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'skilleffect 507,5; sc_start SC_SpeedUp0,240000,0;', NULL);

INSERT INTO `item_db` VALUES (663, 'Rice_Cake', 'Rice Cake', 0, 0, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'percentheal 10,10;', NULL);

INSERT INTO `item_db` VALUES (664, 'Gift_Box_', 'Gift Box', 2, 20, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem -4,1;', NULL);
INSERT INTO `item_db` VALUES (665, 'Gift_Box__', 'Gift Box', 2, 20, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem -4,1;', NULL);
INSERT INTO `item_db` VALUES (666, 'Gift_Box___', 'Gift Box', 2, 20, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem -4,1;', NULL);
INSERT INTO `item_db` VALUES (667, 'Gift_Box____', 'Gift Box', 2, 20, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem -4,1;', NULL);
INSERT INTO `item_db` VALUES (668, 'Angpow', 'Angpow', 0, 1, 0, 2, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'set Zeny,Zeny+rand(1000,10000);', NULL);
INSERT INTO `item_db` VALUES (669, 'Rice_Cake_Soup', 'Rice Cake Soup', 2, 20, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

INSERT INTO `item_db` VALUES (670, 'Gold_Coin_Pouch', 'Gold Coin Pouch', 2, 20, 0, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (671, 'Gold_Coin', 'Gold Coin', 2, 20, 0, 40, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'set Zeny,Zeny+rand(100,1000);', NULL);
INSERT INTO `item_db` VALUES (672, 'Copper_Coin_Pouch', 'Copper Coin Pouch', 2, 20, 0, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (673, 'Copper_Coin', 'Copper Coin', 2, 20, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (674, 'Mysterious_Ore_Coin', 'Mysterious Ore Coin', 2, 20, 0, 40, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (675, 'Silver_Coin', 'Silver Coin', 2, 20, 0, 40, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (676, 'Silver_Coin_Pouch', 'Silver Coin Pouch', 2, 20, 0, 400, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (677, 'Platinum_Coin', 'Platinum Coin', 2, 20, 0, 40, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (678, 'Deadly_Poison_Bottle', 'Poison Bottle', 2, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'if(Class!=4013) goto Not_ASC; sc_start SC_Poison,600000,0; sc_start SC_SpeedPot3,30000,0; end; Not_ASC: percentheal -100,0;', NULL);
INSERT INTO `item_db` VALUES (679, 'Recall_Pills', 'Golden Pill', 2, 20, 0, 300, 0, 0, 0, 0, 27254783, 3, 0, 0, 0, 0, 'itemheal 50,50;', NULL);
INSERT INTO `item_db` VALUES (680, 'Carnation', 'Magical Carnation', 2, 20, 0, 1000, 0, 0, 0, 0, 27254783, 3, 0, 0, 0, 0, 'itemheal 25,0;', NULL);
INSERT INTO `item_db` VALUES (681, 'Wedding_Photo_Album', 'Wedding Photo Album', 2, 20, 0, 10, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, NULL, NULL); #should call wedding effect
INSERT INTO `item_db` VALUES (682, 'Realgar_Wine', 'Realgar Wine', 2, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'sc_start SC_ATKPOT,60000,30;', NULL);
INSERT INTO `item_db` VALUES (683, 'Exorcize_Herb', 'Exorcize Herb', 2, 20, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'sc_start SC_MATKPOT,60000,30;', NULL);
INSERT INTO `item_db` VALUES (684, 'Durian', 'Durian', 2, 20, 0, 30, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 'sc_start SC_ATKPOT,60000,10; sc_start SC_MATKPOT,60000,10;', NULL);
INSERT INTO `item_db` VALUES (685, 'Ramadan', 'Ramadan', 2, 20, 10, 300, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, NULL, NULL);

# Scrolls
INSERT INTO `item_db` VALUES (686, 'Earth_Spike_3', 'Earth Spike Level 3', 2, 650, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 90,3,\"Earth Spike Level 3\";', NULL);
INSERT INTO `item_db` VALUES (687, 'Earth_Spike_5', 'Earth Spike Level 5', 2, 1300, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 90,5,\"Earth Spike Level 5\";', NULL);
INSERT INTO `item_db` VALUES (688, 'Cold_Bolt_3', 'Cold Bolt Level 3', 2, 500, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 14,3,\"Cold Bolt Level 3\";', NULL);
INSERT INTO `item_db` VALUES (689, 'Cold_Bolt_5', 'Cold Bolt Level 5', 2, 1000, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 14,5,\"Cold Bolt Level 5\";', NULL);
INSERT INTO `item_db` VALUES (690, 'Fire_Bolt_3', 'Fire Bolt Level 3', 2, 500, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 19,3,\"Fire Bolt Level 3\";', NULL);
INSERT INTO `item_db` VALUES (691, 'Fire_Bolt_5', 'Fire Bolt Level 5', 2, 1000, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 19,5,\"Fire bolt Level 5\";', NULL);
INSERT INTO `item_db` VALUES (692, 'Lightning_Bolt_3', 'Lightning Bolt Level 3', 2, 500, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 20,3,\"Lightning Bolt Level 3\";', NULL);
INSERT INTO `item_db` VALUES (693, 'Lightning_Bolt_5', 'Lightning Bolt Level 5', 2, 1000, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 20,5,\"Lightning Bolt Level 5\";', NULL);
INSERT INTO `item_db` VALUES (694, 'Soul_Strike_3', 'Soul Strike Level 3', 2, 500, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 13,3,\"Soul Strike Level 3\";', NULL);
INSERT INTO `item_db` VALUES (695, 'Soul_Strike_5', 'Soul Strike Level 5', 2, 1000, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 13,5,\"Soul Strike Level 5\";', NULL);
INSERT INTO `item_db` VALUES (696, 'Fire_Ball_1', 'Fire Ball Level 1', 2, 500, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 17,1,\"Fire Ball Level 1\";', NULL);
INSERT INTO `item_db` VALUES (697, 'Fire_Ball_5', 'Fire Ball Level 5', 2, 1000, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 17,5,\"Fire Ball Level 5\";', NULL);
INSERT INTO `item_db` VALUES (698, 'Fire_Wall_1', 'Fire Wall Level 1', 2, 350, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 18,1,\"Fire Wall Level 1\";', NULL);
INSERT INTO `item_db` VALUES (699, 'Fire_Wall_5', 'Fire Wall Level 5', 2, 700, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 18,5,\"Fire Wall Level 5\";', NULL);
INSERT INTO `item_db` VALUES (700, 'Frost_Diver_1', 'Frost Diver Level 1', 2, 350, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 15,1,\"Frost Diver Level 1\";', NULL);

INSERT INTO `item_db` VALUES (701, 'Ora_Ora', 'Ora Ora', 3, 55000, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (702, 'Animal_Gore', 'Animal Gore', 3, 2, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (703, 'Hinalle', 'Hinalle', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (704, 'Aloe', 'Aloe', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (705, 'Clover', 'Clover', 3, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (706, 'Four_Leaf_Clover', 'Four-Leaf Clover', 3, 80000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (707, 'Singing_Plant', 'Singing Plant', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (708, 'Ment', 'Ment', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (709, 'Izidor', 'Izidor', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (710, 'Illusion_Flower', 'Illusion Flower', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (711, 'Shoot', 'Shoot', 3, 16, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (712, 'Flower', 'Flower', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (713, 'Empty_Bottle', 'Empty Bottle', 3, 6, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (714, 'Emperium', 'Emperium', 3, 2, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (715, 'Yellow_Gemstone', 'Yellow Gemstone', 3, 600, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (716, 'Red_Gemstone', 'Red Gemstone', 3, 600, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (717, 'Blue_Gemstone', 'Blue Gemstone', 3, 600, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (718, 'Garnet', 'Garnet', 3, 6000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (719, 'Amethyst', 'Amethyst', 3, 6000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (720, 'Aquamarine', 'Aquamarine', 3, 6000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (721, 'Emerald', 'Emerald', 3, 6000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (722, 'Pearl', 'Pearl', 3, 6000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (723, 'Ruby', 'Ruby', 3, 6000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (724, 'Cursed_Ruby', 'Cursed Ruby', 3, 1000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (725, 'Sardonyx', 'Sardonyx', 3, 6000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (726, 'Sapphire', 'Sapphire', 3, 6000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (727, 'Opal', 'Opal', 3, 6000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (728, 'Topaz', 'Topaz', 3, 6000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (729, 'Zircon', 'Zircon', 3, 6000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (730, '1_Carat_Diamond', '1 Carat Diamond', 3, 10000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (731, '2_Carat_Diamond', '2 Carat Diamond', 3, 25000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (732, '3_Carat_Diamond', '3 Carat Diamond', 3, 55000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (733, 'Cracked_Diamond', 'Cracked Diamond', 3, 2, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (734, 'Red_Frame', 'Red Frame', 3, 3000, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (735, 'Chung_Jah', 'Chung Jah', 3, 5000, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (736, 'China', 'China', 3, 1000, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (737, 'Black_Ladle', 'Black Ladle', 3, 400, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (738, 'Pencil_Case', 'Pencil Case', 3, 300, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (739, 'Rouge', 'Rouge', 3, 10000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (740, 'Puppet', 'Puppet', 3, 1000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (741, 'Poring_Doll', 'Poring Doll', 3, 1800, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (742, 'Chonchon_Doll', 'Chonchon Doll', 3, 3000, 1000, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (743, 'Spore_Doll', 'Spore Doll', 3, 5500, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (744, 'Bouquet', 'Bouquet', 3, 2000, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (745, 'Wedding_Bouquet', 'Wedding Bouquet', 3, 10000, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (746, 'Glass_Bead', 'Glass Bead', 3, 1400, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (747, 'Crystal_Mirror', 'Crystal Mirror', 3, 15000, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (748, 'Witherless_Rose', 'Witherless Rose', 3, 55000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (749, 'Frozen_Rose', 'Frozen Rose', 3, 35000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (750, 'Baphomet_Doll', 'Baphomet Doll', 3, 18000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (751, 'Osiris_Doll', 'Osiris Doll', 3, 14000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (752, 'Rocker_Doll', 'Grasshopper Doll', 3, 4000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (753, 'Yoyo_Doll', 'Yoyo Doll', 3, 6000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (754, 'Raccoon_Doll', 'Raccoon Doll', 3, 5000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

INSERT INTO `item_db` VALUES (756, 'Rough_Oridecon', 'Rough Oridecon', 3, 548, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (757, 'Rough_Elunium', 'Rough Elunium', 3, 648, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

INSERT INTO `item_db` VALUES (901, 'Danggie', 'Danggie', 3, 250, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (902, 'Tree_Root', 'Tree Root', 3, 12, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (903, 'Reptile_Tongue', 'Reptile Tongue', 3, 50, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (904, 'Scorpion_Tail', 'Scorpion Tail', 3, 124, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (905, 'Stem', 'Stem', 3, 58, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (906, 'Pointed_Scale', 'Pointed Scale', 3, 70, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (907, 'Resin', 'Resin', 3, 120, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (908, 'Spawn', 'Spawn', 3, 148, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (909, 'Jellopy', 'Jellopy', 3, 6, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (910, 'Garlet', 'Garlet', 3, 40, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (911, 'Scell', 'Scell', 3, 160, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (912, 'Zargon', 'Zargon', 3, 480, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (913, 'Tooth_of_Bat', 'Tooth of Bat', 3, 34, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (914, 'Fluff', 'Fluff', 3, 8, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (915, 'Chrysalis', 'Chrysalis', 3, 8, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (916, 'Feather_of_Birds', 'Feather of Birds', 3, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (917, 'Talon', 'Talon', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (918, 'Sticky_Webfoot', 'Sticky Webfoot', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (919, 'Animal_Skin', 'Animal Skin', 3, 36, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (920, 'Wolf_Claw', 'Wolf Claw', 3, 58, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (921, 'Mushroom_Spore', 'Mushroom Spore', 3, 36, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (922, 'Orc\'s_Fang', 'Orcish Fang', 3, 220, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (923, 'Evil_Horn', 'Evil Horn', 3, 1020, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (924, 'Powder_of_Butterfly', 'Powder of Butterfly', 3, 90, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (925, 'Bill_of_Birds', 'Bill of Birds', 3, 64, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (926, 'Snake_Scale', 'Snake Scale', 3, 82, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

INSERT INTO `item_db` VALUES (928, 'Insect_Feeler', 'Insect Feeler', 3, 114, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (929, 'Immortal_Heart', 'Immortal Heart', 3, 374, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (930, 'Rotten_Bandage', 'Rotten Bandage', 3, 358, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (931, 'Orcish_Voucher', 'Orcish Voucher', 3, 168, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (932, 'Skel-Bone', 'Skel-Bone', 3, 232, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

INSERT INTO `item_db` VALUES (934, 'Memento', 'Memento', 3, 600, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (935, 'Shell', 'Shell', 3, 14, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (936, 'Scale_Shell', 'Scale Shell', 3, 466, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (937, 'Venom_Canine', 'Venom Canine', 3, 148, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (938, 'Sticky_Mucus', 'Sticky Mucus', 3, 70, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (939, 'Bee_Sting', 'Bee Sting', 3, 32, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (940, 'Grasshopper\'s_Leg', 'Grasshoppers Leg', 3, 36, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (941, 'Nose_Ring', 'Nose Ring', 3, 568, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (942, 'Yoyo_Tail', 'Yoyo Tail', 3, 114, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (943, 'Solid_Shell', 'Solid Shell', 3, 448, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (944, 'Horseshoe', 'Horseshoe', 3, 588, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (945, 'Raccoon_Leaf', 'Raccoon Leaf', 3, 106, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (946, 'Snail\'s_Shell', 'Snails Shell', 3, 64, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (947, 'Horn', 'Horn', 3, 116, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (948, 'Bear\'s_Footskin', 'Bears Footskin', 3, 174, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (949, 'Feather', 'Feather', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (950, 'Heart_of_Mermaid', 'Heart of Mermaid', 3, 264, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (951, 'Fin', 'Fin', 3, 412, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (952, 'Cactus_Needle', 'Cactus Needle', 3, 82, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (953, 'Stone_Heart', 'Stone Heart', 3, 184, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (954, 'Shining_Scale', 'Shining Scale', 3, 466, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (955, 'Worm_Peeling', 'Worm Peeling', 3, 52, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (956, 'Gill', 'Gill', 3, 342, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (957, 'Decayed_Nail', 'Decayed Nail', 3, 82, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (958, 'Horrendous_Mouth', 'Horrendous Mouth', 3, 390, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (959, 'Stinky_Scale', 'Stinky Scale', 3, 168, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (960, 'Nipper', 'Nipper', 3, 114, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (961, 'Conch', 'Conch', 3, 158, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (962, 'Tentacle', 'Tentacle', 3, 70, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (963, 'Sharp_scale', 'Sharp Scale', 3, 250, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (964, 'Crab_Shell', 'Crab Shell', 3, 90, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (965, 'Clam_Shell', 'Clam Shell', 3, 56, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (966, 'Clam_Flesh', 'Clam Flesh', 3, 158, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (967, 'Turtle_Shell', 'Turtle Shell', 3, 680, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (968, 'Heroic_Emblem', 'Heroic Emblem', 3, 3000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (969, 'Gold', 'Gold', 3, 200000, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (970, 'Alcohol', 'Alcohol', 3, 400, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (971, 'Detrimindexta', 'Detrimindexta', 3, 400, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (972, 'Karvodailnirol', 'Karvodailnirol', 3, 400, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (973, 'Counteragent', 'Counteragent', 3, 200, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (974, 'Mixture', 'Mixture', 3, 200, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (975, 'Scarlet_Dyestuffs', 'Scarlet Dyestuffs', 3, 1000, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (976, 'Lemon_Dyestuffs', 'Lemon Dyestuffs', 3, 1000, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

INSERT INTO `item_db` VALUES (978, 'Cobaltblue_Dyestuff', 'Cobaltblue Dyestuff', 3, 1000, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (979, 'Darkgreen_Dyestuff', 'Darkgreen Dyestuff', 3, 1000, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (980, 'Orange_Dyestuff', 'Orange Dyestuff', 3, 1000, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (981, 'Violet_Dyestuff', 'Violet Dyestuff', 3, 1000, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (982, 'White_Dyestuff', 'White Dyestuff', 3, 1000, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (983, 'Black_Dyestuff', 'Black Dyestuff', 3, 1000, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (984, 'Oridecon', 'Oridecon', 3, 1100, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (985, 'Elunium', 'Elunium', 3, 1100, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (986, 'Anvil', 'Anvil', 3, 30000, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (987, 'Oridecon_Anvil', 'Oridecon Anvil', 3, 120000, 0, 700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (988, 'Golden_Anvil', 'Golden Anvil', 3, 300000, 0, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (989, 'Emperium_Anvil', 'Emperium Anvil', 3, 600000, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (990, 'Red_Blood', 'Red Blood', 3, 1000, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (991, 'Crystal_Blue', 'Crystal Blue', 3, 1000, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (992, 'Wind_of_Verdure', 'Wind of Verdure', 3, 1000, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (993, 'Green_Live', 'Green Live', 3, 1000, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (994, 'Flame_Heart', 'Flame Heart', 3, 3000, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (995, 'Mystic_Frozen', 'Mystic Frozen', 3, 3000, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (996, 'Rough_Wind', 'Rough Wind', 3, 3000, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (997, 'Great_Nature', 'Great Nature', 3, 3000, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (998, 'Iron', 'Iron', 3, 100, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (999, 'Steel', 'Steel', 3, 1000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1000, 'Star_Crumb', 'Star Crumb', 3, 4500, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1001, 'Star_Dust', 'Star Dust', 3, 1500, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1002, 'Iron_Ore', 'Iron Ore', 3, 50, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1003, 'Coal', 'Coal', 3, 500, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1004, 'Chivalry_Emblem', 'Chivalry Emblem', 3, 2, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1005, 'Hammer_of_Blacksmith', 'Hammer of Blacksmith', 3, 2, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1006, 'Old_Magic_Book', 'Old Magic Book', 3, 2, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1007, 'Necklace_of_Wisdom', 'Necklace of Wisdom', 3, 2, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1008, 'Necklace_of_Oblivion', 'Necklace of Oblivion', 3, 2, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1009, 'Hand_of_God', 'Hand of God', 3, 2, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1010, 'Phracon', 'Phracon', 3, 200, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1011, 'Emveretarcon', 'Emveretarcon', 3, 1000, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1012, 'Frill', 'Frill', 3, 250, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1013, 'Rainbow_Shell', 'Rainbow Shell', 3, 90, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1014, 'Ant_Jaw', 'Ant Jaw', 3, 232, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1015, 'Tongue', 'Tongue', 3, 528, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1016, 'Rat_Tail', 'Rat Tail', 3, 52, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1017, 'Mole_Whiskers', 'Mole Whiskers', 3, 106, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1018, 'Mole_Claw', 'Mole Claw', 3, 210, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1019, 'Trunk', 'Trunk', 3, 60, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1020, 'Black_Hair', 'Black Hair', 3, 292, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1021, 'Dokkaebi_Horn', 'Dokkaebi Horn', 3, 292, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1022, 'Nine_Tails', 'Nine Tails', 3, 650, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1023, 'Fish_Tail', 'Fish Tail', 3, 196, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1024, 'Squid_Ink', 'Squid Ink', 3, 264, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1025, 'Cobweb', 'Cobweb', 3, 184, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1026, 'Acorn', 'Acorn', 3, 98, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1027, 'Porcupine_Quill', 'Porcupine Quill', 3, 158, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1028, 'Mane', 'Mane', 3, 196, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1029, 'Tiger_Skin', 'Tiger Skin', 3, 548, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1030, 'Tiger\'s_Footskin', 'Tigers Footskin', 3, 1500, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1031, 'Mantis_Scythe', 'Mantis Scythe', 3, 196, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1032, 'Maneater_Blossom', 'Maneater Blossom', 3, 196, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1033, 'Maneater_Root', 'Maneater Root', 3, 208, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1034, 'Blue_Hair', 'Blue Hair', 3, 342, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1035, 'Dragon_Canine', 'Dragon Canine', 3, 484, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1036, 'Dragon_Scale', 'Dragon Scale', 3, 500, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1037, 'Dragon_Tail', 'Dragon Tail', 3, 1200, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1038, 'Little_Evil_Horn', 'Little Evil Horn', 3, 528, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1039, 'Little_Evil_Wing', 'Little Evil Wing', 3, 2000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1040, 'Elder_Pixie\'s_Moustache', 'Elder Pixies Moustache', 3, 232, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1041, 'Lantern', 'Lantern', 3, 250, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1042, 'Bug_Leg', 'Bug Leg', 3, 430, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1043, 'Orc_Claw', 'Orc Claw', 3, 168, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1044, 'Zenorc\'s_Fang', 'Zenorcs Fang', 3, 264, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1045, 'Cultish_Masque', 'Cultish Masque', 3, 412, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1046, 'Scorpion_Nipper', 'Scorpion Nipper', 3, 614, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1047, 'Dead_Medusa', 'Dead Medusa', 3, 548, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1048, 'Horrendous_Hair', 'Horrendous Hair', 3, 800, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1049, 'Skirt_of_Virgin', 'Skirt of Virgin', 3, 1700, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1050, 'Tendon', 'Tendon', 3, 220, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1051, 'Detonator', 'Detonator', 3, 450, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1052, 'Single_Cell', 'Single Cell', 3, 46, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1053, 'Ancient_Tooth', 'Ancient Tooth', 3, 548, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1054, 'Ancient_Lips', 'Ancient Lips', 3, 1000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1055, 'Earthworm_Peeling', 'Earthworm Peeling', 3, 196, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1056, 'Grit', 'Grit', 3, 306, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1057, 'Moth_Dust', 'Moth Dust', 3, 138, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1058, 'Moth_Wings', 'Moth Wings', 3, 200, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1059, 'Fabric', 'Fabric', 3, 306, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1060, 'Golden_Hair', 'Golden Hair', 3, 430, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1061, 'Witched_Starsand', 'Witched Starsand', 3, 484, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1062, 'Jack_o\'_Pumpkin', 'Jack o\' Pumpkin', 3, 374, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1063, 'Fang', 'Fang', 3, 680, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1064, 'Reins', 'Reins', 3, 802, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1065, 'Trap', 'Trap', 3, 100, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1066, 'Fine-grained_Trunk', 'Fine-grained Trunk', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1067, 'Solid_Trunk', 'Solid Trunk', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1068, 'Barren_Trunk', 'Barren Trunk', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1069, 'Orange_Net_Mushroom', 'Orange Net Mushroom', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1070, 'Orange_Gooey_Mushroom_', 'Orange Gooey Mushroom', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1071, 'Unknown_Test_Tube', 'Unknown Testtube', 3, 2, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1072, 'Delivery_Message', 'DEL Message', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1073, 'Voucher', 'Voucher', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1074, 'Voucher_', 'Voucher', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1075, 'Voucher__', 'Voucher', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1076, 'Voucher___', 'Voucher', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1077, 'Voucher____', 'Voucher', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1078, 'Voucher_____', 'Voucher', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1079, 'Voucher______', 'Voucher', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1080, 'Voucher_______', 'Voucher', 3, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1081, 'Delivery_Box', 'DEL Box', 3, 2, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1082, 'Delivery_Box_', 'DEL Box', 3, 2, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1083, 'Delivery_Box__', 'DEL Box', 3, 2, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1084, 'Kafra_Pass', 'Kafra Pass', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1085, 'Unknown_Test_Tube_', 'Unknown Testtube', 3, 2, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1086, 'Unknown_Test_Tube__', 'Unknown Testtube', 3, 2, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1087, 'Unknown_Test_Tube___', 'Unknown Testtube', 3, 2, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1088, 'Morroc_Solution', 'Morocc Solution', 3, 2, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1089, 'Payon_Solution', 'Payon Solution', 3, 2, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1090, 'Unknown_Test_Tube____', 'Unknown Testtube', 3, 2, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1091, 'Delivery_Box', 'DEL Box', 3, 2, 0, 1200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1092, 'Empty_Test_Tube', 'Empty Testtube', 3, 3, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1093, 'Empty_Potion_Bottle', 'Empty Potion Bottle', 3, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1094, 'Short_Daenggie', 'Short Daenggie', 3, 278, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1095, 'Clock_Hand', 'Needle of Alarm', 3, 546, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1096, 'Round_Shell', 'Round Shell', 3, 954, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1097, 'Worn_Out_Page', 'Worn Out Page', 3, 820, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1098, 'Manacles', 'Manacles', 3, 658, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1099, 'Worn-out_Prison_Uniform', 'Worn-out Prison Uniform', 3, 680, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

# Weapons

# 1 Handed Swords
INSERT INTO `item_db` VALUES (1101, 'Sword', 'Sword', 4, 100, 0, 500, 25, 0, 1, 3, 8803555, 2, 2, 1, 2, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1102, 'Sword_', 'Sword', 4, 100, 0, 500, 25, 0, 1, 4, 8803555, 2, 2, 1, 2, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1103, 'Sword__', 'Sword', 4, 100, 0, 500, 25, 0, 1, 0, 8803555, 2, 2, 1, 2, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1104, 'Falchion', 'Falchion', 4, 1500, 0, 600, 39, 0, 1, 3, 8803555, 2, 2, 1, 2, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1105, 'Falchion_', 'Falchion', 4, 1500, 0, 600, 39, 0, 1, 4, 8803555, 2, 2, 1, 2, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1106, 'Falchion__', 'Falchion', 4, 1500, 0, 600, 39, 0, 1, 0, 8803555, 2, 2, 1, 2, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1107, 'Blade', 'Blade', 4, 2900, 0, 700, 53, 0, 1, 3, 8803555, 2, 2, 1, 2, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1108, 'Blade_', 'Blade', 4, 2900, 0, 700, 53, 0, 1, 4, 8803555, 2, 2, 1, 2, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1109, 'Blade__', 'Blade', 4, 2900, 0, 700, 53, 0, 1, 0, 8803555, 2, 2, 1, 2, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1110, 'Rapier', 'Rapier', 4, 10000, 0, 500, 70, 0, 1, 2, 8803555, 2, 2, 2, 14, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1111, 'Rapier_', 'Rapier', 4, 10000, 0, 500, 70, 0, 1, 3, 8803555, 2, 2, 2, 14, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1112, 'Rapier__', 'Rapier', 4, 10000, 0, 500, 70, 0, 1, 0, 8803555, 2, 2, 2, 14, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1113, 'Scimiter', 'Scimiter', 4, 17000, 0, 700, 85, 0, 1, 2, 8803555, 2, 2, 2, 14, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1114, 'Scimiter_', 'Scimiter', 4, 17000, 0, 700, 85, 0, 1, 3, 8803555, 2, 2, 2, 14, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1115, 'Scimiter__', 'Scimiter', 4, 17000, 0, 700, 85, 0, 1, 0, 8803555, 2, 2, 2, 14, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1116, 'Katana', 'Katana', 4, 2000, 0, 1000, 60, 0, 1, 3, 16514, 2, 34, 1, 4, 3, NULL, NULL);
INSERT INTO `item_db` VALUES (1117, 'Katana_', 'Katana', 4, 2000, 0, 1000, 60, 0, 1, 4, 16514, 2, 34, 1, 4, 3, NULL, NULL);
INSERT INTO `item_db` VALUES (1118, 'Katana__', 'Katana', 4, 2000, 0, 1000, 60, 0, 1, 0, 16514, 2, 34, 1, 4, 3, NULL, NULL);
INSERT INTO `item_db` VALUES (1119, 'Tsurugi', 'Tsurugi', 4, 51000, 0, 1200, 130, 0, 1, 1, 414946, 2, 2, 3, 27, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1120, 'Tsurugi_', 'Tsurugi', 4, 51000, 0, 1200, 130, 0, 1, 2, 414946, 2, 2, 3, 27, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1121, 'Tsurugi__', 'Tsurugi', 4, 51000, 0, 1200, 130, 0, 1, 0, 414946, 2, 2, 3, 27, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1122, 'Ring_Pommel_Saber', 'Ring Pommel Saber', 4, 24000, 0, 900, 100, 0, 1, 2, 414946, 2, 2, 2, 14, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1123, 'Haedonggum', 'Haedonggum', 4, 50000, 0, 900, 120, 0, 1, 1, 414946, 2, 2, 3, 27, 2, NULL, 'bonus bInt,3;');
INSERT INTO `item_db` VALUES (1124, 'Orcish_Sword', 'Orcish sword', 4, 20, 0, 800, 90, 0, 1, 0, 8803555, 2, 2, 3, 5, 2, NULL, 'bonus bUnbreakableWeapon,0;');
INSERT INTO `item_db` VALUES (1125, 'Ring_Pommel_Saber_', 'Ring Pommel Saber', 4, 24000, 0, 900, 100, 0, 1, 3, 414946, 2, 2, 2, 14, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1126, 'Saber', 'Saber', 4, 49000, 0, 1000, 115, 0, 1, 2, 414946, 2, 2, 3, 27, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1127, 'Saber_', 'Saber', 4, 49000, 0, 1000, 115, 0, 1, 3, 414946, 2, 2, 3, 27, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1128, 'Haedonggum_', 'Haedonggum', 4, 50000, 0, 900, 120, 0, 1, 2, 414946, 2, 2, 3, 27, 2, NULL, 'bonus bInt,3;');
INSERT INTO `item_db` VALUES (1129, 'Flamberge', 'Flamberge', 4, 60000, 0, 1500, 150, 0, 1, 0, 16512, 2, 2, 3, 27, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1130, 'Nagan', 'Nagan', 4, 20, 0, 500, 120, 0, 1, 0, 414946, 2, 2, 4, 40, 2, NULL, 'bonus bDoubleRate,25; bonus2 bAddRace,7,5;');
INSERT INTO `item_db` VALUES (1131, 'Ice_Falchion', 'Ice Falchion', 4, 20, 0, 600, 100, 0, 1, 0, 414946, 2, 2, 4, 40, 2, NULL, 'bonus bAtkEle,1; skill 14,3; bonus2 bAddEff,Eff_Freeze,500; bonus4 bAutoSpell,14,3,2500,1;');
INSERT INTO `item_db` VALUES (1132, 'Edge', 'Edge', 4, 20, 0, 700, 115, 0, 1, 0, 414946, 2, 2, 4, 40, 2, NULL, 'bonus2 bAddEff,Eff_Curse,300; bonus2 bWeaponComaRace,11,10;');
INSERT INTO `item_db` VALUES (1133, 'Fire_Brand', 'Fireblend', 4, 20, 0, 500, 100, 0, 1, 0, 414946, 2, 2, 4, 40, 2, NULL, 'bonus bAtkEle,3; skill 19,3; bonus4 bAutoSpell,19,3,2500,1;');
INSERT INTO `item_db` VALUES (1134, 'Caesar\'s_Sword', 'Caesar\'s Sword', 4, 20, 0, 700, 140, 0, 1, 0, 414946, 2, 2, 4, 40, 2, NULL, 'bonus2 bAddRace,3,25; bonus bIgnoreDefRace,3;');
INSERT INTO `item_db` VALUES (1135, 'Cutlas', 'Cutlas', 4, 20, 0, 900, 150, 0, 1, 0, 414946, 2, 2, 4, 40, 2, NULL, 'skill 5,5; bonus bStr,2; bonus bDef,1;');
INSERT INTO `item_db` VALUES (1136, 'Solar_Sword', 'Solar Sword', 4, 20, 0, 1200, 85, 0, 1, 0, 414946, 2, 2, 4, 40, 2, NULL, 'bonus bAtkEle,3; bonus2 bHPDrainRate,100,1; bonus2 bSPLossRate,15,10000;');
INSERT INTO `item_db` VALUES (1137, 'Excalibur', 'Excalibur', 4, 20, 0, 1200, 150, 0, 1, 0, 414946, 2, 2, 4, 40, 2, NULL, 'bonus bInt,5; bonus bLuk,10; bonus bDex,-1; bonus bAtkEle,6;');
INSERT INTO `item_db` VALUES (1138, 'Mysteltainn_', 'Mysteltainn', 4, 20, 0, 1000, 170, 0, 1, 0, 414946, 2, 2, 4, 40, 2, NULL, 'bonus bAtkEle,7; bonus2 bAddEle,8,15; bonus2 bAddEff,Eff_Stone,100; bonus bDex,3;');
INSERT INTO `item_db` VALUES (1139, 'Talefing_', 'Talefing', 4, 20, 0, 1000, 200, 0, 1, 0, 414946, 2, 2, 4, 40, 2, NULL, 'bonus bAtkEle,7; bonus2 bSPDrainRate,5,-35;');
INSERT INTO `item_db` VALUES (1140, 'Byeollungum', 'Byeollungum', 4, 20, 0, 900, 150, 0, 1, 0, 414946, 2, 2, 4, 40, 2, NULL, 'bonus2 bSubRace,11,-10; bonus2 bAddRace,10,50; bonus bAllStats,2;');
INSERT INTO `item_db` VALUES (1141, 'Immaterial_Sword', 'Immaterial Sword', 4, 20, 0, 900, 140, 0, 1, 0, 414946, 2, 2, 4, 40, 2, NULL, 'bonus bAtkEle,8; bonus2 bSPVanishRate,3,30; bonus2 bSPDrainValue,-1,0;');
INSERT INTO `item_db` VALUES (1142, 'Jewel_Sword', 'Crystal Sword', 4, 20, 0, 2200, 104, 0, 1, 0, 414946, 2, 2, 3, 68, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1143, 'Gaia_Sword', 'Gaia Sword', 4, 20, 0, 2500, 115, 0, 1, 0, 414946, 2, 2, 3, 74, 2, NULL, 'bonus3 bAddMonsterDropItem,1002,50,25000;');
INSERT INTO `item_db` VALUES (1144, 'Sashimi', 'Sashimi', 4, 20, 0, 1400, 75, 0, 1, 0, 414946, 2, 2, 3, 48, 2, NULL, 'bonus bAtkEle,4; bonus3 bAddMonsterDropItem,544,5,4000;');
INSERT INTO `item_db` VALUES (1145, 'Holy_Avenger', 'Holy Avenger', 4, 20, 0, 1350, 125, 0, 1, 0, 16384, 2, 2, 3, 75, 2, NULL, 'bonus bAtkEle,6;');
INSERT INTO `item_db` VALUES (1146, 'Towner\'s_Sword', 'Towner\'s Sword', 4, 54000, 0, 800, 100, 0, 1, 1, 8388609, 2, 2, 3, 30, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1147, 'Towner\'s_Sword', 'Towner\'s Sword', 4, 54000, 0, 800, 100, 0, 1, 2, 8388609, 2, 2, 3, 30, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (1148, 'Stardust_Blade', 'Stardust Blade', 4, 20, 0, 1000, 140, 0, 1, 1, 8388609, 2, 2, 4, 45, 2, NULL, 'bonus2 bAddEff,Eff_Stan,500; bonus bUnbreakableWeapon,0;');

# 2 Handed Swords
INSERT INTO `item_db` VALUES (1151, 'Slayer', 'Slayer', 4, 15000, 0, 1300, 90, 0, 1, 2, 16514, 2, 34, 2, 18, 3, NULL, NULL);
INSERT INTO `item_db` VALUES (1152, 'Slayer_', 'Slayer', 4, 15000, 0, 1300, 90, 0, 1, 3, 16514, 2, 34, 2, 18, 3, NULL, NULL);
INSERT INTO `item_db` VALUES (1153, 'Slayer__', 'Slayer', 4, 15000, 0, 1300, 90, 0, 1, 0, 16514, 2, 34, 2, 18, 3, NULL, NULL);
INSERT INTO `item_db` VALUES (1154, 'Bastard_Sword', 'Bastard Sword', 4, 22500, 0, 1600, 115, 0, 1, 2, 16514, 2, 34, 2, 18, 3, NULL, NULL);
INSERT INTO `item_db` VALUES (1155, 'Bastard_Sword_', 'Bastard Sword', 4, 22500, 0, 1600, 115, 0, 1, 3, 16514, 2, 34, 2, 18, 3, NULL, NULL);
INSERT INTO `item_db` VALUES (1156, 'Bastard_Sword__', 'Bastard Sword', 4, 22500, 0, 1600, 115, 0, 1, 0, 16514, 2, 34, 2, 18, 3, NULL, NULL);
INSERT INTO `item_db` VALUES (1157, 'Two_handed_Sword', 'Two-handed Sword', 4, 60000, 0, 2200, 160, 0, 1, 1, 16514, 2, 34, 3, 33, 3, NULL, NULL);
INSERT INTO `item_db` VALUES (1158, 'Two_handed_Sword_', 'Two-handed Sword', 4, 60000, 0, 2200, 160, 0, 1, 2, 16514, 2, 34, 3, 33, 3, NULL, NULL);
INSERT INTO `item_db` VALUES (1159, 'Two_handed_Sword__', 'Two-handed Sword', 4, 60000, 0, 2200, 160, 0, 1, 0, 16514, 2, 34, 3, 33, 3, NULL, NULL);
INSERT INTO `item_db` VALUES (1160, 'Broad_Sword', 'Broad Sword', 4, 65000, 0, 2000, 140, 0, 1, 1, 16514, 2, 34, 3, 33, 3, NULL, 'bonus bDef,5;');
INSERT INTO `item_db` VALUES (1161, 'Balmung', 'Balmung', 4, 20, 0, 1000, 250, 0, 2, 0, 2088959, 2, 2, 4, 48, 1, NULL, 'bonus bInt,20; bonus bLuk,20;');
INSERT INTO `item_db` VALUES (1162, 'Broad_Sword_', 'Broad Sword', 4, 65000, 0, 2000, 140, 0, 1, 2, 16514, 2, 34, 3, 33, 3, NULL, 'bonus bDef,5;');
INSERT INTO `item_db` VALUES (1163, 'Claymore', 'Claymore', 4, 74000, 0, 2500, 180, 0, 1, 0, 16512, 2, 34, 3, 33, 3, NULL, NULL);
INSERT INTO `item_db` VALUES (1164, 'Muramasa', 'Muramasa', 4, 20, 0, 1000, 155, 0, 1, 0, 16514, 2, 34, 4, 48, 3, NULL, 'bonus bCritical,30; bonus bAspdAddRate,8; bonus2 bAddEff2,Eff_Curse,100;');
INSERT INTO `item_db` VALUES (1165, 'Masamune', 'Masamune', 4, 20, 0, 1000, 200, 0, 1, 0, 16514, 2, 34, 4, 48, 3, NULL, 'bonus bFlee,30; bonus bStr,-5; bonus bAspd,2; bonus bDefRate,-50; bonus bDef2Rate,-50;');
INSERT INTO `item_db` VALUES (1166, 'Dragon_Slayer', 'Dragon Slayer', 4, 20, 0, 1300, 150, 0, 1, 0, 16514, 2, 34, 4, 48, 3, NULL, 'bonus bIgnoreDefRace,9; bonus2 bAddRace,9,15;');
INSERT INTO `item_db` VALUES (1167, 'Schweizersabel', 'Schweizersabel', 4, 20, 0, 1600, 160, 0, 1, 0, 16514, 2, 34, 4, 48, 3, NULL, 'bonus bAtkEle,4; bonus bDef,1; bonus4 bAutoSpell,20,3,2500,1;');
INSERT INTO `item_db` VALUES (1168, 'Zweihander', 'Zweihander', 4, 20, 0, 2200, 200, 0, 1, 0, 16514, 2, 34, 4, 48, 3, NULL, 'bonus bUnbreakableWeapon,0;');
INSERT INTO `item_db` VALUES (1169, 'Executioner_', 'Executioner', 4, 20, 0, 2200, 155, 0, 1, 0, 16514, 2, 34, 4, 48, 3, NULL, 'bonus bIgnoreDefRace,7; bonus2 bAddRace,7,20; bonus2 bSubRace,7,-10; bonus bAtkEle,7;');
INSERT INTO `item_db` VALUES (1170, 'Katzbalger', 'Katzbalger', 4, 20, 0, 2000, 175, 0, 1, 0, 16514, 2, 34, 4, 48, 3, NULL, 'bonus bVit,5; bonus bDef,10;');

# Knifes and Daggers
INSERT INTO `item_db` VALUES (1201, 'Knife', 'Knife', 4, 50, 0, 400, 17, 0, 1, 3, 10444527, 2, 2, 1, 1, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1202, 'Knife_', 'Knife', 4, 50, 0, 400, 17, 0, 1, 4, 10444527, 2, 2, 1, 1, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1203, 'Knife__', 'Knife', 4, 50, 0, 400, 17, 0, 1, 0, 10444527, 2, 2, 1, 1, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1204, 'Cutter', 'Cutter', 4, 1250, 0, 500, 30, 0, 1, 3, 10444527, 2, 2, 1, 1, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1205, 'Cutter_', 'Cutter', 4, 1250, 0, 500, 30, 0, 1, 4, 10444527, 2, 2, 1, 1, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1206, 'Cutter__', 'Cutter', 4, 1250, 0, 500, 30, 0, 1, 0, 10444527, 2, 2, 1, 1, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1207, 'Main_Gauche', 'Main Gauche', 4, 2400, 0, 600, 43, 0, 1, 3, 10444527, 2, 2, 1, 1, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1208, 'Main_Gauche_', 'Main Gauche', 4, 2400, 0, 600, 43, 0, 1, 4, 10444527, 2, 2, 1, 1, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1209, 'Main_Gauche__', 'Main Gauche', 4, 2400, 0, 600, 43, 0, 1, 0, 10444527, 2, 2, 1, 1, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1210, 'Dirk', 'Dirk', 4, 8500, 0, 500, 59, 0, 1, 2, 10444527, 2, 2, 2, 12, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1211, 'Dirk_', 'Dirk', 4, 8500, 0, 500, 59, 0, 1, 3, 10444527, 2, 2, 2, 12, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1212, 'Dirk__', 'Dirk', 4, 8500, 0, 500, 59, 0, 1, 0, 10444527, 2, 2, 2, 12, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1213, 'Dagger', 'Dagger', 4, 14000, 0, 600, 73, 0, 1, 2, 10444527, 2, 2, 2, 12, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1214, 'Dagger_', 'Dagger', 4, 14000, 0, 600, 73, 0, 1, 3, 10444527, 2, 2, 2, 12, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1215, 'Dagger__', 'Dagger', 4, 14000, 0, 600, 73, 0, 1, 0, 10444527, 2, 2, 2, 12, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1216, 'Stiletto', 'Stiletto', 4, 19500, 0, 700, 87, 0, 1, 2, 10444527, 2, 2, 2, 12, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1217, 'Stiletto_', 'Stiletto', 4, 19500, 0, 700, 87, 0, 1, 3, 10444527, 2, 2, 2, 12, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1218, 'Stiletto__', 'Stiletto', 4, 19500, 0, 700, 87, 0, 1, 0, 10444527, 2, 2, 2, 12, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1219, 'Gladius', 'Gladius', 4, 43000, 0, 700, 105, 0, 1, 2, 2055918, 2, 2, 3, 24, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1220, 'Gladius_', 'Gladius', 4, 43000, 0, 700, 105, 0, 1, 3, 2055918, 2, 2, 3, 24, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1221, 'Gladius__', 'Gladius', 4, 43000, 0, 700, 105, 0, 1, 0, 2055918, 2, 2, 3, 24, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1222, 'Damascus', 'Damascus', 4, 49000, 0, 800, 118, 0, 1, 1, 2055918, 2, 2, 3, 24, 1, NULL, 'bonus bUnbreakableWeapon,0;');
INSERT INTO `item_db` VALUES (1223, 'Fortune_Sword', 'Fortune Sword', 4, 20, 0, 500, 90, 0, 1, 0, 2055918, 2, 2, 4, 24, 1, NULL, 'bonus bLuk,5; bonus bFlee2,20;');
INSERT INTO `item_db` VALUES (1224, 'Sword_Breaker', 'Swordbreaker', 4, 20, 0, 1000, 70, 0, 1, 0, 2055918, 2, 2, 4, 36, 1, NULL, 'bonus bBreakWeaponRate,500;');
INSERT INTO `item_db` VALUES (1225, 'Mail_Breaker', 'Mailbreaker', 4, 20, 0, 1000, 70, 0, 1, 0, 2055918, 2, 2, 4, 36, 1, NULL, 'bonus bBreakArmorRate,500;');
INSERT INTO `item_db` VALUES (1226, 'Damascus_', 'Damascus', 4, 49000, 0, 800, 118, 0, 1, 2, 2055918, 2, 2, 3, 24, 1, NULL, 'bonus bUnbreakableWeapon,0;');
INSERT INTO `item_db` VALUES (1227, 'Weeder_Knife', 'Weeder Knife', 4, 20, 0, 400, 80, 0, 1, 0, 2055918, 2, 2, 4, 36, 1, NULL, 'bonus bIgnoreDefRace,3; bonus2 bAddRace,3,15; bonus2 bSubRace,3,15;');
INSERT INTO `item_db` VALUES (1228, 'Combat_Knife', 'Combat Knife', 4, 20, 0, 400, 80, 0, 1, 0, 2055918, 2, 2, 4, 36, 1, NULL, 'bonus bIgnoreDefRace,7; bonus2 bSubRace,7,10; bonus2 bSubRace,6,-10;');
INSERT INTO `item_db` VALUES (1229, 'Mama\'s_Knife', 'Mama\'s Knife', 4, 20, 0, 500, 75, 0, 1, 0, 2055918, 2, 2, 4, 36, 1, NULL, 'bonus bCritical,30; bonus2 bAddRace,7,3; bonus3 bAddMonsterDropItem,517,2,5000;');
INSERT INTO `item_db` VALUES (1230, 'House_Auger', 'House Auger', 4, 20, 0, 600, 80, 0, 1, 0, 2055918, 2, 2, 4, 36, 1, NULL, 'bonus bDefRatioAtkRace,10; bonus bDefRatioAtkRace,11;');
INSERT INTO `item_db` VALUES (1231, 'Bazerald', 'Bazerald', 4, 20, 0, 500, 70, 0, 1, 0, 2055918, 2, 2, 4, 36, 1, NULL, 'bonus bAtkEle,3; bonus bInt,5; bonus bMatkRate,10;');
INSERT INTO `item_db` VALUES (1232, 'Assassin_Dagger', 'Assasin Dagger', 4, 20, 0, 600, 140, 0, 1, 0, 4096, 2, 2, 4, 36, 1, NULL, 'bonus bMaxHPrate,20; bonus bMaxSPrate,15; bonus bAspdAddRate,2;');
INSERT INTO `item_db` VALUES (1233, 'Exercise', 'Excorcise', 4, 20, 0, 700, 90, 0, 1, 0, 2055918, 2, 2, 4, 36, 1, NULL, 'bonus bIgnoreDefRace,6; bonus2 bSubRace,6,5; bonus2 bSubRace,7,-10;');
INSERT INTO `item_db` VALUES (1234, 'Moonlight_Sword', 'Walgwanggum', 4, 20, 0, 700, 50, 0, 1, 0, 2055918, 2, 2, 4, 36, 1, NULL, 'bonus bMaxSPrate,10; bonus bSPDrainValue,3;');
INSERT INTO `item_db` VALUES (1235, 'Azoth', 'Azoth', 4, 20, 0, 700, 110, 0, 1, 0, 262144, 2, 2, 4, 36, 1, NULL, 'bonus bClassChange,300;');
INSERT INTO `item_db` VALUES (1236, 'Sucsamad', 'Sucsamad', 4, 20, 0, 800, 140, 0, 1, 0, 2055918, 2, 2, 4, 36, 1, NULL, 'bonus2 bAddEle,2,10; bonus2 bAddEle,4,10; bonus bUnbreakableWeapon,0;');
INSERT INTO `item_db` VALUES (1237, 'Grimtooth_', 'Grimtooth', 4, 20, 0, 800, 180, 0, 1, 0, 2055918, 2, 2, 4, 36, 1, NULL, 'bonus bFlee,10; bonus bFlee2,5; bonus bDefRate,-50; bonus bDef2Rate,-50;');
INSERT INTO `item_db` VALUES (1238, 'Zeny_Knife', 'Zeny Knife', 4, 20, 0, 1200, 64, 0, 1, 0, 2055918, 2, 2, 3, 40, 1, NULL, 'bonus2 bGetZenyNum,100,40;');
INSERT INTO `item_db` VALUES (1239, 'Poison_Knife', 'Poison Knife', 4, 20, 0, 800, 64, 0, 1, 0, 2055918, 2, 2, 3, 65, 1, NULL, 'bonus bAtkEle,5; bonus2 bAddEff,Eff_Poison,3000;');
INSERT INTO `item_db` VALUES (1240, 'Princess_Knife', 'Princess Knife', 4, 20, 0, 400, 84, 0, 1, 0, 2055918, 2, 2, 4, 1, 1, NULL, 'bonus bAllStats,1;');
INSERT INTO `item_db` VALUES (1241, 'Cursed_Dagger', 'Cursed Dagger', 4, 20, 0, 400, 55, 0, 1, 0, 66052, 2, 2, 4, 85, 1, NULL, 'bonus2 bAddEff,Eff_Curse,500;');
INSERT INTO `item_db` VALUES (1242, 'Counter_Dagger', 'Counter Dagger', 4, 20, 0, 550, 140, 0, 1, 0, 66052, 2, 2, 4, 55, 1, NULL, 'bonus bCritical,90; bonus4 bAutoSpell,61,1,2500,1;');
INSERT INTO `item_db` VALUES (1243, 'Main_Gauche_For_Novice', 'Novice Main Gauche', 4, 20, 0, 1, 45, 0, 1, 0, 8388609, 2, 2, 1, 1, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1244, 'Holy_Dagger', 'Holy Dagger', 4, 20, 0, 800, 100, 0, 1, 0, 135232, 2, 2, 4, 55, 1, NULL, 'bonus bAtkEle,6;');
INSERT INTO `item_db` VALUES (1245, 'Cinquedia', 'Cinquedia', 4, 51000, 0, 700, 110, 0, 1, 1, 8388609, 2, 2, 3, 55, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1246, 'Cinquedia_', 'Cinquedia', 4, 51000, 0, 700, 110, 0, 1, 2, 8388609, 2, 2, 3, 55, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (1247, 'Kindling_Dagger', 'Kindling Dagger', 4, 20, 0, 600, 39, 0, 1, 0, 10444527, 2, 2, 1, 0, 1, NULL, 'bonus bAtkEle,3;');
INSERT INTO `item_db` VALUES (1248, 'Obsidian_Dagger', 'Obsidian Dagger', 4, 20, 0, 600, 39, 0, 1, 0, 10444527, 2, 2, 1, 0, 1, NULL, 'bonus bAtkEle,2;');
INSERT INTO `item_db` VALUES (1249, 'Fisherman\'s_Knife', 'Fisherman\'s Knife', 4, 20, 0, 600, 39, 0, 1, 0, 10444527, 2, 2, 1, 0, 1, NULL, 'bonus bAtkEle,1;');

# Katars
INSERT INTO `item_db` VALUES (1250, 'Jur', 'Jur', 4, 19500, 0, 800, 125, 0, 1, 2, 4096, 2, 34, 2, 18, 16, NULL, NULL);
INSERT INTO `item_db` VALUES (1251, 'Jur_', 'Jur', 4, 19500, 0, 800, 125, 0, 1, 3, 4096, 2, 34, 2, 18, 16, NULL, NULL);
INSERT INTO `item_db` VALUES (1252, 'Katar', 'Katar', 4, 41000, 0, 1200, 148, 0, 1, 1, 4096, 2, 34, 3, 33, 16, NULL, 'bonus bDex,1;');
INSERT INTO `item_db` VALUES (1253, 'Katar_', 'Katar', 4, 41000, 0, 1200, 148, 0, 1, 2, 4096, 2, 34, 3, 33, 16, NULL, 'bonus bDex,1;');
INSERT INTO `item_db` VALUES (1254, 'Jamadhar', 'Jamadhar', 4, 37200, 0, 1500, 165, 0, 1, 0, 4096, 2, 34, 3, 33, 16, NULL, NULL);
INSERT INTO `item_db` VALUES (1255, 'Jamadhar_', 'Jamadhar', 4, 37200, 0, 1500, 165, 0, 1, 1, 4096, 2, 34, 3, 33, 16, NULL, NULL);
INSERT INTO `item_db` VALUES (1256, 'Katar_of_Cold_Icicle', 'Katar of Cold Icicle', 4, 45000, 0, 1200, 105, 0, 1, 0, 4096, 2, 34, 3, 55, 16, NULL, 'bonus bAtkEle,1; bonus2 bAddEff,Eff_Freeze,500;');
INSERT INTO `item_db` VALUES (1257, 'Katar_of_Thornbush', 'Katar of Dusty Thornbush', 4, 45000, 0, 1200, 105, 0, 1, 0, 4096, 2, 34, 3, 55, 16, NULL, 'bonus bAtkEle,2; bonus2 bAddEff,Eff_Blind,500;');
INSERT INTO `item_db` VALUES (1258, 'Katar_of_Raging_Blaze', 'Katar of Raging Blaze', 4, 45000, 0, 1200, 105, 0, 1, 0, 4096, 2, 34, 3, 55, 16, NULL, 'bonus bAtkEle,3; bonus2 bAddEff,Eff_Silence,500;');
INSERT INTO `item_db` VALUES (1259, 'Katar_of_Piercing_Wind', 'Katar of Piercing Wind', 4, 45000, 0, 1200, 105, 0, 1, 0, 4096, 2, 34, 3, 55, 16, NULL, 'bonus bAtkEle,4; bonus2 bAddEff,Eff_Sleep,500;');
INSERT INTO `item_db` VALUES (1260, 'Ghoul_Leg', 'Sharpened Legbone', 4, 52500, 0, 1700, 150, 0, 1, 0, 4096, 2, 34, 3, 65, 16, NULL, 'bonus bAtkEle,9;');
INSERT INTO `item_db` VALUES (1261, 'Infiltrator', 'Infiltrator', 4, 57000, 0, 1500, 140, 0, 1, 0, 4096, 2, 34, 4, 75, 16, NULL, 'bonus2 bAddRace,7,50; bonus bDef,3; bonus bFlee,5; bonus bFlee2,2;');
INSERT INTO `item_db` VALUES (1262, 'Loki\'s_Talon', 'Loki\'s Talon', 4, 20, 0, 1200, 115, 0, 1, 0, 4096, 2, 34, 3, 55, 16, NULL, 'bonus2 bAddEff,Eff_Bleeding,500;');
INSERT INTO `item_db` VALUES (1263, 'Unholy_Touch', 'Unholy Touch', 4, 20, 0, 1250, 95, 0, 1, 0, 4096, 2, 34, 4, 70, 16, NULL, 'bonus bAtkEle,7; bonus2 bAddEff,Eff_Curse,500;');
INSERT INTO `item_db` VALUES (1264, 'Various_Jur', 'Various Jur', 4, 20, 0, 800, 90, 0, 1, 4, 4096, 2, 34, 1, 0, 16, NULL, 'bonus2 bAddEff2,Eff_Bleeding,200;'); #makes user bleeding by low chance,,,
INSERT INTO `item_db` VALUES (1265, 'Bloody_Roar', 'Bloody Roar', 4, 20, 0, 800, 120, 0, 1, 0, 4096, 2, 34, 4, 75, 16, NULL, 'bonus bIgnoreDefRace,7; bonus bFlee,-160; bonus bFlee2,-160; bonus bNoRegen,1; bonus bNoRegen,2;');

# Axes
INSERT INTO `item_db` VALUES (1301, 'Axe', 'Axe', 4, 500, 0, 800, 38, 0, 1, 3, 8803555, 2, 2, 1, 3, 6, NULL, NULL);
INSERT INTO `item_db` VALUES (1302, 'Axe_', 'Axe', 4, 500, 0, 800, 38, 0, 1, 4, 8803555, 2, 2, 1, 3, 6, NULL, NULL);
INSERT INTO `item_db` VALUES (1303, 'Axe__', 'Axe', 4, 500, 0, 800, 38, 0, 1, 0, 8803555, 2, 2, 1, 3, 6, NULL, NULL);
INSERT INTO `item_db` VALUES (1304, 'Orcish_Axe', 'Orcish Axe', 4, 20, 0, 1500, 75, 0, 1, 0, 8803555, 2, 2, 3, 3, 6, NULL, NULL);
INSERT INTO `item_db` VALUES (1305, 'Cleaver', 'Cleaver', 4, 20, 0, 1200, 140, 0, 1, 0, 279714, 2, 2, 4, 44, 6, NULL, 'bonus2 bAddRace,7,5; bonus3 bAddMonsterDropItem,517,2,3000;');
INSERT INTO `item_db` VALUES (1306, 'War_Axe', 'War Axe', 4, 20, 0, 4200, 145, 0, 1, 1, 263168, 2, 2, 3, 76, 6, NULL, 'bonus bDex,2; bonus bLuk,2;');
INSERT INTO `item_db` VALUES (1307, 'Wind_Hawk', 'Windhawk', 4, 20, 0, 1500, 115, 0, 1, 0, 279714, 2, 2, 2, 14, 6, NULL, 'bonus bAspdRate,5;');
INSERT INTO `item_db` VALUES (1308, 'Golden_Axe', 'Golden Axe', 4, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL); # missing stats,,,,,

INSERT INTO `item_db` VALUES (1351, 'Battle_Axe', 'Battle Axe', 4, 5400, 0, 1500, 80, 0, 1, 3, 279714, 2, 34, 1, 3, 7, NULL, NULL);
INSERT INTO `item_db` VALUES (1352, 'Battle_Axe_', 'Battle Axe', 4, 5400, 0, 1500, 80, 0, 1, 4, 279714, 2, 34, 1, 3, 7, NULL, NULL);
INSERT INTO `item_db` VALUES (1353, 'Battle_Axe__', 'Battle Axe', 4, 5400, 0, 1500, 80, 0, 1, 0, 279714, 2, 34, 1, 3, 7, NULL, NULL);
INSERT INTO `item_db` VALUES (1354, 'Hammer', 'Hammer', 4, 15500, 0, 2000, 120, 0, 1, 2, 279714, 2, 34, 2, 16, 7, NULL, NULL);
INSERT INTO `item_db` VALUES (1355, 'Hammer_', 'Hammer', 4, 15500, 0, 2000, 120, 0, 1, 3, 279714, 2, 34, 2, 16, 7, NULL, NULL);
INSERT INTO `item_db` VALUES (1356, 'Hammer__', 'Hammer', 4, 15500, 0, 2200, 120, 0, 1, 0, 279714, 2, 34, 2, 16, 7, NULL, NULL);
INSERT INTO `item_db` VALUES (1357, 'Buster', 'Buster', 4, 34000, 0, 2200, 155, 0, 1, 1, 279714, 2, 34, 3, 30, 7, NULL, NULL);
INSERT INTO `item_db` VALUES (1358, 'Buster_', 'Buster', 4, 34000, 0, 2200, 155, 0, 1, 2, 279714, 2, 34, 3, 30, 7, NULL, NULL);
INSERT INTO `item_db` VALUES (1359, 'Buster__', 'Buster', 4, 34000, 0, 2200, 155, 0, 1, 0, 279714, 2, 34, 3, 30, 7, NULL, NULL);
INSERT INTO `item_db` VALUES (1360, 'Two_handed_Axe', 'Two-handed Axe', 4, 55000, 0, 2500, 185, 0, 1, 1, 279714, 2, 34, 3, 30, 7, NULL, NULL);
INSERT INTO `item_db` VALUES (1361, 'Two_handed_Axe_', 'Two-handed Axe', 4, 55000, 0, 2500, 185, 0, 1, 2, 279714, 2, 34, 3, 30, 7, NULL, NULL);
INSERT INTO `item_db` VALUES (1362, 'Two_handed_Axe__', 'Two-handed Axe', 4, 55000, 0, 2500, 185, 0, 1, 0, 279714, 2, 34, 3, 30, 7, NULL, NULL);
INSERT INTO `item_db` VALUES (1363, 'Blood_Axe', 'Bloody Axe', 4, 20, 0, 4000, 170, 0, 1, 0, 279714, 2, 34, 4, 44, 7, NULL, 'bonus bStr,10; bonus bSpeedRate,25;');
INSERT INTO `item_db` VALUES (1364, 'Great_Axe', 'Great Axe', 4, 20, 0, 1800, 187, 0, 1, 0, 279714, 2, 34, 4, 44, 7, NULL, 'bonus2 bAddEff,Eff_Stan,1500;');
INSERT INTO `item_db` VALUES (1365, 'Sabbath', 'Sabbath', 4, 20, 0, 2300, 120, 0, 1, 0, 279714, 2, 34, 4, 44, 7, NULL, 'bonus2 bWeaponComaRace,6,50; bonus bAtkEle,7;');
INSERT INTO `item_db` VALUES (1366, 'Light_Epsilon', 'Light Epsilon', 4, 20, 0, 2300, 180, 0, 1, 0, 279714, 2, 34, 4, 44, 7, NULL, 'bonus bAtkEle,6; skill 28,3; bonus2 bAddRace,6,3;');
INSERT INTO `item_db` VALUES (1367, 'Slaughter', 'Slaughter', 4, 20, 0, 2500, 120, 0, 1, 0, 279714, 2, 34, 4, 44, 7, NULL, 'bonus bIgnoreDefRace,2; bonus2 bWeaponComaRace,2,50;');
INSERT INTO `item_db` VALUES (1368, 'Tomahawk', 'Tomahawk', 4, 20, 0, 2500, 165, 0, 1, 0, 279714, 2, 34, 4, 44, 7, NULL, 'bonus bAtkEle,4; skill 337,1;');
INSERT INTO `item_db` VALUES (1369, 'Guillotine', 'Guillotine', 4, 20, 0, 3000, 215, 0, 1, 0, 279714, 2, 34, 4, 44, 7, NULL, 'bonus2 bWeaponComaRace,7,30; bonus2 bSPDrainRate,5,2;');

# Spears
INSERT INTO `item_db` VALUES (1401, 'Javelin', 'Javelin', 4, 150, 0, 700, 28, 0, 3, 3, 16514, 2, 2, 1, 4, 4, NULL, NULL);
INSERT INTO `item_db` VALUES (1402, 'Javelin_', 'Javelin', 4, 150, 0, 700, 28, 0, 3, 4, 16514, 2, 2, 1, 4, 4, NULL, NULL);
INSERT INTO `item_db` VALUES (1403, 'Javelin__', 'Javelin', 4, 150, 0, 700, 28, 0, 3, 0, 16514, 2, 2, 1, 4, 4, NULL, NULL);
INSERT INTO `item_db` VALUES (1404, 'Spear', 'Spear', 4, 1700, 0, 850, 44, 0, 3, 3, 16514, 2, 2, 1, 4, 4, NULL, NULL);
INSERT INTO `item_db` VALUES (1405, 'Spear_', 'Spear', 4, 1700, 0, 850, 44, 0, 3, 4, 16514, 2, 2, 1, 4, 4, NULL, NULL);
INSERT INTO `item_db` VALUES (1406, 'Spear__', 'Spear', 4, 1700, 0, 850, 44, 0, 3, 0, 16514, 2, 2, 1, 4, 4, NULL, NULL);
INSERT INTO `item_db` VALUES (1407, 'Pike', 'Pike', 4, 3450, 0, 1000, 60, 0, 3, 3, 16514, 2, 2, 1, 4, 4, NULL, NULL);
INSERT INTO `item_db` VALUES (1408, 'Pike_', 'Pike', 4, 3450, 0, 1000, 60, 0, 3, 4, 16514, 2, 2, 1, 4, 4, NULL, NULL);
INSERT INTO `item_db` VALUES (1409, 'Pike__', 'Pike', 4, 3450, 0, 1000, 60, 0, 3, 0, 16514, 2, 2, 1, 4, 4, NULL, NULL);
INSERT INTO `item_db` VALUES (1410, 'Lance', 'Lance', 4, 60000, 0, 2500, 185, 0, 3, 0, 16514, 2, 34, 3, 33, 5, NULL, NULL);
INSERT INTO `item_db` VALUES (1411, 'Lance_', 'Lance', 4, 60000, 0, 2500, 185, 0, 3, 0, 16514, 2, 34, 3, 33, 5, NULL, NULL);
INSERT INTO `item_db` VALUES (1412, 'Lance__', 'Lance', 4, 60000, 0, 2500, 185, 0, 3, 0, 16514, 2, 34, 3, 33, 5, NULL, NULL);
INSERT INTO `item_db` VALUES (1413, 'Gungnir', 'Gungnir', 4, 20, 0, 500, 120, 0, 3, 0, 16514, 2, 2, 4, 4, 4, NULL, 'bonus bAtkEle,4; bonus bPerfectHitRate,25; bonus bHit,30;');
INSERT INTO `item_db` VALUES (1414, 'Gelerdria', 'Gelerdria', 4, 20, 0, 700, 145, 0, 3, 0, 16514, 2, 2, 4, 48, 4, NULL, 'bonus bAtkEle,2; bonus bMaxHP,500; bonus bMaxSP,-50;');
INSERT INTO `item_db` VALUES (1415, 'Skewer', 'Brocca', 4, 20, 0, 850, 100, 0, 3, 0, 16514, 2, 2, 4, 48, 4, NULL, 'bonus bIgnoreDefRace,11; bonus2 bAddEle,0,25;');
INSERT INTO `item_db` VALUES (1416, 'Tjungkuletti', 'Tjungkuletti', 4, 20, 0, 1000, 95, 0, 3, 0, 16514, 2, 2, 4, 48, 4, NULL, 'bonus2 bSPDrainRate,100,1; bonus2 bSPDrainRate,1,5;');
INSERT INTO `item_db` VALUES (1417, 'Pole_Axe', 'Pole Axe', 4, 20, 0, 3800, 160, 0, 3, 1, 16514, 2, 2, 3, 71, 4, NULL, 'bonus bStr,1; bonus bInt,2; bonus bDex,1;');

INSERT INTO `item_db` VALUES (1451, 'Guisarme', 'Guisarme', 4, 13000, 0, 1000, 84, 0, 3, 2, 16514, 2, 34, 2, 18, 5, NULL, NULL);
INSERT INTO `item_db` VALUES (1452, 'Guisarme_', 'Guisarme', 4, 13000, 0, 1000, 84, 0, 3, 3, 16514, 2, 34, 2, 18, 5, NULL, NULL);
INSERT INTO `item_db` VALUES (1453, 'Guisarme__', 'Guisarme', 4, 13000, 0, 1000, 84, 0, 3, 0, 16514, 2, 34, 2, 18, 5, NULL, NULL);
INSERT INTO `item_db` VALUES (1454, 'Glaive', 'Glaive', 4, 20000, 0, 1200, 104, 0, 3, 2, 16514, 2, 34, 2, 18, 5, NULL, NULL);
INSERT INTO `item_db` VALUES (1455, 'Glaive_', 'Glaive', 4, 20000, 0, 1200, 104, 0, 3, 3, 16514, 2, 34, 2, 18, 5, NULL, NULL);
INSERT INTO `item_db` VALUES (1456, 'Glaive__', 'Glaive', 4, 20000, 0, 1200, 104, 0, 3, 0, 16514, 2, 34, 2, 18, 5, NULL, NULL);
INSERT INTO `item_db` VALUES (1457, 'Partizan', 'Partizan', 4, 27000, 0, 2000, 124, 0, 3, 1, 16514, 2, 34, 2, 18, 5, NULL, NULL);
INSERT INTO `item_db` VALUES (1458, 'Partizan_', 'Partizan', 4, 27000, 0, 2000, 124, 0, 3, 2, 16514, 2, 34, 2, 18, 5, NULL, NULL);
INSERT INTO `item_db` VALUES (1459, 'Partizan__', 'Partizan', 4, 27000, 0, 2000, 124, 0, 3, 0, 16514, 2, 34, 3, 33, 5, NULL, NULL);
INSERT INTO `item_db` VALUES (1460, 'Trident', 'Trident', 4, 51000, 0, 1200, 150, 0, 3, 2, 16514, 2, 34, 3, 33, 5, NULL, NULL);
INSERT INTO `item_db` VALUES (1461, 'Trident_', 'Trident', 4, 51000, 0, 1200, 150, 0, 3, 3, 16514, 2, 34, 3, 33, 5, NULL, NULL);
INSERT INTO `item_db` VALUES (1462, 'Trident__', 'Trident', 4, 51000, 0, 1200, 150, 0, 3, 0, 16514, 2, 34, 3, 33, 5, NULL, NULL);
INSERT INTO `item_db` VALUES (1463, 'Halberd', 'Halberd', 4, 54000, 0, 2500, 165, 0, 3, 1, 16514, 2, 34, 3, 33, 5, NULL, NULL);
INSERT INTO `item_db` VALUES (1464, 'Halberd_', 'Halberd', 4, 54000, 0, 2500, 165, 0, 3, 2, 16514, 2, 34, 3, 33, 5, NULL, NULL);
INSERT INTO `item_db` VALUES (1465, 'Halberd__', 'Halberd', 4, 54000, 0, 2500, 165, 0, 3, 0, 16514, 2, 34, 3, 33, 5, NULL, NULL);
INSERT INTO `item_db` VALUES (1466, 'Crescent_Scythe', 'Crescent Scythe', 4, 20, 0, 2500, 180, 0, 3, 0, 16514, 2, 34, 4, 48, 5, NULL, 'bonus bCritical,30; bonus bHit,10;');
INSERT INTO `item_db` VALUES (1467, 'Bill_Guisarme', 'Bill Guisarme', 4, 20, 0, 1000, 183, 0, 3, 0, 16514, 2, 34, 4, 48, 5, NULL, 'bonus2 bAddRace,2,10; bonus2 bAddRace,7,5;');
INSERT INTO `item_db` VALUES (1468, 'Zephyrus', 'Zephyrus', 4, 20, 0, 2000, 170, 0, 3, 0, 16514, 2, 34, 4, 48, 5, NULL, 'bonus bAtkEle,4; bonus2 bAddEff,Eff_Silence,200; bonus4 bAutoSpell,21,3,2500,1;');
INSERT INTO `item_db` VALUES (1469, 'Longinus\'s_Spear', 'Longinus\'s Spear', 4, 20, 0, 2500, 180, 0, 3, 0, 16514, 2, 34, 4, 48, 5, NULL, 'bonus bAtkEle,7; bonus2 bAddRace,7,10; bonus2 bAddRace,8,10;');
INSERT INTO `item_db` VALUES (1470, 'Brionac', 'Brionac', 4, 20, 0, 3000, 190, 0, 3, 0, 16514, 2, 34, 4, 48, 5, NULL, 'bonus bAtkEle,6; skill 28,5; bonus4 bAutoSpell,13,3,2500,1; bonus2 bAddRace,10,5;');
INSERT INTO `item_db` VALUES (1471, 'Hellfire', 'Hellfire', 4, 20, 0, 3500, 200, 0, 3, 0, 16514, 2, 34, 4, 48, 5, NULL, 'bonus bAtkEle,3; bonus4 bAutoSpell,17,3,2500,1; bonus bStr,3;');

# 2 Handed Staffs
INSERT INTO `item_db` VALUES (1472, 'Staff_of_Soul', 'Soul Staff', 4, 20, 0, 1400, 25, 0, 1, 0, 66052, 2, 34, 3, 73, 10, NULL, 'bonus bInt,5; bonus bAgi,2; bonus bMatkRate,15;');
INSERT INTO `item_db` VALUES (1473, 'Wizardy_Staff', 'Wizardy Staff', 4, 20, 0, 2400, 120, 0, 1, 0, 66052, 2, 34, 4, 90, 10, NULL, 'bonus bInt,6; bonus bDex,2; bonus bMatkRate,15;');

# 2 Handed Spears
INSERT INTO `item_db` VALUES (1474, 'Gaebolg', 'Gae Bulg', 4, 20, 0, 2000, 160, 0, 3, 0, 16514, 2, 34, 4, 60, 5, NULL, 'bonus bIgnoreDefRace,9; bonus2 bAddRace,10,10;');
INSERT INTO `item_db` VALUES (1475, 'Cavalry_Lance', 'Cavalry Lance', 4, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL); #missing stats

# Clubs and Maces
INSERT INTO `item_db` VALUES (1501, 'Club', 'Club', 4, 120, 0, 700, 23, 0, 1, 3, 8701363, 2, 2, 1, 2, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1502, 'Club_', 'Club', 4, 120, 0, 700, 23, 0, 1, 4, 8701363, 2, 2, 1, 2, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1503, 'Club__', 'Club', 4, 120, 0, 700, 23, 0, 1, 0, 8701363, 2, 2, 1, 2, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1504, 'Mace', 'Mace', 4, 1600, 0, 800, 37, 0, 1, 3, 8701363, 2, 2, 1, 2, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1505, 'Mace_', 'Mace', 4, 1600, 0, 800, 37, 0, 1, 4, 8701363, 2, 2, 1, 2, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1506, 'Mace__', 'Mace', 4, 1600, 0, 800, 37, 0, 1, 0, 8701363, 2, 2, 1, 2, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1507, 'Smasher', 'Smasher', 4, 9000, 0, 1000, 54, 0, 1, 2, 8701363, 2, 2, 2, 14, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1508, 'Smasher_', 'Smasher', 4, 9000, 0, 1000, 54, 0, 1, 3, 8701363, 2, 2, 2, 14, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1509, 'Smasher__', 'Smasher', 4, 9000, 0, 1000, 54, 0, 1, 3, 8701363, 2, 2, 2, 14, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1510, 'Flail', 'Flail', 4, 16000, 0, 900, 69, 0, 1, 2, 312754, 2, 2, 2, 14, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1511, 'Flail_', 'Flail', 4, 16000, 0, 900, 69, 0, 1, 3, 312754, 2, 2, 2, 14, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1512, 'Flail__', 'Flail', 4, 16000, 0, 900, 69, 0, 1, 3, 312754, 2, 2, 2, 14, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1513, 'Morning_Star', 'Morning Star', 4, 41000, 0, 1500, 110, 0, 1, 1, 312754, 2, 2, 3, 27, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1514, 'Morning_Star_', 'Morning Star', 4, 41000, 0, 1500, 110, 0, 1, 2, 312754, 2, 2, 3, 27, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1515, 'Morning_Star__', 'Morning Star', 4, 41000, 0, 1500, 110, 0, 1, 2, 312754, 2, 2, 3, 27, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1516, 'Sword_Mace', 'Sword Mace', 4, 50000, 0, 1200, 130, 0, 1, 0, 312754, 2, 2, 3, 27, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1517, 'Sword_Mace_', 'Sword Mace', 4, 50000, 0, 1200, 130, 0, 1, 1, 312754, 2, 2, 3, 27, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1518, 'Sword_Mace__', 'Sword Mace', 4, 50000, 0, 1200, 130, 0, 1, 1, 312754, 2, 2, 3, 27, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1519, 'Chain', 'Chain', 4, 23000, 0, 800, 84, 0, 1, 2, 312754, 2, 2, 2, 14, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1520, 'Chain_', 'Chain', 4, 23000, 0, 800, 84, 0, 1, 3, 312754, 2, 2, 2, 14, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1521, 'Chain__', 'Chain', 4, 23000, 0, 800, 84, 0, 1, 3, 312754, 2, 2, 2, 14, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1522, 'Stunner', 'Stunner', 4, 60000, 0, 2000, 140, 0, 1, 0, 33040, 2, 2, 3, 27, 8, NULL, 'bonus2 bAddEff,Eff_Stan,1000;');
INSERT INTO `item_db` VALUES (1523, 'Spike', 'Spike', 4, 20, 0, 700, 85, 0, 1, 0, 33040, 2, 2, 4, 40, 8, NULL, 'bonus bCritical,40; bonus bDefRate,-67; bonus bDef2Rate,-67;');
INSERT INTO `item_db` VALUES (1524, 'Golden_Mace', 'Golden Mace', 4, 20, 0, 800, 110, 0, 1, 1, 33040, 2, 2, 4, 40, 8, NULL, 'bonus2 bAddRace,1,10; bonus bUnbreakableWeapon,0;');
INSERT INTO `item_db` VALUES (1525, 'Long_Mace', 'Long Mace', 4, 20, 0, 800, 135, 0, 3, 0, 33040, 2, 2, 4, 40, 8, NULL, 'bonus bLongAtkDef,10;');
INSERT INTO `item_db` VALUES (1526, 'Slash', 'Slash', 4, 20, 0, 1000, 145, 0, 1, 0, 33040, 2, 2, 4, 40, 8, NULL, 'bonus2 bAddRace,1,15; bonus2 bWeaponComaRace,1,50;');
INSERT INTO `item_db` VALUES (1527, 'Quadrille', 'Quadrille', 4, 20, 0, 900, 165, 0, 1, 0, 33040, 2, 2, 4, 40, 8, NULL, 'bonus2 bAddRace,1,10; bonus2 bAddRace,7,10; bonus2 bAddEle,2,10;');
INSERT INTO `item_db` VALUES (1528, 'Grand_Cross', 'Grand Cross', 4, 20, 0, 1500, 140, 0, 1, 0, 33040, 2, 2, 4, 40, 8, NULL, 'bonus bAtkEle,6; bonus4 bAutoSpell,77,3,2500,1; bonus2 bHPDrainRate,100,1;');
INSERT INTO `item_db` VALUES (1529, 'Iron_Driver', 'Iron Driver', 4, 20, 0, 3000, 155, 0, 1, 0, 33024, 2, 2, 3, 78, 8, NULL, NULL);
INSERT INTO `item_db` VALUES (1530, 'Mjolnir', 'Mjolnir', 4, 20, 0, 6000, 250, 0, 1, 0, 8701363, 2, 2, 4, 95, 8, NULL, 'bonus bAtkEle,4; bonus bDex,40; bonus bStr,15; bonus bAspdRate,30;');
INSERT INTO `item_db` VALUES (1531, 'Spanner', 'Spanner', 4, 20, 0, 2500, 115, 0, 1, 0, 33040, 2, 2, 3, 55, 8, NULL, 'bonus2 bAddEff,Eff_Blind,100; bonus2 bAddEff,Eff_Stan,100; bonus2 bAddEff,Eff_Poison,100; bonus2 bAddEff,Eff_Freeze,100;');

# Books
INSERT INTO `item_db` VALUES (1550, 'Book', 'Book', 4, 30000, 0, 600, 85, 0, 1, 3, 65792, 2, 2, 2, 14, 15, NULL, NULL);
INSERT INTO `item_db` VALUES (1551, 'Bible', 'Bible', 4, 60000, 0, 1000, 115, 0, 1, 2, 65792, 2, 2, 3, 27, 15, NULL, 'bonus bInt,2;');
INSERT INTO `item_db` VALUES (1552, 'Tablet', 'Tablet', 4, 51000, 0, 800, 125, 0, 1, 1, 65792, 2, 2, 3, 27, 15, NULL, NULL);
INSERT INTO `item_db` VALUES (1553, 'Book_of_Billows', 'Book of Billows', 4, 35000, 0, 750, 90, 0, 1, 0, 65792, 2, 2, 3, 27, 15, NULL, 'bonus bAtkEle,1;');
INSERT INTO `item_db` VALUES (1554, 'Book_of_Mother_Earth', 'Book of Mother Earth', 4, 35000, 0, 750, 90, 0, 1, 0, 65792, 2, 2, 3, 27, 15, NULL, 'bonus bAtkEle,2;');
INSERT INTO `item_db` VALUES (1555, 'Book_of_Blazing_Sun', 'Book of Blazing Sun', 4, 35000, 0, 750, 90, 0, 1, 0, 65792, 2, 2, 3, 27, 15, NULL, 'bonus bAtkEle,3;');
INSERT INTO `item_db` VALUES (1556, 'Book_of_Gust_of_Wind', 'Book of Gust of Wind', 4, 35000, 0, 750, 90, 0, 1, 0, 65792, 2, 2, 3, 27, 15, NULL, 'bonus bAtkEle,4;');
INSERT INTO `item_db` VALUES (1557, 'Book_of_the_Apocalypse', 'Book of the Apocalypse', 4, 35000, 0, 800, 120, 0, 1, 0, 65792, 2, 2, 4, 40, 15, NULL, 'bonus bAtkEle,7; bonus2 bSubEle,6,-5; bonus2 bAddEle,1,7; bonus2 bAddEle,2,7; bonus2 bAddEle,3,7; bonus2 bAddEle,4,7;');
INSERT INTO `item_db` VALUES (1558, 'Girl\'s_Diary', 'Girl\'s Diary', 4, 20, 0, 300, 60, 0, 1, 1, 65792, 2, 2, 4, 40, 15, NULL, 'bonus2 bAddDamageClass,1188,150;');
INSERT INTO `item_db` VALUES (1559, 'Dragon_Legacy', 'Legacy of Dragon', 4, 0, 0, 700, 130, 0, 1, 0, 65792, 2, 2, 4, 70, 15, NULL, 'bonus bInt,3; bonus bIgnoreDefRace,9; bonus2 bSPGainRace,9,10;');
INSERT INTO `item_db` VALUES (1560, 'Sage\'s_Diary', 'Sage\'s Diary', 4, 0, 0, 1100, 100, 0, 1, 2, 65536, 2, 2, 3, 60, 15, NULL, 'bonus bMatkRate,15; if readparam(bStr>=50) bonus bAspdRate,5; if readparam(bInt>=70) bonus bMatkRate,5;');
INSERT INTO `item_db` VALUES (1561, 'Hard_Covered_Book', 'Hard Covered Book', 4, 0, 0, 1500, 140, 0, 1, 0, 65792, 2, 2, 4, 55, 15, NULL, 'bonus bStr,3; bonus bDex,2;');
INSERT INTO `item_db` VALUES (1562, 'Battlefield_Textbook', 'Textbook on Battlefield', 4, 0, 0, 1500, 140, 0, 1, 0, 65792, 2, 2, 4, 55, 15, NULL, 'bonus bInt,3; bonus4 bAutoSpell,34,3+(getskilllv(34)>3)*(getskilllv(34)-3),1000,0;');

INSERT INTO `item_db` VALUES (1599, 'Angra_Manyu', 'Angra Manyu', 4, 120, 0, 10, 1, 0, 1, 5, 27254783, 2, 2, 4, 2, 8, NULL, 'bonus bBaseAtk,3800; bonus2 bHPDrainRate,100,100;');

# Rods and Staffs
INSERT INTO `item_db` VALUES (1601, 'Rod', 'Rod', 4, 50, 0, 400, 15, 0, 1, 3, 8487701, 2, 2, 1, 1, 10, NULL, 'bonus bMatkRate,15;');
INSERT INTO `item_db` VALUES (1602, 'Rod_', 'Rod', 4, 50, 0, 400, 15, 0, 1, 4, 8487701, 2, 2, 1, 1, 10, NULL, 'bonus bMatkRate,15;');
INSERT INTO `item_db` VALUES (1603, 'Rod__', 'Rod', 4, 50, 0, 400, 15, 0, 1, 0, 8487701, 2, 2, 1, 1, 10, NULL, 'bonus bMatkRate,15;');
INSERT INTO `item_db` VALUES (1604, 'Wand', 'Wand', 4, 2500, 0, 400, 25, 0, 1, 2, 8487701, 2, 2, 2, 12, 10, NULL, 'bonus bInt,1; bonus bMatkRate,15;');
INSERT INTO `item_db` VALUES (1605, 'Wand_', 'Wand', 4, 2500, 0, 400, 25, 0, 1, 3, 8487701, 2, 2, 2, 12, 10, NULL, 'bonus bInt,1; bonus bMatkRate,15;');
INSERT INTO `item_db` VALUES (1606, 'Wand__', 'Wand', 4, 2500, 0, 400, 25, 0, 1, 0, 8487701, 2, 2, 2, 12, 10, NULL, 'bonus bInt,1; bonus bMatkRate,15;');
INSERT INTO `item_db` VALUES (1607, 'Staff', 'Staff', 4, 9500, 0, 400, 40, 0, 1, 2, 99092, 2, 2, 2, 12, 10, NULL, 'bonus bInt,2; bonus bMatkRate,15;');
INSERT INTO `item_db` VALUES (1608, 'Staff_', 'Staff', 4, 9500, 0, 400, 40, 0, 1, 3, 99092, 2, 2, 2, 12, 10, NULL, 'bonus bInt,2; bonus bMatkRate,15;');
INSERT INTO `item_db` VALUES (1609, 'Staff__', 'Staff', 4, 9500, 0, 400, 40, 0, 1, 0, 99092, 2, 2, 2, 12, 10, NULL, 'bonus bInt,2; bonus bMatkRate,15;');
INSERT INTO `item_db` VALUES (1610, 'Arc_Wand', 'Arc Wand', 4, 45000, 0, 400, 60, 0, 1, 1, 99092, 2, 2, 3, 24, 10, NULL, 'bonus bInt,3; bonus bMatkRate,15;');
INSERT INTO `item_db` VALUES (1611, 'Arc_Wand_', 'Arc Wand', 4, 45000, 0, 400, 60, 0, 1, 2, 99092, 2, 2, 3, 24, 10, NULL, 'bonus bInt,3; bonus bMatkRate,15;');
INSERT INTO `item_db` VALUES (1612, 'Arc_Wand__', 'Arc Wand', 4, 45000, 0, 400, 60, 0, 1, 0, 99092, 2, 2, 3, 24, 10, NULL, 'bonus bInt,3; bonus bMatkRate,15;');
# fix of Mighty Staff by [BLB] form freya's bug report (bSPDrainRate -> bSPDrainValue)
INSERT INTO `item_db` VALUES (1613, 'Mighty_Staff', 'Mighty Staff', 4, 20, 0, 700, 130, 0, 1, 0, 99092, 2, 2, 3, 24, 10, NULL, 'bonus bStr,10; bonus bMatkRate,15; bonus3 bSPDrainValue,100,-2,0;');
INSERT INTO `item_db` VALUES (1614, 'Blessed_Wand', 'Wand of Occult', 4, 20, 0, 700, 75, 0, 1, 0, 99092, 2, 2, 3, 24, 10, NULL, 'bonus bInt,3; bonus bMatkRate,15;');
INSERT INTO `item_db` VALUES (1615, 'Bone_Wand', 'Bone Wand', 4, 20, 0, 700, 40, 0, 1, 0, 99092, 2, 2, 3, 24, 10, NULL, 'bonus bInt,4; bonus bAtkEle,9; bonus bMatkRate,15;');
INSERT INTO `item_db` VALUES (1616, 'Staff_of_Wing', 'Staff of Wing', 4, 86000, 0, 500, 60, 0, 1, 0, 66052, 2, 2, 4, 40, 10, NULL, 'bonus bMatkRate,15; bonus bCastrate,-5;');
INSERT INTO `item_db` VALUES (1617, 'Wand_of_Survival', 'Wand of Survival', 4, 86000, 0, 1000, 50, 0, 1, 0, 99092, 2, 2, 3, 24, 10, NULL, 'bonus bDex,3; bonus bMatkRate,15; bonus bMaxHP,300;');
INSERT INTO `item_db` VALUES (1618, 'Wand_of_Survival', 'Wand of Survival', 4, 86000, 0, 1000, 50, 0, 1, 1, 99092, 2, 2, 3, 24, 10, NULL, 'bonus bDex,3; bonus bMatkRate,15; bonus bMaxHP,400;');
INSERT INTO `item_db` VALUES (1619, 'Wand_of_Survival', 'Wand of Survival', 4, 86000, 0, 1000, 50, 0, 1, 0, 99092, 2, 2, 3, 24, 10, NULL, 'bonus bInt,3; bonus bMatkRate,15; bonus bMaxHP,300;');
INSERT INTO `item_db` VALUES (1620, 'Wand_of_Survival', 'Wand of Survival', 4, 86000, 0, 1000, 50, 0, 1, 1, 99092, 2, 2, 3, 24, 10, NULL, 'bonus bInt,3; bonus bMatkRate,15; bonus bMaxHP,400;');
INSERT INTO `item_db` VALUES (1621, 'Wand_of_Hypnotist', 'Wand of Hypnotist', 4, 86000, 0, 500, 70, 0, 1, 1, 8388609, 2, 2, 3, 30, 10, NULL, 'bonus bInt,1; bonus bMatkRate,25;');
INSERT INTO `item_db` VALUES (1622, 'Wand_of_Hypnotist', 'Wand of Hypnotist', 4, 86000, 0, 500, 70, 0, 1, 2, 8388609, 2, 2, 3, 30, 10, NULL, 'bonus bInt,1; bonus bMatkRate,25;');

# Bows
INSERT INTO `item_db` VALUES (1701, 'Bow', 'Bow', 4, 1000, 0, 500, 15, 0, 5, 3, 1706056, 2, 34, 1, 4, 11, NULL, NULL);
INSERT INTO `item_db` VALUES (1702, 'Bow_', 'Bow', 4, 1000, 0, 500, 15, 0, 5, 4, 1706056, 2, 34, 1, 4, 11, NULL, NULL);
INSERT INTO `item_db` VALUES (1703, 'Bow__', 'Bow', 4, 1000, 0, 500, 15, 0, 5, 0, 1706056, 2, 34, 1, 4, 11, NULL, NULL);
INSERT INTO `item_db` VALUES (1704, 'Composite_Bow', 'Composite Bow', 4, 2500, 0, 600, 29, 0, 5, 3, 1706056, 2, 34, 1, 4, 11, NULL, NULL);
INSERT INTO `item_db` VALUES (1705, 'Composite_Bow_', 'Composite Bow', 4, 2500, 0, 600, 29, 0, 5, 4, 1706056, 2, 34, 1, 4, 11, NULL, NULL);
INSERT INTO `item_db` VALUES (1706, 'Composite_Bow__', 'Composite Bow', 4, 2500, 0, 600, 29, 0, 5, 0, 1706056, 2, 34, 1, 4, 11, NULL, NULL);
INSERT INTO `item_db` VALUES (1707, 'Great_Bow', 'Great Bow', 4, 10000, 0, 1000, 50, 0, 5, 2, 1706056, 2, 34, 2, 18, 11, NULL, NULL);
INSERT INTO `item_db` VALUES (1708, 'Great_Bow_', 'Great Bow', 4, 10000, 0, 1000, 50, 0, 5, 3, 1706056, 2, 34, 2, 18, 11, NULL, NULL);
INSERT INTO `item_db` VALUES (1709, 'Great_Bow__', 'Great Bow', 4, 10000, 0, 1000, 50, 0, 5, 0, 1706056, 2, 34, 2, 18, 11, NULL, NULL);
INSERT INTO `item_db` VALUES (1710, 'CrossBow', 'Cross Bow', 4, 17000, 0, 900, 65, 0, 5, 2, 1706056, 2, 34, 2, 18, 11, NULL, NULL);
INSERT INTO `item_db` VALUES (1711, 'CrossBow_', 'Cross Bow', 4, 17000, 0, 900, 65, 0, 5, 3, 1706056, 2, 34, 2, 18, 11, NULL, NULL);
INSERT INTO `item_db` VALUES (1712, 'CrossBow__', 'Cross Bow', 4, 17000, 0, 900, 65, 0, 5, 0, 1706056, 2, 34, 2, 18, 11, NULL, NULL);
INSERT INTO `item_db` VALUES (1713, 'Arbalest', 'Arbalest', 4, 48000, 0, 1000, 90, 0, 5, 1, 1706056, 2, 34, 3, 33, 11, NULL, 'bonus bDex,2;');
INSERT INTO `item_db` VALUES (1714, 'Gakkung', 'Gakkung', 4, 42000, 0, 1100, 100, 0, 5, 1, 1706056, 2, 34, 3, 33, 11, NULL, NULL);
INSERT INTO `item_db` VALUES (1715, 'Arbalest_', 'Arbalest', 4, 48000, 0, 1000, 90, 0, 5, 2, 1706056, 2, 34, 3, 33, 11, NULL, 'bonus bDex,2;');
INSERT INTO `item_db` VALUES (1716, 'Gakkung_', 'Gakkung', 4, 42000, 0, 1100, 100, 0, 5, 2, 1706056, 2, 34, 3, 33, 11, NULL, NULL);

INSERT INTO `item_db` VALUES (1718, 'Hunter_Bow', 'Hunter Bow', 4, 64000, 0, 1500, 125, 0, 5, 0, 2048, 2, 34, 3, 33, 11, NULL, NULL);
INSERT INTO `item_db` VALUES (1719, 'Bow_of_Roguemaster', 'Roguemaster\'s Bow', 4, 20, 0, 500, 75, 0, 11, 0, 131136, 2, 34, 4, 48, 11, NULL, NULL);
INSERT INTO `item_db` VALUES (1720, 'Bow_of_Rudra', 'Rudra\'s Bow', 4, 20, 0, 1200, 150, 0, 5, 0, 1705992, 2, 34, 4, 48, 11, NULL, 'bonus bAtkEle,6; bonus bInt,5; skill 35,1; skill 28,1; bonus2 bResEff,Eff_Poison,5000; bonus2 bResEff,Eff_Curse,5000; bonus2 bResEff,Eff_Silence,5000; bonus2 bResEff,Eff_Confusion,5000; bonus2 bResEff,Eff_Blind,5000;');
INSERT INTO `item_db` VALUES (1721, 'Repeating_Crossbow', 'Repeating Crossbow', 4, 89000, 0, 2000, 95, 0, 9, 1, 133184, 2, 34, 3, 65, 11, NULL, NULL);
INSERT INTO `item_db` VALUES (1722, 'Ballista', 'Ballista', 4, 20, 0, 3500, 145, 0, 5, 0, 1574912, 2, 34, 4, 77, 11, NULL, NULL);
# Should be with get refine, still unsupported
#1723,Lunar_Bow,Lunar Bow,4,20,0,2000,100,,5,0,2048,2,34,3,30,11,{},{ bonus bDef,2+3*(getrefine()>9)+(getrefine()>6 && getrefine()<=9); }
INSERT INTO `item_db` VALUES (1723, 'Lunar_Bow', 'Lunar Bow', 4, 20, 0, 2000, 100, 0, 5, 0, 2048, 2, 34, 3, 30, 11, NULL, NULL);
INSERT INTO `item_db` VALUES (1724, 'Dragon_Wing', 'Dragon Wing', 4, 20, 0, 1200, 100, 0, 5, 0, 1706056, 2, 34, 4, 60, 11, NULL, 'bonus3 bAddMonsterDropItem,1765,9,300; bonus bIgnoreDefRace,9; bonus bAtkEle,0;');

# Arrows
INSERT INTO `item_db` VALUES (1750, 'Arrow', 'Arrow', 10, 1, 0, 1, 25, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1751, 'Silver_Arrow', 'Silver Arrow', 10, 3, 0, 2, 30, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, 'bonus bAtkEle,6;');
INSERT INTO `item_db` VALUES (1752, 'Fire_Arrow', 'Fire Arrow', 10, 3, 0, 2, 30, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, 'bonus bAtkEle,3;');
INSERT INTO `item_db` VALUES (1753, 'Steel_Arrow', 'Steel Arrow', 10, 3, 0, 2, 40, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1754, 'Crystal_Arrow', 'Crystal Arrow', 10, 3, 0, 2, 30, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, 'bonus bAtkEle,1;');
INSERT INTO `item_db` VALUES (1755, 'Arrow_of_Wind', 'Arrow of Wind', 10, 3, 0, 2, 30, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, 'bonus bAtkEle,4;');
INSERT INTO `item_db` VALUES (1756, 'Stone_Arrow', 'Stone Arrow', 10, 3, 0, 2, 30, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, 'bonus bAtkEle,2;');
INSERT INTO `item_db` VALUES (1757, 'Immaterial_Arrow', 'Immaterial Arrow', 10, 3, 0, 1, 30, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, 'bonus bAtkEle,8;');
INSERT INTO `item_db` VALUES (1758, 'Stun_Arrow', 'Stun Arrow', 10, 3, 0, 3, 1, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, 'bonus2 bAddEff,Eff_Stan,500;');
INSERT INTO `item_db` VALUES (1759, 'Freezing_Arrow', 'Freeze Arrow', 10, 3, 0, 3, 1, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, 'bonus bAtkEle,1; bonus2 bAddEff,Eff_Freeze,500;');
INSERT INTO `item_db` VALUES (1760, 'Flash_Arrow', 'Flash Arrow', 10, 3, 0, 3, 1, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, 'bonus2 bAddEff,Eff_Blind,500;');
INSERT INTO `item_db` VALUES (1761, 'Curse_Arrow', 'Curse Arrow', 10, 3, 0, 3, 1, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, 'bonus2 bAddEff,Eff_Curse,500;');
INSERT INTO `item_db` VALUES (1762, 'Rusty_Arrow', 'Rusted Arrow', 10, 3, 0, 2, 30, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, 'bonus bAtkEle,5;');
INSERT INTO `item_db` VALUES (1763, 'Poison_Arrow', 'Poison Arrow', 10, 3, 0, 3, 1, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, 'bonus bAtkEle,5; bonus2 bAddEff,Eff_Poison,500;');
INSERT INTO `item_db` VALUES (1764, 'Incisive_Arrow', 'Sharp Arrow', 10, 3, 0, 3, 10, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, 'bonus bCritical,10;');
INSERT INTO `item_db` VALUES (1765, 'Oridecon_Arrow', 'Oridecon Arrow', 10, 3, 0, 3, 50, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1766, 'Arrow_of_Counter_Evil', 'Arrow of Counter Evil', 10, 40, 0, 3, 50, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, 'bonus bAtkEle,6;');
INSERT INTO `item_db` VALUES (1767, 'Arrow_of_Shadow', 'Shadow Arrow', 10, 3, 0, 2, 30, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, 'bonus bAtkEle,7;');
INSERT INTO `item_db` VALUES (1768, 'Sleep_Arrow', 'Sleep Arrow', 10, 3, 0, 3, 1, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, 'bonus2 bAddEff,Eff_Sleep,500;');
INSERT INTO `item_db` VALUES (1769, 'Silence_Arrow', 'Mute Arrow', 10, 3, 0, 3, 1, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, 'bonus2 bAddEff,Eff_Silence,500;');
INSERT INTO `item_db` VALUES (1770, 'Iron_Arrow', 'Iron Arrow', 10, 2, 0, 1, 30, 0, 0, 0, 1706056, 2, 32768, 0, 1, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1771, 'Venom_Knife', 'Venom Knife', 10, 0, 10, 10, 30, 0, 0, 0, 4096, 2, 32768, 0, 1, 0, NULL, NULL);

# Knuckles
INSERT INTO `item_db` VALUES (1801, 'Waghnakh', 'Waghnakh', 4, 8000, 0, 400, 30, 0, 1, 3, 33024, 2, 2, 1, 1, 12, NULL, NULL);
INSERT INTO `item_db` VALUES (1802, 'Waghnakh_', 'Waghnakh', 4, 8000, 0, 400, 30, 0, 1, 4, 33024, 2, 2, 1, 1, 12, NULL, NULL);
INSERT INTO `item_db` VALUES (1803, 'Knuckle_Duster', 'Knuckle Duster', 4, 25000, 0, 450, 50, 0, 1, 2, 33024, 2, 2, 2, 12, 12, NULL, NULL);
INSERT INTO `item_db` VALUES (1804, 'Knuckle_Duster_', 'Knuckle Duster', 4, 25000, 0, 450, 50, 0, 1, 3, 33024, 2, 2, 2, 12, 12, NULL, NULL);
INSERT INTO `item_db` VALUES (1805, 'Hora', 'Hora', 4, 32000, 0, 450, 65, 0, 1, 2, 33024, 2, 2, 2, 12, 12, NULL, NULL);
INSERT INTO `item_db` VALUES (1806, 'Hora_', 'Hora', 4, 32000, 0, 450, 65, 0, 1, 3, 33024, 2, 2, 2, 12, 12, NULL, NULL);
INSERT INTO `item_db` VALUES (1807, 'Fist', 'Fist', 4, 53000, 0, 650, 115, 0, 1, 0, 33024, 2, 2, 3, 24, 12, NULL, NULL);
INSERT INTO `item_db` VALUES (1808, 'Fist_', 'Fist', 4, 53000, 0, 650, 115, 0, 1, 1, 33024, 2, 2, 3, 24, 12, NULL, NULL);
INSERT INTO `item_db` VALUES (1809, 'Claw', 'Claw', 4, 67000, 0, 500, 86, 0, 1, 1, 33024, 2, 2, 3, 24, 12, NULL, 'bonus bStr,2;');
INSERT INTO `item_db` VALUES (1810, 'Claw_', 'Claw', 4, 67000, 0, 500, 86, 0, 1, 2, 33024, 2, 2, 3, 24, 12, NULL, 'bonus bStr,2;');
INSERT INTO `item_db` VALUES (1811, 'Finger', 'Finger', 4, 58000, 0, 500, 97, 0, 1, 1, 33024, 2, 2, 3, 24, 12, NULL, NULL);
INSERT INTO `item_db` VALUES (1812, 'Finger_', 'Finger', 4, 58000, 0, 500, 97, 0, 1, 2, 33024, 2, 2, 3, 24, 12, NULL, NULL);
INSERT INTO `item_db` VALUES (1813, 'Kaiser_Knuckle', 'Kaiser Knuckle', 4, 20, 0, 450, 110, 0, 1, 0, 33024, 2, 2, 4, 36, 12, NULL, 'bonus bAtkEle,4; bonus2 bAddRace,1,5; bonus2 bAddEle,1,10; bonus2 bAddEle,2,10; bonus2 bAddEle,3,10; bonus2 bAddEle,4,10;');
INSERT INTO `item_db` VALUES (1814, 'Berserk', 'Berserk', 4, 20, 0, 500, 120, 0, 1, 0, 33024, 2, 2, 4, 36, 12, NULL, 'bonus bAspdRate,12;');
INSERT INTO `item_db` VALUES (1815, 'Garm\'s_Claw', 'Garm\'s Claw', 4, 20, 0, 550, 115, 0, 1, 0, 32768, 2, 2, 4, 70, 12, NULL, 'bonus bMaxHPrate,-2; bonus2 bAddEff,Eff_Bleeding,500;');

# Instruments
INSERT INTO `item_db` VALUES (1901, 'Violin', 'Violin', 4, 4000, 0, 700, 50, 0, 1, 3, 524288, 2, 2, 1, 2, 13, NULL, NULL);
INSERT INTO `item_db` VALUES (1902, 'Violin_', 'Violin', 4, 4000, 0, 700, 50, 0, 1, 4, 524288, 2, 2, 1, 2, 13, NULL, NULL);
INSERT INTO `item_db` VALUES (1903, 'Mandolin', 'Mandolin', 4, 18000, 0, 400, 90, 0, 1, 2, 524288, 2, 2, 2, 14, 13, NULL, NULL);
INSERT INTO `item_db` VALUES (1904, 'Mandolin_', 'Mandolin', 4, 18000, 0, 400, 90, 0, 1, 3, 524288, 2, 2, 2, 14, 13, NULL, NULL);
INSERT INTO `item_db` VALUES (1905, 'Lute', 'Lute', 4, 24500, 0, 500, 105, 0, 1, 2, 524288, 2, 2, 2, 14, 13, NULL, NULL);
INSERT INTO `item_db` VALUES (1906, 'Lute_', 'Lute', 4, 24500, 0, 500, 105, 0, 1, 3, 524288, 2, 2, 2, 14, 13, NULL, NULL);
INSERT INTO `item_db` VALUES (1907, 'Guitar', 'Guitar', 4, 47000, 0, 900, 142, 0, 1, 0, 524288, 2, 2, 3, 27, 13, NULL, NULL);
INSERT INTO `item_db` VALUES (1908, 'Guitar_', 'Guitar', 4, 47000, 0, 900, 142, 0, 1, 1, 524288, 2, 2, 3, 27, 13, NULL, NULL);
INSERT INTO `item_db` VALUES (1909, 'Harp', 'Harp', 4, 62000, 0, 900, 114, 0, 1, 1, 524288, 2, 2, 3, 27, 13, NULL, 'bonus bInt,2;');
INSERT INTO `item_db` VALUES (1910, 'Harp_', 'Harp', 4, 62000, 0, 900, 114, 0, 1, 2, 524288, 2, 2, 3, 27, 13, NULL, 'bonus bInt,2;');
INSERT INTO `item_db` VALUES (1911, 'Guh_Moon_Goh', 'Guhmoongoh', 4, 54000, 0, 1300, 126, 0, 1, 1, 524288, 2, 2, 3, 27, 13, NULL, NULL);
INSERT INTO `item_db` VALUES (1912, 'Guh_Moon_Goh_', 'Guhmoongoh', 4, 54000, 0, 1300, 126, 0, 1, 2, 524288, 2, 2, 3, 27, 13, NULL, NULL);
INSERT INTO `item_db` VALUES (1913, 'Electric_Guitar', 'Electric Guitar', 4, 20, 0, 1800, 110, 0, 1, 0, 524288, 2, 2, 4, 70, 13, NULL, 'skill 84,1; bonus4 bAutoSpell,84,1,2500,1; bonus bAtkEle,4; bonus bInt,2; bonus bAgi,1;');
INSERT INTO `item_db` VALUES (1914, 'Guitar_of_Burning', 'Guitar of Passion', 4, 20, 0, 900, 110, 0, 1, 0, 524288, 2, 2, 3, 27, 13, NULL, 'bonus bAtkEle,3;');
INSERT INTO `item_db` VALUES (1915, 'Guitar_of_Lonely_One', 'Guitar of Lonely one', 4, 20, 0, 900, 110, 0, 1, 0, 524288, 2, 2, 3, 27, 13, NULL, 'bonus bAtkEle,1;');
INSERT INTO `item_db` VALUES (1916, 'Guitar_of_Vast_Ground', 'Guitar of Vast Ground', 4, 20, 0, 900, 110, 0, 1, 0, 524288, 2, 2, 3, 27, 13, NULL, 'bonus bAtkEle,2;');
INSERT INTO `item_db` VALUES (1917, 'Guitar_of_Breeze', 'Guitar of Breeze', 4, 20, 0, 900, 110, 0, 1, 0, 524288, 2, 2, 3, 27, 13, NULL, 'bonus bAtkEle,4;');
INSERT INTO `item_db` VALUES (1918, 'Korean_Mandolin', 'Korean Mandolin', 4, 20, 0, 1200, 150, 0, 1, 0, 524288, 2, 2, 4, 65, 13, NULL, 'bonus2 bSkillAtk,394,10; bonus2 bSkillAtk,316,10;');

# Whips
INSERT INTO `item_db` VALUES (1950, 'Rope', 'Rope', 4, 2500, 0, 400, 45, 0, 2, 3, 1048576, 2, 2, 1, 3, 14, NULL, NULL);
INSERT INTO `item_db` VALUES (1951, 'Rope_', 'Rope', 4, 2500, 0, 400, 45, 0, 2, 4, 1048576, 2, 2, 1, 3, 14, NULL, NULL);
INSERT INTO `item_db` VALUES (1952, 'Line', 'Line', 4, 12000, 0, 300, 80, 0, 2, 2, 1048576, 2, 2, 2, 16, 14, NULL, NULL);
INSERT INTO `item_db` VALUES (1953, 'Line_', 'Line', 4, 12000, 0, 300, 80, 0, 2, 3, 1048576, 2, 2, 2, 16, 14, NULL, NULL);
INSERT INTO `item_db` VALUES (1954, 'Wire', 'Wire', 4, 17500, 0, 1000, 95, 0, 2, 2, 1048576, 2, 2, 2, 16, 14, NULL, NULL);
INSERT INTO `item_db` VALUES (1955, 'Wire_', 'Wire', 4, 17500, 0, 1000, 95, 0, 2, 3, 1048576, 2, 2, 2, 16, 14, NULL, NULL);
INSERT INTO `item_db` VALUES (1956, 'Rante_Whip', 'Rante Whip', 4, 32000, 0, 900, 135, 0, 2, 0, 1048576, 2, 2, 3, 30, 14, NULL, NULL);
INSERT INTO `item_db` VALUES (1957, 'Rante_Whip_', 'Rante Whip', 4, 32000, 0, 900, 135, 0, 2, 1, 1048576, 2, 2, 3, 30, 14, NULL, NULL);
INSERT INTO `item_db` VALUES (1958, 'Tail', 'Tail', 4, 41000, 0, 700, 105, 0, 2, 1, 1048576, 2, 2, 3, 30, 14, NULL, 'bonus bLuk,3;');
INSERT INTO `item_db` VALUES (1959, 'Tail_', 'Tail', 4, 41000, 0, 700, 105, 0, 2, 2, 1048576, 2, 2, 3, 30, 14, NULL, 'bonus bLuk,3;');
INSERT INTO `item_db` VALUES (1960, 'Whip', 'Whip', 4, 38000, 0, 700, 120, 0, 2, 1, 1048576, 2, 2, 3, 30, 14, NULL, NULL);
INSERT INTO `item_db` VALUES (1961, 'Whip_', 'Whip', 4, 38000, 0, 700, 120, 0, 2, 2, 1048576, 2, 2, 3, 30, 14, NULL, NULL);
INSERT INTO `item_db` VALUES (1962, 'Lariat', 'Lariat', 4, 20, 0, 400, 100, 0, 2, 0, 1048576, 2, 2, 4, 44, 14, NULL, 'bonus bDex,5; bonus bAgi,1;');
INSERT INTO `item_db` VALUES (1963, 'Rapture_Rose', 'Rapture Rose', 4, 20, 0, 300, 115, 0, 2, 0, 1048576, 2, 2, 4, 44, 14, NULL, 'bonus bAtkEle,5; bonus2 bAddEff,Eff_Poison,5000;');
INSERT INTO `item_db` VALUES (1964, 'Chemeti', 'Chemeti', 4, 20, 0, 700, 135, 0, 2, 0, 1048576, 2, 2, 4, 44, 14, NULL, 'bonus bCritical,5; bonus bFlee,10; bonus bFlee2,2;');
INSERT INTO `item_db` VALUES (1965, 'Whip_of_Scarlet_Flame', 'Whip of Scarlet Flame', 4, 20, 0, 700, 110, 0, 2, 0, 1048576, 2, 2, 3, 30, 14, NULL, 'bonus bAtkEle,3;');
INSERT INTO `item_db` VALUES (1966, 'Whip_of_Icy_Blade', 'Whip of Icy Blade', 4, 20, 0, 700, 110, 0, 2, 0, 1048576, 2, 2, 3, 30, 14, NULL, 'bonus bAtkEle,1;');
INSERT INTO `item_db` VALUES (1967, 'Whip_of_Earth', 'Whip of Earth', 4, 20, 0, 700, 110, 0, 2, 0, 1048576, 2, 2, 3, 30, 14, NULL, 'bonus bAtkEle,2;');
INSERT INTO `item_db` VALUES (1968, 'Jumprope', 'Jumprope', 4, 20, 0, 400, 120, 0, 2, 0, 1048576, 2, 2, 3, 30, 14, NULL, 'bonus bCriticalRate,20;');
INSERT INTO `item_db` VALUES (1969, 'Blade_Whip', 'Blade Whip', 4, 20, 0, 1200, 140, 0, 2, 0, 1048576, 2, 2, 4, 30, 14, NULL, 'bonus2 bAddEff,Eff_Bleeding,500;');
INSERT INTO `item_db` VALUES (1970, 'Queen\'s_Whip', 'Queen\'s Whip', 4, 20, 0, 1100, 150, 0, 2, 0, 1048576, 2, 2, 4, 65, 14, NULL, 'bonus2 bSkillAtk,394,10; bonus2 bSkillAtk,324,10;');
INSERT INTO `item_db` VALUES (1971, 'Electric_Wire', 'Electric Wire', 4, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL); #(Wire, cable, cord... whatever),,

INSERT INTO `item_db` VALUES (1998, 'Jeramiah\'s_Jur', 'Jeramiah\'s Jur', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (1999, 'Zed\'s_Staff', 'Zed\'s Staff', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

# Shields
INSERT INTO `item_db` VALUES (2101, 'Guard', 'Guard', 5, 500, 0, 300, 0, 3, 0, 0, 27254783, 2, 32, 0, 0, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (2102, 'Guard_', 'Guard', 5, 500, 0, 300, 0, 3, 0, 1, 27254783, 2, 32, 0, 0, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (2103, 'Buckler', 'Buckler', 5, 14000, 0, 600, 0, 4, 0, 0, 2020850, 2, 32, 0, 0, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (2104, 'Buckler_', 'Buckler', 5, 14000, 0, 600, 0, 4, 0, 1, 2020850, 2, 32, 0, 0, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (2105, 'Shield', 'Shield', 5, 56000, 0, 1300, 0, 6, 0, 0, 16514, 2, 32, 0, 0, 3, NULL, NULL);
INSERT INTO `item_db` VALUES (2106, 'Shield_', 'Shield', 5, 56000, 0, 1300, 0, 6, 0, 1, 16514, 2, 32, 0, 0, 3, NULL, NULL);
INSERT INTO `item_db` VALUES (2107, 'Mirror_Shield', 'Mirror Shield', 5, 60000, 0, 1000, 0, 4, 0, 0, 16514, 2, 32, 0, 0, 4, NULL, 'bonus bMdef,5;');
INSERT INTO `item_db` VALUES (2108, 'Mirror_Shield_', 'Mirror Shield', 5, 60000, 0, 1000, 0, 4, 0, 1, 16514, 2, 32, 0, 0, 4, NULL, 'bonus bMdef,5;');
INSERT INTO `item_db` VALUES (2109, 'Memorize_Book', 'Book of Summoning', 5, 20, 0, 1000, 0, 3, 0, 0, 66052, 2, 32, 0, 0, 0, NULL, 'bonus bInt,1; bonus bMdef,2;');
INSERT INTO `item_db` VALUES (2110, 'Holy_Guard', 'Holy Guard', 5, 20, 0, 1400, 0, 5, 0, 0, 16384, 2, 32, 0, 68, 3, NULL, 'bonus bVit,2; bonus bMdef,2;');
INSERT INTO `item_db` VALUES (2111, 'Evangelist', 'Evangelist', 5, 20, 0, 1400, 0, 5, 0, 0, 16384, 2, 32, 0, 83, 3, NULL, 'bonus bVit,3; bonus bInt,2; bonus bMdef,3; bonus bUnbreakableShield,0;');
INSERT INTO `item_db` VALUES (2112, 'Novice_Guard', 'Novice Guard', 5, 20, 0, 1, 0, 3, 0, 0, 8388609, 2, 32, 0, 0, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (2113, 'Novice_Shield', 'Novice Shield', 5, 20, 0, 1000, 0, 3, 0, 1, 8388609, 2, 32, 0, 40, 3, NULL, 'bonus2 bSubEle,1,20; bonus2 bSubEle,2,20; bonus2 bSubEle,3,20; bonus2 bSubEle,4,20; bonus2 bSubEle,5,20; bonus2 bSubEle,8,20; bonus2 bSubEle,9,20;');
INSERT INTO `item_db` VALUES (2114, 'Stone_Buckler', 'Stone_Buckler', 5, 20, 0, 1500, 0, 4, 0, 1, 18866174, 2, 32, 0, 65, 2, NULL, 'bonus2 bSubEle,0,5; if(GetPureJob == Job_Swordman) bonus bDef,5; if (isequipped(2353,5122)==0) end; bonus bStr,2; bonus bDef,5; bonus bMdef,5;');
INSERT INTO `item_db` VALUES (2115, 'Valkyrie_Shield', 'Valkyrie Shield', 5, 20, 0, 500, 0, 3, 0, 1, 18866174, 2, 32, 0, 65, 3, NULL, 'bonus2 bSubEle,1,20; bonus2 bSubEle,3,20; bonus2 bSubEle,7,20; bonus2 bSubEle,9,20; if(isequipped(2353,5124)==0) bonus bMdef,5; end; bonus bDef,2; bonus bMdef,25;');
INSERT INTO `item_db` VALUES (2116, 'Angel_Guard', 'Angel\'s Guard', 5, 20, 0, 500, 0, 3, 0, 1, 8388609, 2, 32, 0, 20, 3, NULL, 'bonus2 bSubRace,5,5;');

INSERT INTO `item_db` VALUES (2199, 'Ahura_Mazda', 'Ahura Mazda', 5, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 32, 0, 0, 1, NULL, 'bonus bShortWeaponDamageReturn,100; bonus2 bSubRace,7,95;');

# Headgear items
INSERT INTO `item_db` VALUES (2201, 'Sunglasses', 'Sunglasses', 5, 5000, 0, 100, 0, 0, 0, 0, 27254783, 2, 512, 0, 0, 12, NULL, 'bonus2 bResEff,Eff_Blind,500;');
INSERT INTO `item_db` VALUES (2202, 'Sunglasses_', 'Sunglasses', 5, 5000, 0, 100, 0, 0, 0, 1, 27254783, 2, 512, 0, 0, 12, NULL, 'bonus2 bResEff,Eff_Blind,500;');
INSERT INTO `item_db` VALUES (2203, 'Glasses', 'Glasses', 5, 4000, 0, 100, 0, 0, 0, 0, 27254783, 2, 512, 0, 0, 3, NULL, NULL);
INSERT INTO `item_db` VALUES (2204, 'Glasses_', 'Glasses', 5, 4000, 0, 100, 0, 0, 0, 1, 27254783, 2, 512, 0, 0, 3, NULL, NULL);
INSERT INTO `item_db` VALUES (2205, 'Diver\'s_Goggles', 'Diver Goggles', 5, 3500, 0, 100, 0, 0, 0, 0, 27254783, 2, 512, 0, 0, 10, NULL, NULL);
INSERT INTO `item_db` VALUES (2206, 'Wedding_Veil', 'Wedding Veil', 5, 23000, 0, 100, 0, 0, 0, 0, 27254783, 0, 256, 0, 0, 44, NULL, 'bonus bMdef,5;');
INSERT INTO `item_db` VALUES (2207, 'Fancy_Flower', 'Fancy Flower', 5, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 256, 0, 0, 4, NULL, 'bonus2 bSubRace,3,10;');
INSERT INTO `item_db` VALUES (2208, 'Ribbon', 'Ribbon', 5, 800, 0, 100, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 17, NULL, 'bonus bMdef,3;');
INSERT INTO `item_db` VALUES (2209, 'Ribbon_', 'Ribbon', 5, 800, 0, 100, 0, 1, 0, 1, 27254783, 2, 256, 0, 0, 17, NULL, 'bonus bMdef,3;');
INSERT INTO `item_db` VALUES (2210, 'Hair_Band', 'Hair Band', 5, 500, 0, 100, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 9, NULL, NULL);
INSERT INTO `item_db` VALUES (2211, 'Bandana', 'Bandana', 5, 400, 0, 100, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 6, NULL, NULL);
INSERT INTO `item_db` VALUES (2212, 'Eye_Bandage', 'Eye Patch', 5, 1000, 0, 100, 0, 0, 0, 0, 27254783, 2, 512, 0, 0, 13, NULL, NULL);
INSERT INTO `item_db` VALUES (2213, 'Kitty_Band', 'Kitty Band', 5, 20, 0, 100, 0, 2, 0, 0, 27254783, 2, 256, 0, 0, 2, NULL, NULL);
INSERT INTO `item_db` VALUES (2214, 'Bunny_Band', 'Bunny Band', 5, 20, 0, 100, 0, 2, 0, 0, 27254783, 2, 256, 0, 0, 15, NULL, 'bonus bLuk,2;');
INSERT INTO `item_db` VALUES (2215, 'Flower_Hairband', 'Flower Band', 5, 20, 0, 100, 0, 2, 0, 0, 27254783, 2, 256, 0, 0, 5, NULL, NULL);
INSERT INTO `item_db` VALUES (2216, 'Biretta', 'Biretta', 5, 9000, 0, 100, 0, 4, 0, 0, 33040, 2, 256, 0, 0, 11, NULL, NULL);
INSERT INTO `item_db` VALUES (2217, 'Biretta_', 'Biretta', 5, 9000, 0, 100, 0, 4, 0, 1, 33040, 2, 256, 0, 0, 11, NULL, NULL);
INSERT INTO `item_db` VALUES (2218, 'Flu_Mask', 'Flu Mask', 5, 300, 0, 100, 0, 0, 0, 0, 27254783, 2, 1, 0, 0, 8, NULL, 'bonus2 bResEff,Eff_Silence,1000;');
INSERT INTO `item_db` VALUES (2219, 'Flu_Mask_', 'Flu Mask', 5, 300, 0, 100, 0, 0, 0, 1, 27254783, 2, 1, 0, 0, 8, NULL, 'bonus2 bResEff,Eff_Silence,1000;');
INSERT INTO `item_db` VALUES (2220, 'Hat', 'Hat', 5, 1000, 0, 200, 0, 2, 0, 0, 27254783, 2, 256, 0, 0, 16, NULL, NULL);
INSERT INTO `item_db` VALUES (2221, 'Hat_', 'Hat', 5, 1000, 0, 200, 0, 2, 0, 1, 27254783, 2, 256, 0, 0, 16, NULL, NULL);
INSERT INTO `item_db` VALUES (2222, 'Turban', 'Turban', 5, 4500, 0, 300, 0, 3, 0, 0, 18866174, 2, 256, 0, 0, 7, NULL, NULL);
INSERT INTO `item_db` VALUES (2223, 'Turban_', 'Turban', 5, 4500, 0, 300, 0, 3, 0, 1, 18866174, 2, 256, 0, 0, 7, NULL, NULL);
INSERT INTO `item_db` VALUES (2224, 'Goggles', 'Goggles', 5, 10000, 0, 300, 0, 5, 0, 0, 1989866, 2, 768, 0, 0, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (2225, 'Goggles_', 'Goggles', 5, 10000, 0, 300, 0, 5, 0, 1, 1989866, 2, 768, 0, 0, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (2226, 'Cap', 'Cap', 5, 12000, 0, 400, 0, 4, 0, 0, 1989866, 2, 256, 0, 0, 14, NULL, NULL);
INSERT INTO `item_db` VALUES (2227, 'Cap_', 'Cap', 5, 12000, 0, 400, 0, 4, 0, 1, 1989866, 2, 256, 0, 0, 14, NULL, NULL);
INSERT INTO `item_db` VALUES (2228, 'Helm', 'Helm', 5, 44000, 0, 600, 0, 6, 0, 0, 16514, 2, 256, 0, 0, 40, NULL, NULL);
INSERT INTO `item_db` VALUES (2229, 'Helm_', 'Helm', 5, 44000, 0, 600, 0, 6, 0, 1, 16514, 2, 256, 0, 0, 40, NULL, NULL);
INSERT INTO `item_db` VALUES (2230, 'Gemmed_Sallet', 'Gemmed Sallet', 5, 50000, 0, 500, 0, 4, 0, 0, 414946, 2, 256, 0, 0, 0, NULL, 'bonus bMdef,3;');
INSERT INTO `item_db` VALUES (2231, 'Gemmed_Sallet_', 'Gemmed Sallet', 5, 50000, 0, 500, 0, 4, 0, 1, 414946, 2, 256, 0, 0, 0, NULL, 'bonus bMdef,3;');
INSERT INTO `item_db` VALUES (2232, 'Circlet', 'Circlet', 5, 7500, 0, 300, 0, 3, 0, 0, 99092, 2, 256, 0, 0, 18, NULL, 'bonus bMdef,3;');
INSERT INTO `item_db` VALUES (2233, 'Circlet_', 'Circlet', 5, 7500, 0, 300, 0, 3, 0, 1, 99092, 2, 256, 0, 0, 18, NULL, 'bonus bMdef,3;');
INSERT INTO `item_db` VALUES (2234, 'Tiara', 'Tiara', 5, 20, 0, 400, 0, 4, 0, 0, 18866174, 0, 256, 0, 45, 19, NULL, 'bonus bInt,2;');
INSERT INTO `item_db` VALUES (2235, 'Crown', 'Crown', 5, 20, 0, 400, 0, 4, 0, 0, 27254783, 1, 256, 0, 45, 45, NULL, 'bonus bInt,2;');
INSERT INTO `item_db` VALUES (2236, 'Santa\'s_Hat', 'Santa\'s Hat', 5, 20, 0, 100, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 20, NULL, 'bonus bMdef,1; bonus bLuk,1;');
INSERT INTO `item_db` VALUES (2237, 'Bandit_Beard', 'Bandit Beard', 5, 2, 0, 100, 0, 0, 0, 0, 27254783, 2, 1, 0, 0, 21, NULL, NULL);
INSERT INTO `item_db` VALUES (2238, 'Moustache', 'Moustache', 5, 2, 0, 100, 0, 0, 0, 0, 27254783, 2, 1, 0, 0, 22, NULL, NULL);
INSERT INTO `item_db` VALUES (2239, 'Single_Glass', 'Single Glass', 5, 10000, 0, 100, 0, 0, 0, 0, 27254783, 2, 512, 0, 0, 23, NULL, NULL);
INSERT INTO `item_db` VALUES (2240, 'Beard', 'Beard', 5, 2, 0, 100, 0, 0, 0, 0, 27254783, 2, 1, 0, 0, 24, NULL, NULL);
INSERT INTO `item_db` VALUES (2241, 'Granpa_Beard', 'Granpa Beard', 5, 5000, 0, 100, 0, 0, 0, 0, 27254783, 2, 1, 0, 0, 25, NULL, NULL);
INSERT INTO `item_db` VALUES (2242, 'Purple_Sunglasses', 'Purple Glasses', 5, 24000, 0, 100, 0, 1, 0, 0, 27254783, 2, 512, 0, 0, 26, NULL, 'bonus2 bResEff,Eff_Blind,1000;');
INSERT INTO `item_db` VALUES (2243, 'Geek_Glasses', 'Geek Glasses', 5, 20000, 0, 100, 0, 1, 0, 0, 27254783, 2, 512, 0, 0, 27, NULL, 'bonus2 bResEff,Eff_Blind,1500;');
INSERT INTO `item_db` VALUES (2244, 'Big_Ribbon', 'Big Ribbon', 5, 15000, 0, 200, 0, 2, 0, 0, 18866174, 2, 256, 0, 0, 28, NULL, 'bonus bMdef,3;');
INSERT INTO `item_db` VALUES (2245, 'Sweet_Gent', 'Sweet Gent', 5, 15000, 0, 400, 0, 3, 0, 0, 18866174, 2, 256, 0, 0, 29, NULL, NULL);
INSERT INTO `item_db` VALUES (2246, 'Golden_Gear', 'Golden Gear', 5, 20, 0, 900, 0, 5, 0, 0, 18866174, 2, 256, 0, 40, 30, NULL, NULL);
INSERT INTO `item_db` VALUES (2247, 'Romantic_Gent', 'Romantic Gent', 5, 15000, 0, 400, 0, 3, 0, 0, 18866174, 2, 256, 0, 0, 31, NULL, NULL);
INSERT INTO `item_db` VALUES (2248, 'Western_Grace', 'Western Grace', 5, 15000, 0, 400, 0, 3, 0, 0, 18866174, 2, 256, 0, 0, 32, NULL, NULL);
INSERT INTO `item_db` VALUES (2249, 'Coronet', 'Coronet', 5, 20, 0, 300, 0, 3, 0, 0, 18866174, 2, 256, 0, 0, 33, NULL, 'bonus bInt,1;');
INSERT INTO `item_db` VALUES (2250, 'Fillet', 'Cute Ribbon', 5, 500, 0, 100, 0, 1, 0, 0, 18866174, 2, 256, 0, 0, 34, NULL, 'bonus bMaxSP,20;');
INSERT INTO `item_db` VALUES (2251, 'Holy_Bonnet', 'Monk Hat', 5, 30000, 0, 100, 0, 5, 0, 0, 33040, 2, 256, 0, 0, 35, NULL, 'bonus bMdef,3;');
INSERT INTO `item_db` VALUES (2252, 'Wizard_Hat', 'Wizard Hat', 5, 20, 0, 300, 0, 4, 0, 0, 66052, 2, 256, 0, 0, 36, NULL, 'bonus bMaxSP,100;');
INSERT INTO `item_db` VALUES (2253, 'Sunflower', 'Sunflower', 5, 20, 0, 100, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 37, NULL, 'bonus2 bSubRace,4,10;');
INSERT INTO `item_db` VALUES (2254, 'Angel_Wing', 'Angel Wing', 5, 20, 0, 100, 0, 2, 0, 0, 18866174, 2, 256, 0, 0, 38, NULL, 'bonus bMdef,3; bonus bAgi,1; bonus bLuk,1; bonus2 bSubRace,6,3;');
INSERT INTO `item_db` VALUES (2255, 'Evil_Wing', 'Evil Wing', 5, 20, 0, 100, 0, 3, 0, 0, 18866174, 2, 256, 0, 0, 39, NULL, 'bonus bMdef,2; bonus bStr,1; bonus2 bSubRace,8,3;');
INSERT INTO `item_db` VALUES (2256, 'Majestic_Goat', 'Majestic Goat', 5, 20, 0, 800, 0, 5, 0, 0, 17056930, 2, 256, 0, 0, 41, NULL, 'bonus bStr,1;');
INSERT INTO `item_db` VALUES (2257, 'Snow_Horn', 'Snow Horn', 5, 20, 0, 100, 0, 2, 0, 0, 27254783, 2, 256, 0, 0, 42, NULL, NULL);
INSERT INTO `item_db` VALUES (2258, 'Spiky_Band', 'Spiky Band', 5, 20, 0, 1000, 0, 6, 0, 0, 17225202, 2, 256, 0, 50, 43, NULL, NULL);
INSERT INTO `item_db` VALUES (2259, 'Mini_Propeller', 'Mini Propeller', 5, 20, 0, 100, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 46, NULL, NULL);
INSERT INTO `item_db` VALUES (2260, 'Mini_Glasses', 'Mini Glasses', 5, 28000, 0, 100, 0, 1, 0, 0, 18866174, 2, 512, 0, 0, 47, NULL, NULL);
INSERT INTO `item_db` VALUES (2261, 'Army_Cap', 'Army Cap', 5, 20, 0, 400, 0, 4, 0, 0, 414946, 2, 256, 0, 0, 48, NULL, NULL);
INSERT INTO `item_db` VALUES (2262, 'Pierrot_Nose', 'Pierrot Nose', 5, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 1, 0, 0, 49, NULL, NULL);
INSERT INTO `item_db` VALUES (2263, 'Zorro_Masque', 'Zorro Masque', 5, 20, 0, 100, 0, 0, 0, 0, 18866174, 2, 512, 0, 0, 50, NULL, NULL);
INSERT INTO `item_db` VALUES (2264, 'Munak_Hat', 'Munak Hat', 5, 20, 0, 300, 0, 5, 0, 0, 27254783, 2, 769, 0, 0, 51, NULL, 'bonus2 bSubRace,1,10;');
INSERT INTO `item_db` VALUES (2265, 'Gangster_Mask', 'Gangster Mask', 5, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 1, 0, 0, 52, NULL, 'bonus2 bResEff,Eff_Silence,1500;');
INSERT INTO `item_db` VALUES (2266, 'Iron_Cain', 'Iron Cain', 5, 20, 0, 300, 0, 1, 0, 0, 16514, 2, 1, 0, 50, 53, NULL, NULL);
INSERT INTO `item_db` VALUES (2267, 'Cigar', 'Cigar', 5, 20, 0, 100, 0, 0, 0, 0, 18866174, 2, 1, 0, 0, 54, NULL, 'bonus2 bSubRace,4,3;');
INSERT INTO `item_db` VALUES (2268, 'Pipe', 'Pipe', 5, 20, 0, 100, 0, 0, 0, 0, 18866174, 2, 1, 0, 0, 55, NULL, 'bonus2 bSubRace,4,3;');
INSERT INTO `item_db` VALUES (2269, 'Centimental_Flower', 'Romantic Flower', 5, 20, 0, 100, 0, 0, 0, 0, 18866174, 2, 1, 0, 0, 56, NULL, 'bonus2 bSubRace,3,3;');
INSERT INTO `item_db` VALUES (2270, 'Centimental_Leaf', 'Romantic Leaf', 5, 20, 0, 100, 0, 0, 0, 0, 18866174, 2, 1, 0, 0, 57, NULL, 'bonus2 bSubRace,3,3;');
INSERT INTO `item_db` VALUES (2271, 'Jack_a_Dandy', 'Jack a Dandy', 5, 45000, 0, 100, 0, 1, 0, 0, 18866174, 2, 256, 0, 0, 58, NULL, NULL);
INSERT INTO `item_db` VALUES (2272, 'Stop_Post', 'Stop Post', 5, 20, 0, 400, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 59, NULL, NULL);
INSERT INTO `item_db` VALUES (2273, 'Doctor_Cap', 'Doctor Band', 5, 20, 0, 100, 0, 1, 0, 0, 18866174, 2, 256, 0, 0, 60, NULL, 'bonus bInt,1;');
INSERT INTO `item_db` VALUES (2274, 'Ghost_Bandana', 'Ghost Bandana', 5, 20, 0, 100, 0, 0, 0, 0, 18866174, 2, 256, 0, 0, 61, NULL, 'bonus bAgi,2; bonus2 bSubEle,8,10;');
INSERT INTO `item_db` VALUES (2275, 'Red_Bandana', 'Red Bandana', 5, 20, 0, 100, 0, 2, 0, 0, 27254783, 2, 256, 0, 0, 62, NULL, NULL);
INSERT INTO `item_db` VALUES (2276, 'Eagle_Eyes', 'Eagle Eyes', 5, 20, 0, 100, 0, 1, 0, 0, 27254783, 2, 512, 0, 0, 63, NULL, NULL);
INSERT INTO `item_db` VALUES (2277, 'Nurse_Cap', 'Nurse Cap', 5, 20, 0, 100, 0, 1, 0, 0, 33040, 2, 256, 0, 0, 64, NULL, 'bonus bInt,1; bonus bLuk,1;');
INSERT INTO `item_db` VALUES (2278, 'Mr_Smile', 'Mr. Smile', 5, 60, 0, 100, 0, 1, 0, 0, 27254783, 2, 513, 0, 0, 65, NULL, NULL);
INSERT INTO `item_db` VALUES (2279, 'Bomb_Wick', 'Bomb Wick', 5, 20, 0, 100, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 66, NULL, NULL);
INSERT INTO `item_db` VALUES (2280, 'Sakkat', 'Sakkat', 5, 20, 0, 300, 0, 3, 0, 0, 27254783, 2, 256, 0, 0, 67, NULL, 'bonus bAgi,1;');
INSERT INTO `item_db` VALUES (2281, 'Opera_Masque', 'Opera Masque', 5, 8000, 0, 200, 0, 2, 0, 0, 18866174, 2, 513, 0, 0, 68, NULL, NULL);
INSERT INTO `item_db` VALUES (2282, 'Heaven_Ring', 'Heaven Ring', 5, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 256, 0, 0, 69, NULL, 'bonus2 bSubEle,6,10;');
INSERT INTO `item_db` VALUES (2283, 'Ear_Mufs', 'Ear Mufs', 5, 20, 0, 200, 0, 3, 0, 0, 27254783, 2, 256, 0, 0, 70, NULL, 'bonus2 bResEff,Eff_Curse,1000;');
INSERT INTO `item_db` VALUES (2284, 'Antler', 'Antler', 5, 20, 0, 500, 0, 4, 0, 0, 18866174, 2, 256, 0, 0, 71, NULL, NULL);
INSERT INTO `item_db` VALUES (2285, 'Apple_o\'_Archer', 'Apple o\' Archer', 5, 20, 0, 200, 0, 0, 0, 0, 18866174, 2, 256, 0, 30, 72, NULL, 'bonus bDex,3;');
INSERT INTO `item_db` VALUES (2286, 'Elven_Ears', 'Elven Ears', 5, 20, 0, 100, 0, 0, 0, 0, 18866174, 2, 512, 0, 70, 73, NULL, NULL);
INSERT INTO `item_db` VALUES (2287, 'Pirate_Bandana', 'Pirate Bandana', 5, 20, 0, 100, 0, 3, 0, 0, 18866174, 2, 256, 0, 0, 74, NULL, 'bonus bStr,1;');
INSERT INTO `item_db` VALUES (2288, 'Mr_Scream', 'Mr. Scream', 5, 20, 0, 100, 0, 1, 0, 0, 18866174, 2, 513, 0, 0, 75, NULL, NULL);
INSERT INTO `item_db` VALUES (2289, 'Poo_Poo_Hat', 'Poo Poo Hat', 5, 20, 0, 700, 0, 0, 0, 0, 27254783, 2, 256, 0, 0, 76, NULL, 'bonus2 bSubRace,7,10;');
INSERT INTO `item_db` VALUES (2290, 'Funeral_Hat', 'Funeral Hat', 5, 3000, 0, 100, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 77, NULL, NULL);
INSERT INTO `item_db` VALUES (2291, 'Masquerade', 'Masquerade', 5, 20, 0, 100, 0, 0, 0, 0, 18866174, 2, 512, 0, 0, 78, NULL, 'bonus2 bAddRace,7,3;');
INSERT INTO `item_db` VALUES (2292, 'Welding_Mask', 'Welding Mask', 5, 20, 0, 300, 0, 2, 0, 0, 263200, 2, 513, 0, 50, 79, NULL, 'bonus2 bSubEle,3,10;');
INSERT INTO `item_db` VALUES (2293, 'Pretend_Murdered', 'Pretend Murdered', 5, 20, 0, 100, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 80, NULL, NULL);
INSERT INTO `item_db` VALUES (2294, 'Stellar', 'Stellar', 5, 20, 0, 100, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 81, NULL, NULL);
INSERT INTO `item_db` VALUES (2295, 'Blinker', 'Blinker', 5, 1500, 0, 100, 0, 0, 0, 0, 18866174, 2, 512, 0, 0, 82, NULL, 'bonus2 bResEff,Eff_Blind,10000;');
INSERT INTO `item_db` VALUES (2296, 'Binoculars', 'Binoculars', 5, 20, 0, 100, 0, 1, 0, 0, 1574920, 2, 512, 0, 50, 83, NULL, 'bonus bDex,1;');
INSERT INTO `item_db` VALUES (2297, 'Goblini_Mask', 'Goblini Mask', 5, 20, 0, 100, 0, 1, 0, 0, 18866174, 2, 513, 0, 0, 84, NULL, NULL);
INSERT INTO `item_db` VALUES (2298, 'Green_Feeler', 'Green Feeler', 5, 20, 0, 100, 0, 2, 0, 0, 27254783, 2, 256, 0, 0, 85, NULL, NULL);
INSERT INTO `item_db` VALUES (2299, 'Viking_Helm', 'Viking Helm', 5, 20, 0, 500, 0, 5, 0, 0, 414946, 2, 256, 0, 0, 86, NULL, NULL);

# Armor
INSERT INTO `item_db` VALUES (2301, 'Cotton_Shirt', 'Cotton Shirt', 5, 10, 0, 100, 0, 1, 0, 0, 27254783, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2302, 'Cotton_Shirt_', 'Cotton Shirt', 5, 10, 0, 100, 0, 1, 0, 1, 27254783, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2303, 'Leather_Jacket', 'Leather Jacket', 5, 200, 0, 200, 0, 2, 0, 0, 27254783, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2304, 'Leather_Jacket_', 'Leather Jacket', 5, 200, 0, 200, 0, 2, 0, 1, 27254783, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2305, 'Adventure_Suit', 'Adventurer\'s Suit', 5, 1000, 0, 300, 0, 3, 0, 0, 27254783, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2306, 'Adventure_Suit_', 'Adventurer\'s Suit', 5, 1000, 0, 300, 0, 3, 0, 1, 27254783, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2307, 'Mantle', 'Mantle', 5, 10000, 0, 600, 0, 4, 0, 0, 18866174, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2308, 'Mantle_', 'Mantle', 5, 10000, 0, 600, 0, 4, 0, 1, 18866174, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2309, 'Coat', 'Coat', 5, 22000, 0, 1200, 0, 5, 0, 0, 18866174, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2310, 'Coat_', 'Coat', 5, 22000, 0, 1200, 0, 5, 0, 1, 18866174, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2311, 'Mink_Coat', 'Mink Coat', 5, 50000, 0, 2300, 0, 6, 0, 1, 18866174, 2, 16, 0, 30, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2312, 'Padded_Armor', 'Padded Armor', 5, 48000, 0, 2800, 0, 7, 0, 0, 414946, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2313, 'Padded_Armor_', 'Padded Armor', 5, 48000, 0, 2800, 0, 7, 0, 1, 414946, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2314, 'Chain_Mail', 'Chain Mail', 5, 65000, 0, 3300, 0, 8, 0, 0, 414946, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2315, 'Chain_Mail_', 'Chain Mail', 5, 65000, 0, 3300, 0, 8, 0, 1, 414946, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2316, 'Full_Plate', 'Full Plate', 5, 80000, 0, 4500, 0, 10, 0, 0, 16514, 2, 16, 0, 40, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2317, 'Full_Plate_', 'Full Plate', 5, 80000, 0, 4500, 0, 10, 0, 1, 16514, 2, 16, 0, 40, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2318, 'Clothes_of_the_Lord', 'Lord\'s Clothes', 5, 20, 0, 2500, 0, 8, 0, 1, 263200, 2, 16, 0, 70, 0, NULL, 'bonus bMdef,5; bonus bInt,1;');
INSERT INTO `item_db` VALUES (2319, 'Glittering_Clothes', 'Glittering Jacket', 5, 20, 0, 2500, 0, 7, 0, 1, 18866174, 2, 16, 0, 60, 0, NULL, 'bonus bMdef,5; bonus2 bAddEffect,Eff_Blind,500;');
INSERT INTO `item_db` VALUES (2320, 'Formal_Suit', 'Formal Suit', 5, 20, 0, 300, 0, 5, 0, 1, 18866174, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2321, 'Silk_Robe', 'Silk Robe', 5, 8000, 0, 400, 0, 3, 0, 0, 378806, 2, 16, 0, 0, 0, NULL, 'bonus bMdef,10;');
INSERT INTO `item_db` VALUES (2322, 'Silk_Robe_', 'Silk Robe', 5, 8000, 0, 400, 0, 3, 0, 1, 378806, 2, 16, 0, 0, 0, NULL, 'bonus bMdef,10;');
INSERT INTO `item_db` VALUES (2323, 'Scapulare', 'Scapulare', 5, 6500, 0, 400, 0, 4, 0, 0, 33040, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2324, 'Scapulare_', 'Scapulare', 5, 6500, 0, 400, 0, 4, 0, 1, 33040, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2325, 'Saint_Robe', 'Saint\'s Robe', 5, 54000, 0, 600, 0, 6, 0, 0, 296240, 2, 16, 0, 0, 0, NULL, 'bonus bMdef,5;');
INSERT INTO `item_db` VALUES (2326, 'Saint_Robe_', 'Saint\'s Robe', 5, 54000, 0, 600, 0, 6, 0, 1, 296240, 2, 16, 0, 0, 0, NULL, 'bonus bMdef,5;');
INSERT INTO `item_db` VALUES (2327, 'Holy_Robe', 'Holy Robe', 5, 20, 0, 1700, 0, 7, 0, 0, 33040, 2, 16, 0, 60, 0, NULL, 'bonus bMdef,5; bonus2 bSubRace,6,15; bonus2 bSubEle,7,10;');
INSERT INTO `item_db` VALUES (2328, 'Wooden_Mail', 'Wooden Mail', 5, 5500, 0, 1000, 0, 4, 0, 0, 279714, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2329, 'Wooden_Mail_', 'Wooden Mail', 5, 5500, 0, 1000, 0, 4, 0, 1, 279714, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2330, 'Tights', 'Tights', 5, 71000, 0, 500, 0, 6, 0, 0, 1574920, 2, 16, 0, 45, 0, NULL, 'bonus bDex,1;');
INSERT INTO `item_db` VALUES (2331, 'Tights_', 'Tights', 5, 71000, 0, 500, 0, 6, 0, 1, 1574920, 2, 16, 0, 45, 0, NULL, 'bonus bDex,1;');
INSERT INTO `item_db` VALUES (2332, 'Silver_Robe', 'Silver Robe', 5, 7000, 0, 700, 0, 4, 0, 0, 66052, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2333, 'Silver_Robe_', 'Silver Robe', 5, 7000, 0, 700, 0, 4, 0, 1, 66052, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2334, 'Mage_Coat', 'Mage Coat', 5, 20, 0, 600, 0, 5, 0, 0, 66052, 2, 16, 0, 50, 0, NULL, 'bonus bMdef,5; bonus bInt,1;');
INSERT INTO `item_db` VALUES (2335, 'Thief_Clothes', 'Thief Clothes', 5, 74000, 0, 100, 0, 6, 0, 0, 135232, 2, 16, 0, 0, 0, NULL, 'bonus bAgi,1;');
INSERT INTO `item_db` VALUES (2336, 'Thief_Clothes_', 'Thief Clothes', 5, 74000, 0, 100, 0, 6, 0, 1, 135232, 2, 16, 0, 0, 0, NULL, 'bonus bAgi,1;');
INSERT INTO `item_db` VALUES (2337, 'Ninja_Suit', 'Ninja Suit', 5, 20, 0, 1500, 0, 7, 0, 0, 135232, 2, 16, 0, 50, 0, NULL, 'bonus bAgi,1; bonus bMdef,3;');
INSERT INTO `item_db` VALUES (2338, 'Wedding_Dress', 'Wedding Dress', 5, 43000, 0, 500, 0, 0, 0, 0, 18866174, 0, 16, 0, 0, 0, NULL, 'bonus bMdef,15; changebase 22;');
INSERT INTO `item_db` VALUES (2339, 'Pantie', 'Pantie', 5, 1000, 0, 100, 0, 4, 0, 0, 27254783, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2340, 'Novice_Breastplate', 'Novice Breastplate', 5, 89000, 0, 500, 0, 4, 0, 1, 8388609, 2, 16, 0, 10, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2341, 'Legion_Plate_Armor', 'Legion Plate Armor', 5, 94000, 0, 5500, 0, 11, 0, 0, 16384, 2, 16, 0, 70, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2342, 'Legion_Plate_Armor_', 'Legion Plate Armor', 5, 94000, 0, 5500, 0, 11, 0, 1, 16384, 2, 16, 0, 70, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2343, 'Robe_of_Casting', 'Casting Robe', 5, 20, 0, 1100, 0, 5, 0, 0, 66048, 2, 16, 0, 75, 0, NULL, 'bonus bCastrate,-3;');
INSERT INTO `item_db` VALUES (2344, 'Armor_of_Fire', 'Lucias\'s Volcano Armor', 5, 20, 0, 2200, 0, 4, 0, 0, 279714, 2, 16, 0, 45, 0, NULL, 'bonus bDefEle,3;');
INSERT INTO `item_db` VALUES (2345, 'Armor_of_Fire_', 'Lucias\'s Volcano Armor', 5, 20, 0, 2200, 0, 4, 0, 1, 279714, 2, 16, 0, 45, 0, NULL, 'bonus bDefEle,3;');
INSERT INTO `item_db` VALUES (2346, 'Armor_of_Water', 'Sapien\'s Ocean Armor', 5, 20, 0, 2200, 0, 4, 0, 0, 279714, 2, 16, 0, 45, 0, NULL, 'bonus bDefEle,1;');
INSERT INTO `item_db` VALUES (2347, 'Armor_of_Water_', 'Sapien\'s Ocean Armor', 5, 20, 0, 2200, 0, 4, 0, 1, 279714, 2, 16, 0, 45, 0, NULL, 'bonus bDefEle,1;');
INSERT INTO `item_db` VALUES (2348, 'Armor_of_Wind', 'Ebeshi\'s Typhoon Armor', 5, 20, 0, 2200, 0, 4, 0, 0, 279714, 2, 16, 0, 45, 0, NULL, 'bonus bDefEle,4;');
INSERT INTO `item_db` VALUES (2349, 'Armor_of_Wind_', 'Ebeshi\'s Typhoon Armor', 5, 20, 0, 2200, 0, 4, 0, 1, 279714, 2, 16, 0, 45, 0, NULL, 'bonus bDefEle,4;');
INSERT INTO `item_db` VALUES (2350, 'Armor_of_Land', 'Kreitos\'s Earth Armor', 5, 20, 0, 2200, 0, 4, 0, 0, 279714, 2, 16, 0, 45, 0, NULL, 'bonus bDefEle,2;');
INSERT INTO `item_db` VALUES (2351, 'Armor_of_Land_', 'Kreitos\'s Earth Armor', 5, 20, 0, 2200, 0, 4, 0, 1, 279714, 2, 16, 0, 45, 0, NULL, 'bonus bDefEle,2;');
INSERT INTO `item_db` VALUES (2352, 'Armor_For_Novice', 'Novice Ninja Suit', 5, 20, 0, 1, 0, 4, 0, 0, 8388609, 2, 16, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2353, 'Blessing_of_Odin', 'Blessing of Odin', 5, 20, 0, 2500, 0, 6, 0, 1, 18866174, 2, 16, 0, 65, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2354, 'Gebney_Armor', 'Gebney\'s Armor', 5, 20, 0, 3500, 0, 7, 0, 0, 18866174, 2, 16, 0, 54, 0, NULL, 'bonus bVit,2; bonus bMaxHPrate,10;');
INSERT INTO `item_db` VALUES (2355, 'Angel_Protection', 'Angel Protection', 5, 20, 0, 600, 0, 4, 0, 1, 8388609, 2, 16, 0, 40, 0, NULL, 'bonus bMdef,20; if(isequipped(2116,2420,2521,5125)==0) end; bonus bMaxHP,900; bonus bMaxSP,100; bonus4 bAutoSpellWhenHit,361,1,200,0;'); #Autospell rate is unknown
INSERT INTO `item_db` VALUES (2356, 'Holy_Cloth_of_Benefit', 'Holy Cloth of Benefit', 5, 0, 10, 2500, 0, 5, 0, 0, 33024, 2, 16, 0, 70, 1, NULL, 'bonus2 bSubEle,7,80; bonus bMdef,5;');

# Foot gear
INSERT INTO `item_db` VALUES (2401, 'Sandals', 'Sandals', 5, 400, 0, 200, 0, 1, 0, 0, 27254783, 2, 64, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2402, 'Sandals_', 'Sandals', 5, 400, 0, 200, 0, 1, 0, 1, 27254783, 2, 64, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2403, 'Shoes', 'Shoes', 5, 3500, 0, 400, 0, 2, 0, 0, 18866174, 2, 64, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2404, 'Shoes_', 'Shoes', 5, 3500, 0, 400, 0, 2, 0, 1, 18866174, 2, 64, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2405, 'Boots', 'Boots', 5, 18000, 0, 600, 0, 4, 0, 0, 18767082, 2, 64, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2406, 'Boots_', 'Boots', 5, 18000, 0, 600, 0, 4, 0, 1, 18767082, 2, 64, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2407, 'Crystal_Pumps', 'Crystal Pumps', 5, 20, 0, 100, 0, 0, 0, 0, 18866174, 0, 64, 0, 0, 0, NULL, 'bonus bMdef,10; bonus bLuk,5;');
INSERT INTO `item_db` VALUES (2408, 'Cuffs', 'Cuffs', 5, 5000, 0, 3000, 0, 3, 0, 0, 27254783, 2, 64, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2409, 'Spiky_Heel', 'Spiky Heel', 5, 8500, 0, 600, 0, 2, 0, 0, 18866174, 2, 64, 0, 0, 0, NULL, 'bonus bMdef,5;');
INSERT INTO `item_db` VALUES (2410, 'Sleipnir', 'Sleipnir', 5, 20, 0, 3500, 0, 5, 0, 0, 27254783, 2, 64, 0, 94, 0, NULL, 'bonus bMdef,10; bonus bMaxHPrate,20; bonus bMaxSPrate,20; bonus bSPrecovRate,15; bonus bSpeedRate,25;');
INSERT INTO `item_db` VALUES (2411, 'Greaves', 'Greaves', 5, 48000, 0, 750, 0, 5, 0, 0, 16512, 2, 64, 0, 65, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2412, 'Greaves_', 'Greaves', 5, 48000, 0, 750, 0, 5, 0, 1, 16512, 2, 64, 0, 65, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2413, 'Safety_Shoes', 'Safety Shoes', 5, 20, 0, 350, 0, 6, 0, 0, 16514, 2, 64, 0, 30, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2414, 'Sandal_For_Novice', 'Novice Sandals', 5, 20, 0, 1, 0, 2, 0, 0, 8388609, 2, 64, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2415, 'Bunny_Slippers', 'Bunny Slippers', 5, 20, 0, 300, 0, 0, 0, 0, 18866174, 0, 64, 0, 0, 0, NULL, 'bonus bLuk,3;');
INSERT INTO `item_db` VALUES (2416, 'Novice_Shoes', 'Novice Shoes', 5, 20, 0, 500, 0, 2, 0, 1, 8388609, 2, 64, 0, 40, 0, NULL, 'bonus bMaxHPrate,5;');
INSERT INTO `item_db` VALUES (2417, 'Freyrs_Shoes', 'Freyrs Shoes', 5, 20, 0, 500, 0, 3, 0, 0, 18866174, 2, 64, 0, 65, 0, NULL, 'bonus bAgi,2;'); #Missing Set bonus, and red,orange,yellow,white potion heal rate 20% increasing bonus(if you want, edit db/item_group_db.txt, then use bonus2 bAddItemHealRate) And I don't know if it's proper name..
INSERT INTO `item_db` VALUES (2418, 'Boots_of_Vidar', 'Boots of Vidar', 5, 20, 0, 650, 0, 4, 0, 0, 18866174, 2, 64, 0, 65, 0, NULL, 'bonus bMaxHPrate,9; bonus bMaxSPrate,9;'); #Missing set bonus,,,,,
INSERT INTO `item_db` VALUES (2419, 'Combat_Boots', 'Gebney\'s Combat Boots', 5, 20, 0, 700, 0, 4, 0, 0, 18866174, 2, 64, 0, 54, 0, NULL, 'bonus bMdef,3; bonus bMaxHPrate,5; bonus bMaxSPrate,5;');
INSERT INTO `item_db` VALUES (2420, 'Second_Advent_of_Angel', 'Second Advent of Angel', 5, 20, 0, 10, 0, 0, 0, 1, 8388609, 2, 64, 0, 0, 0, NULL, 'bonus bMaxHP,100;'); #Item description is not right, so it needs correction through patch,,,,,

# Garments
INSERT INTO `item_db` VALUES (2501, 'Hood', 'Hood', 5, 1000, 0, 200, 0, 1, 0, 0, 27254783, 2, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2502, 'Hood_', 'Hood', 5, 1000, 0, 200, 0, 1, 0, 1, 27254783, 2, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2503, 'Muffler', 'Muffler', 5, 5000, 0, 400, 0, 2, 0, 0, 18866174, 2, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2504, 'Muffler_', 'Muffler', 5, 5000, 0, 400, 0, 2, 0, 1, 18866174, 2, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2505, 'Manteau', 'Manteau', 5, 32000, 0, 600, 0, 4, 0, 0, 17192162, 2, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2506, 'Manteau_', 'Manteau', 5, 32000, 0, 600, 0, 4, 0, 1, 17192162, 2, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2507, 'Cape_Of_Ancient_Lord', 'Cape of Old Marquess', 5, 20, 0, 600, 0, 2, 0, 0, 18866174, 2, 4, 0, 40, 0, NULL, 'bonus bAgi,1;');
INSERT INTO `item_db` VALUES (2508, 'Ragamuffin_Cape', 'Ragamuffin Manteau', 5, 20, 0, 500, 0, 1, 0, 0, 18866174, 2, 4, 0, 0, 0, NULL, 'bonus bMdef,10; bonus bUnbreakableArmor,0;');
INSERT INTO `item_db` VALUES (2509, 'Manteau_of_Survival', 'Manteau of Life', 5, 20, 0, 550, 0, 0, 0, 0, 66052, 2, 4, 0, 75, 0, NULL, 'bonus bVit,10;');
INSERT INTO `item_db` VALUES (2510, 'Hood_For_Novice', 'Novice Hood', 5, 20, 0, 1, 0, 2, 0, 0, 8388609, 2, 4, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2511, 'Skeleton_Manteau', 'Skeleton\'s Manteau', 5, 20, 0, 700, 0, 1, 0, 0, 18866174, 2, 4, 0, 75, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2512, 'Novice_Manteau', 'Novice Manteau', 5, 20, 0, 500, 0, 2, 0, 1, 8388609, 2, 4, 0, 40, 0, NULL, 'bonus2 bSubEle,0,10;');
INSERT INTO `item_db` VALUES (2513, 'Heavenly_Wings', 'Light Wing-cloth', 5, 20, 0, 500, 0, 3, 0, 1, 18866174, 2, 4, 0, 80, 0, NULL, NULL); #you see, my translation is somewhat bad..,
INSERT INTO `item_db` VALUES (2514, 'Fauldren', 'Fauldren', 5, 20, 0, 800, 0, 5, 0, 1, 414946, 2, 4, 0, 80, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2515, 'Wing_of_Eagle', 'Wings of Eagle', 5, 20, 0, 300, 0, 1, 0, 1, 66052, 2, 4, 0, 85, 0, NULL, 'if(isequipped(1616)) bonus bSpeed,10;'); #the value is unknown, even if the bonus option is increasing speed or speed rate
INSERT INTO `item_db` VALUES (2516, 'Hawk_Wing_Muffler', 'Hawk Wing Cape', 5, 20, 0, 400, 0, 3, 0, 0, 18866174, 2, 4, 0, 65, 0, NULL, 'bonus bFlee,15; bonus bFlee2,5;');
INSERT INTO `item_db` VALUES (2517, 'Manteau_of_Vali', 'Manteau of Vali', 5, 20, 0, 600, 0, 4, 0, 0, 18866174, 2, 4, 0, 65, 0, NULL, 'bonus2 bSubEle,0,15;');
INSERT INTO `item_db` VALUES (2518, 'Morphicious_Shawl', 'Shawl of Morphicious', 5, 20, 0, 600, 0, 3, 0, 0, 18866174, 2, 4, 0, 33, 0, NULL, 'bonus bMaxSPrate,10; bonus bMdef,3;');
INSERT INTO `item_db` VALUES (2519, 'Manteau_of_Morrigan', 'Manteau of Morrigan', 5, 20, 0, 600, 0, 3, 0, 0, 18866174, 2, 4, 0, 61, 0, NULL, 'bonus bLuk,2; bonus bFlee2,8;');
INSERT INTO `item_db` VALUES (2520, 'Gebneys_Shoulder', 'Gebney\'s Shoulder Patch', 5, 20, 0, 700, 0, 3, 0, 0, 18866174, 2, 4, 0, 54, 0, NULL, 'bonus bLongAtkDef,10; bonus bMdef,2;'); #maybe item name is wrong.  it doesn't have its own sprite yet(though file exists),
INSERT INTO `item_db` VALUES (2521, 'Warmth_of_Angel', 'Warmth of Angel', 5, 20, 0, 400, 0, 2, 0, 0, 8388609, 2, 4, 0, 20, 0, NULL, 'bonus bHPrecovRate,5;');
INSERT INTO `item_db` VALUES (2522, 'Running_Shirt', 'Running Shirt', 5, 20, 0, 150, 0, 2, 0, 0, 27254783, 2, 4, 0, 0, 0, NULL, 'bonus bMdef,1; if(isequipped(2339)==0) end; bonus bAgi,5; bonus bFlee,10;');
INSERT INTO `item_db` VALUES (2523, 'Running_Shirt_', 'Running Shirt_', 5, 20, 0, 150, 0, 2, 0, 1, 27254783, 2, 4, 0, 0, 0, NULL, 'bonus bMdef,1; if(isequipped(2339)==0) end; bonus bAgi,5; bonus bFlee,10;');

# Accessories
INSERT INTO `item_db` VALUES (2601, 'Ring', 'Ring', 5, 30000, 0, 100, 0, 0, 0, 0, 18866174, 2, 136, 0, 20, 0, NULL, 'bonus bStr,2;');
INSERT INTO `item_db` VALUES (2602, 'Earring', 'Earring', 5, 30000, 0, 100, 0, 0, 0, 0, 18866174, 2, 136, 0, 20, 0, NULL, 'bonus bInt,2;');
INSERT INTO `item_db` VALUES (2603, 'Necklace', 'Necklace', 5, 30000, 0, 100, 0, 0, 0, 0, 18866174, 2, 136, 0, 20, 0, NULL, 'bonus bVit,2;');
INSERT INTO `item_db` VALUES (2604, 'Glove', 'Glove', 5, 30000, 0, 100, 0, 0, 0, 0, 18866174, 2, 136, 0, 20, 0, NULL, 'bonus bDex,2;');
INSERT INTO `item_db` VALUES (2605, 'Brooch', 'Brooch', 5, 30000, 0, 100, 0, 0, 0, 0, 18866174, 2, 136, 0, 20, 0, NULL, 'bonus bAgi,2;');

INSERT INTO `item_db` VALUES (2607, 'Clip', 'Clip', 5, 30000, 0, 100, 0, 0, 0, 1, 27254783, 2, 136, 0, 0, 0, NULL, 'bonus bMaxSP,10;');
INSERT INTO `item_db` VALUES (2608, 'Rosary', 'Rosary', 5, 15000, 0, 100, 0, 0, 0, 0, 18866174, 2, 136, 0, 20, 0, NULL, 'bonus bMdef,5; bonus bLuk,2;');
INSERT INTO `item_db` VALUES (2609, 'Skull_Ring', 'Skull Ring', 5, 10000, 0, 100, 0, 0, 0, 0, 27254783, 2, 136, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2610, 'Gold_Ring', 'Gold Ring', 5, 30000, 0, 100, 0, 0, 0, 0, 27254783, 2, 136, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2611, 'Silver_Ring', 'Silver Ring', 5, 20000, 0, 100, 0, 0, 0, 0, 27254783, 2, 136, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2612, 'Flower_Ring', 'Flower Ring', 5, 1500, 0, 100, 0, 0, 0, 0, 27254783, 2, 136, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2613, 'Diamond_Ring', 'Diamond Ring', 5, 45000, 0, 100, 0, 0, 0, 0, 27254783, 2, 136, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2614, 'Eye_of_Dullahan', 'Eye of Dullahan', 5, 90000, 0, 100, 0, 0, 0, 0, 18866174, 2, 136, 0, 50, 0, NULL, 'bonus2 bResEff,Eff_Poison,1000; bonus2 bResEff,Eff_Curse,1000; bonus2 bResEff,Eff_Silence,1000; bonus2 bResEff,Eff_Confusion,1000; bonus2 bResEff,Eff_Blind,1000;');
INSERT INTO `item_db` VALUES (2615, 'Safety_Ring', 'Safety Ring', 5, 75000, 0, 100, 0, 3, 0, 0, 18866174, 2, 136, 0, 40, 0, NULL, 'bonus bMdef,3;');
INSERT INTO `item_db` VALUES (2616, 'Critical_Ring', 'Critical Ring', 5, 75000, 0, 100, 0, 0, 0, 0, 18866174, 2, 136, 0, 40, 0, NULL, 'bonus bCritical,5;');
INSERT INTO `item_db` VALUES (2617, 'Celebrant\'s_Mitten', 'Celebrant\'s Mitten', 5, 20, 0, 100, 0, 1, 0, 0, 18866174, 2, 136, 0, 35, 0, NULL, 'bonus bInt,1;');
INSERT INTO `item_db` VALUES (2618, 'Matyr\'s_Leash', 'Matyr\'s Leash', 5, 20, 0, 100, 0, 1, 0, 0, 27254783, 2, 136, 0, 35, 0, NULL, 'bonus bAgi,1;');
INSERT INTO `item_db` VALUES (2619, 'Thimble_Of_Archer', 'Bow Thimble', 5, 30000, 0, 100, 0, 0, 0, 0, 1574920, 2, 136, 0, 65, 0, NULL, 'bonus bLongAtkRate,10;');
INSERT INTO `item_db` VALUES (2620, 'Ring_Of_Rogue', 'Rogue\'s Treasure', 5, 30000, 0, 100, 0, 0, 0, 0, 135232, 2, 136, 0, 70, 0, NULL, 'bonus bAddStealRate,100;');
INSERT INTO `item_db` VALUES (2621, 'Ring_', 'Ancient Ring', 5, 30000, 0, 200, 0, 0, 0, 1, 18866174, 2, 136, 0, 90, 0, NULL, 'bonus bStr,1;');
INSERT INTO `item_db` VALUES (2622, 'Earring_', 'Ancient Earring', 5, 30000, 0, 200, 0, 0, 0, 1, 18866174, 2, 136, 0, 90, 0, NULL, 'bonus bInt,1;');
INSERT INTO `item_db` VALUES (2623, 'Necklace_', 'Ancient Necklace', 5, 30000, 0, 200, 0, 0, 0, 1, 18866174, 2, 136, 0, 90, 0, NULL, 'bonus bVit,1;');
INSERT INTO `item_db` VALUES (2624, 'Glove_', 'Ancient Glove', 5, 30000, 0, 200, 0, 0, 0, 1, 18866174, 2, 136, 0, 90, 0, NULL, 'bonus bDex,1;');
INSERT INTO `item_db` VALUES (2625, 'Brooch_', 'Ancient Brooch', 5, 30000, 0, 200, 0, 0, 0, 1, 18866174, 2, 136, 0, 90, 0, NULL, 'bonus bAgi,1;');
INSERT INTO `item_db` VALUES (2626, 'Rosary_', 'Ancient Rosary', 5, 15000, 0, 200, 0, 0, 0, 1, 18866174, 2, 136, 0, 90, 0, NULL, 'bonus bMdef,3; bonus bLuk,1;');
INSERT INTO `item_db` VALUES (2627, 'Belt', 'Ancient Belt', 5, 20000, 0, 1200, 0, 0, 0, 1, 27254783, 2, 136, 0, 25, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2628, 'Novice_Armlet', 'Novice Armlet', 5, 400, 0, 200, 0, 0, 0, 1, 8388609, 2, 136, 0, 0, 0, NULL, 'bonus bStr,1; bonus bInt,1; bonus bLuk,1;');
INSERT INTO `item_db` VALUES (2629, 'Megingjard', 'Megingjard', 5, 20, 0, 8000, 0, 2, 0, 0, 27254783, 2, 136, 0, 94, 0, NULL, 'bonus bStr,40; bonus bMdef,7;');
INSERT INTO `item_db` VALUES (2630, 'Brisingamen', 'Brisingamen', 5, 20, 0, 1500, 0, 1, 0, 0, 27254783, 2, 136, 0, 94, 0, NULL, 'bonus bStr,6; bonus bAgi,6; bonus bVit,6; bonus bInt,6; bonus bLuk,10; bonus bMdef,5;');

# Xmas / Wedding Items
INSERT INTO `item_db` VALUES (2631, 'Celebration_Ring', 'Celebration Ring', 5, 20, 0, 10, 0, 0, 0, 0, 27254783, 2, 136, 0, 0, 0, NULL, 'bonus bStr,2; bonus bAgi,2; bonus bVit,2; bonus bInt,2; bonus bDex,2; bonus bLuk,2;');

INSERT INTO `item_db` VALUES (2634, 'Wedding_Ring_M', 'Wedding Ring', 5, 20, 0, 0, 0, 0, 0, 0, 27254783, 1, 136, 0, 0, 0, NULL, 'skill 334,1; skill 335,1; skill 336,1;');
INSERT INTO `item_db` VALUES (2635, 'Wedding_Ring_F', 'Wedding Ring', 5, 20, 0, 0, 0, 0, 0, 0, 27254783, 0, 136, 0, 0, 0, NULL, 'skill 334,1; skill 335,1; skill 336,1;');
INSERT INTO `item_db` VALUES (2636, 'Gold_Christmas_Ring', 'Gold Xmas Ring', 5, 20, 0, 0, 0, 0, 0, 0, 27254783, 2, 136, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2637, 'Silver_Christmas_Ring', 'Silver Xmas Ring', 5, 20, 0, 0, 0, 0, 0, 0, 27254783, 2, 136, 0, 0, 0, NULL, NULL);

INSERT INTO `item_db` VALUES (2638, 'Exorcize_Sachet', 'Sacred Incense', 5, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 136, 0, 0, 0, NULL, 'bonus bStr,1; bonus bLuk,1;');
INSERT INTO `item_db` VALUES (2639, 'Purification_Sachet', 'Occult Incense', 5, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 136, 0, 0, 0, NULL, 'bonus bAgi,1; bonus bInt,1;');
INSERT INTO `item_db` VALUES (2640, 'Kafra_Ring', 'Kafra Ring', 5, 20, 0, 200, 0, 0, 0, 0, 18866174, 2, 136, 0, 0, 0, NULL, 'bonus bStr,1; bonus bAgi,1; bonus bInt,1; bonus bLuk,1;');
INSERT INTO `item_db` VALUES (2641, 'Fashion_Hip_Sack', 'Fashion Hip Sack', 5, 20, 0, 700, 0, 0, 0, 0, 263200, 2, 136, 0, 50, 0, NULL, 'bonus bStr,2;');
INSERT INTO `item_db` VALUES (2642, 'Celines_Ring', 'Celine\'s Ring', 5, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 136, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2643, 'Celines_Ring_', 'Celine\'s Ring', 5, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 136, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2644, 'The_Sign_', 'The Sign', 5, 20, 0, 0, 0, 0, 0, 0, 27254783, 2, 136, 0, 0, 0, NULL, 'bonus bMatkRate,5;');

INSERT INTO `item_db` VALUES (2645, 'Moonlight_Ring', 'Moonlight Ring', 5, 20, 0, 200, 0, 0, 0, 0, 135232, 2, 136, 0, 60, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2646, 'Bouquet', 'Bunch of Carnations', 5, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 136, 0, 0, 0, NULL, 'bonus bAllStats,3;');

INSERT INTO `item_db` VALUES (2647, 'Nile_Rose', 'Nile Rose', 5, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 136, 0, 0, 0, NULL, 'bonus bAllStats,5;');
INSERT INTO `item_db` VALUES (2648, 'Morphicious_Ring', 'Ring of Morphicious', 5, 20, 0, 100, 0, 0, 0, 0, 18866174, 2, 136, 0, 33, 0, NULL, 'bonus bInt,1; bonus bMaxSPrate,5;');
INSERT INTO `item_db` VALUES (2649, 'Morphicious_Bracelet', 'Bracelet of Morphicious', 5, 20, 0, 100, 0, 0, 0, 0, 18866174, 2, 136, 0, 33, 0, NULL, 'bonus bInt,1; bonus bMaxSPrate,5;');
INSERT INTO `item_db` VALUES (2650, 'Belt_of_Morrigan', 'Belt of Morrigan', 5, 20, 0, 200, 0, 0, 0, 0, 18866174, 2, 136, 0, 61, 0, NULL, 'bonus bAtk,5; bonus bCritical,3;');
INSERT INTO `item_db` VALUES (2651, 'Pendant_of_Morrigan', 'Pendant of Morrigan', 5, 20, 0, 200, 0, 0, 0, 0, 18866174, 2, 136, 0, 61, 0, NULL, 'bonus bStr,2; bonus bCritical,3;');
INSERT INTO `item_db` VALUES (2652, 'Brooch_of_Cursed_Fortune', 'Brooch of Cursed Fortune', 5, 20, 0, 100, 0, 0, 0, 0, 18866174, 2, 136, 0, 40, 0, NULL, 'bonus bCriticalRate,6; bonus2 bAddEff2,Eff_Curse,50;'); #Correct rate is unknown,,
INSERT INTO `item_db` VALUES (2653, 'Sacrifice_Ring', 'Sacrifice Ring', 5, 20, 0, 100, 0, 0, 0, 0, 18866174, 2, 136, 0, 90, 0, NULL, NULL); #seems eAthena doesn't have bonus option yet...,,,,,
INSERT INTO `item_db` VALUES (2654, 'Shinobi_Belt', 'Shinobi Belt', 5, 20, 0, 300, 0, 0, 0, 0, 135232, 2, 136, 0, 30, 0, NULL, 'bonus bStr,1; bonus bAgi,1; bonus bMdef,1; if(isequipped(2337)==0) end; bonus bUseSPrate,-20; bonus bMaxHP,300;');
INSERT INTO `item_db` VALUES (2655, 'Bloody_Irons', 'Blood-Stained Leg Irons', 5, 20, 0, 4000, 0, 0, 0, 0, 414946, 2, 136, 0, 0, 0, NULL, 'if (isequipped(2408)==0) end; bonus bAtk,100; bonus2 bAddDefClass,1196,20; bonus2 bAddDefClass,1197,20;');
INSERT INTO `item_db` VALUES (2656, 'Hyper_Mode_Changer', 'Hyper-mode Changer', 5, 20, 0, 1000, 0, 0, 0, 0, 18866174, 2, 136, 0, 0, 0, NULL, 'if((isequipped(2312) || isequipped(2313))==0) end; bonus bDef,6; bonus bMaxHP,200;');
INSERT INTO `item_db` VALUES (2657, 'Laboratory_Passport', 'Laboratory Passport', 5, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 136, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (2658, 'Nile_Rose_', 'Nile Rose', 5, 20, 0, 100, 0, 0, 0, 1, 27254783, 2, 136, 0, 0, 0, NULL, 'bonus bMaxHP,10;');
#These are for Advanced 2nd Jobs
INSERT INTO `item_db` VALUES (2659, 'Vesper_Core_01', 'Vesper Core 01', 5, 20, 0, 500, 0, 1, 0, 0, 2088832, 2, 136, 0, 0, 0, NULL, 'bonus bDef,1; bonus bMdef,3; bonus bInt,2; bonus bMaxSPrate,5;');
INSERT INTO `item_db` VALUES (2660, 'Vesper_Core_02', 'Vesper Core 02', 5, 20, 0, 500, 0, 1, 0, 0, 2088832, 2, 136, 0, 0, 0, NULL, 'bonus bDef,1; bonus bMdef,3; bonus bStr,3; bonus bAtk,10;');
INSERT INTO `item_db` VALUES (2661, 'Vesper_Core_03', 'Vesper Core 03', 5, 20, 0, 500, 0, 1, 0, 0, 2088832, 2, 136, 0, 0, 0, NULL, 'bonus bDef,1; bonus bMdef,3; bonus bAgi,3; bonus bFlee,5;');
INSERT INTO `item_db` VALUES (2662, 'Vesper_Core_04', 'Vesper Core 04', 5, 20, 0, 500, 0, 1, 0, 0, 2088832, 2, 136, 0, 0, 0, NULL, 'bonus bDef,1; bonus bMdef,3; bonus bDex,3; bonus bHit,10;');
INSERT INTO `item_db` VALUES (2663, 'Gauntlet_of_Hit', 'Gauntlet of Hit', 5, 0, 0, 900, 0, 0, 0, 0, 27254783, 2, 136, 0, 75, 0, NULL, 'bonus bHit,15; bonus bStr,1;');
INSERT INTO `item_db` VALUES (2664, 'Belcarf', 'Belcarf', 5, 0, 0, 200, 0, 0, 0, 0, 18866174, 2, 136, 0, 75, 0, NULL, 'bonus bDex,2; bonus bInt,1;');
INSERT INTO `item_db` VALUES (2665, 'Ring_of_Exorcism', 'Ring of Exorcism', 5, 0, 10, 500, 0, 0, 0, 0, 33040, 2, 136, 0, 60, 0, NULL, 'bonus2 bExpAddRace,1,5; bonus2 bExpAddRace,6,5;');
INSERT INTO `item_db` VALUES (2666, 'Lamp_of_Hope', 'Lamp of Hope', 5, 0, 0, 100, 0, 0, 0, 0, 127918079, 2, 136, 0, 0, 0, NULL, 'bonus bStr,2; bonus2 bResEff,Eff_Blind,10;');

# Cards
INSERT INTO `item_db` VALUES (4001, 'Poring_Card', 'Poring Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bLuk,2; bonus bFlee2,1;');
INSERT INTO `item_db` VALUES (4002, 'Fabre_Card', 'Fabre Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bVit,1; bonus bMaxHP,100;');
INSERT INTO `item_db` VALUES (4003, 'Pupa_Card', 'Pupa Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bMaxHP,700;');
INSERT INTO `item_db` VALUES (4004, 'Drops_Card', 'Drops Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bDex,1; bonus bHit,3;');
INSERT INTO `item_db` VALUES (4005, 'Santa_Poring_Card', 'Santa Poring Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddEle,7,20;');
INSERT INTO `item_db` VALUES (4006, 'Lunatic_Card', 'Lunatic Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bLuk,1; bonus bCritical,1; bonus bFlee2,1;');
INSERT INTO `item_db` VALUES (4007, 'Pecopeco_Egg_Card', 'Pecopeco Egg Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddRace,0,20;');
INSERT INTO `item_db` VALUES (4008, 'Picky_Card', 'Picky Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bStr,1; bonus bBaseAtk,10;');
INSERT INTO `item_db` VALUES (4009, 'Chonchon_Card', 'Chonchon Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus bAgi,1; bonus bFlee,2;');
INSERT INTO `item_db` VALUES (4010, 'Wilow_Card', 'Wilow Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus bMaxSP,80;');
INSERT INTO `item_db` VALUES (4011, 'Picky__Card', 'Picky  Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bVit,1; bonus bMaxHP,100;');
INSERT INTO `item_db` VALUES (4012, 'Thief_Bug_Egg_Card', 'Thief Bug Egg Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus bMaxHP,400;');
INSERT INTO `item_db` VALUES (4013, 'Andre_Egg_Card', 'Andre Egg Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus bMaxHPrate,5;');
INSERT INTO `item_db` VALUES (4014, 'Roda_Frog_Card', 'Roda Frog Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bMaxHP,400; bonus bMaxSP,50;');
INSERT INTO `item_db` VALUES (4015, 'Condor_Card', 'Condor Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus bFlee,10;');
INSERT INTO `item_db` VALUES (4016, 'Thief_Bug_Card', 'Thief Bug Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bAgi,1;');
INSERT INTO `item_db` VALUES (4017, 'Savage_Babe_Card', 'Savage Babe Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddEff,Eff_Stan,500;');
INSERT INTO `item_db` VALUES (4018, 'Andre_Larva_Card', 'Andre Larva Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bInt,1; bonus bMaxSP,10;');
INSERT INTO `item_db` VALUES (4019, 'Hornet_Card', 'Hornet Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bStr,1; bonus bBaseAtk,3;');
INSERT INTO `item_db` VALUES (4020, 'Farmiliar_Card', 'Farmiliar Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddEff,Eff_Blind,500; bonus bBaseAtk,5;');
INSERT INTO `item_db` VALUES (4021, 'Rocker_Card', 'Rocker Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bDex,1;');
INSERT INTO `item_db` VALUES (4022, 'Spore_Card', 'Spore Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus bVit,2;');
INSERT INTO `item_db` VALUES (4023, 'Desert_Wolf_Babe_Card', 'Desert Wolf Babe Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bInt,1;');
INSERT INTO `item_db` VALUES (4024, 'Plankton_Card', 'Plankton Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddEff,Eff_Sleep,500; bonus bBaseAtk,5;');
INSERT INTO `item_db` VALUES (4025, 'Skeleton_Card', 'Skeleton Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bBaseAtk,10; bonus2 bAddEff,Eff_Stan,200;');
INSERT INTO `item_db` VALUES (4026, 'Thief_bug_Female_Card', 'Thief bug Female Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bAgi,1; bonus bFlee,1;');
INSERT INTO `item_db` VALUES (4027, 'Kukre_Card', 'Kukre Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus bAgi,2;');
INSERT INTO `item_db` VALUES (4028, 'Tarou_Card', 'Tarou Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus bStr,2;');
INSERT INTO `item_db` VALUES (4029, 'Wolf_Card', 'Wolf Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bBaseAtk,15; bonus bCritical,1;');
INSERT INTO `item_db` VALUES (4030, 'Mandragora_Card', 'Mandragora Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddEle,4,20;');
INSERT INTO `item_db` VALUES (4031, 'Pecopeco_Card', 'Pecopeco Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bMaxHPrate,10;');
INSERT INTO `item_db` VALUES (4032, 'Ambernite_Card', 'Ambernite Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus bDef,2;');
INSERT INTO `item_db` VALUES (4033, 'Poporing_Card', 'Poporing Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'skill 53,1;');
INSERT INTO `item_db` VALUES (4034, 'Worm_Tail_Card', 'Worm Tail Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus bDex,2;');
INSERT INTO `item_db` VALUES (4035, 'Hydra_Card', 'Hydra Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddRace,7,20;');
INSERT INTO `item_db` VALUES (4036, 'Muka_Card', 'Muka Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus bHPrecovRate,10;');
INSERT INTO `item_db` VALUES (4037, 'Snake_Card', 'Snake Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddEff,Eff_Poison,500; bonus bBaseAtk,5;');
INSERT INTO `item_db` VALUES (4038, 'Zombie_Card', 'Zombie Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus bHPrecovRate,20;');
INSERT INTO `item_db` VALUES (4039, 'Stainer_Card', 'Stainer Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus2 bResEff,Eff_Silence,2000; bonus bDef,1;');
INSERT INTO `item_db` VALUES (4040, 'Creamy_Card', 'Creamy Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'skill 26,1;');
INSERT INTO `item_db` VALUES (4041, 'Coco_Card', 'Coco Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus2 bResEff,Eff_Sleep,2000; bonus bDef,1;');
INSERT INTO `item_db` VALUES (4042, 'Steel_Chonchon_Card', 'Steel Chonchon Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bSubEle,4,10; bonus bDef,2;');
INSERT INTO `item_db` VALUES (4043, 'Andre_Card', 'Andre Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bBaseAtk,20;');
INSERT INTO `item_db` VALUES (4044, 'Smokie_Card', 'Smokie Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'skill 51,1;');
INSERT INTO `item_db` VALUES (4045, 'Horn_Card', 'Horn Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus bLongAtkDef,35;');
INSERT INTO `item_db` VALUES (4046, 'Martin_Card', 'Martin Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus2 bResEff,Eff_Blind,2000; bonus bDef,1;');
INSERT INTO `item_db` VALUES (4047, 'Ghostring_Card', 'Ghostring Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bDefEle,8; bonus bHPrecovRate,-25;');
INSERT INTO `item_db` VALUES (4048, 'Poison_Spore_Card', 'Poison Spore Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'skill 52,3;');
INSERT INTO `item_db` VALUES (4049, 'Vadon_Card', 'Vadon Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddEle,3,20;');
INSERT INTO `item_db` VALUES (4050, 'Thief_bug_Male_Card', 'Thief bug Male Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus bAgi,2;');
INSERT INTO `item_db` VALUES (4051, 'Yoyo_Card', 'Yoyo Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus bFlee2,5; bonus bAgi,1;');
INSERT INTO `item_db` VALUES (4052, 'Elder_Wilow_Card', 'Elder Wilow Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus bInt,2;');
INSERT INTO `item_db` VALUES (4053, 'Vitata_Card', 'Vitata Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'skill 28,1; bonus bUseSPrate,25;');
INSERT INTO `item_db` VALUES (4054, 'Angeling_Card', 'Angeling Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bDefEle,6;');
INSERT INTO `item_db` VALUES (4055, 'Marina_Card', 'Marina Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddEff,Eff_Freeze,500; bonus bBaseAtk,5;');
INSERT INTO `item_db` VALUES (4056, 'Dustiness_Card', 'Dustiness Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus2 bSubEle,4,30; bonus bFlee,5;');
INSERT INTO `item_db` VALUES (4057, 'Metaller_Card', 'Metaller Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddEff,Eff_Silence,500; bonus bBaseAtk,5;');
INSERT INTO `item_db` VALUES (4058, 'Thara_Frog_Card', 'Thara Frog Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus2 bSubRace,7,30;');
INSERT INTO `item_db` VALUES (4059, 'Soldier_Andre_Card', 'Soldier Andre Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus2 bSubRace,3,30;');
INSERT INTO `item_db` VALUES (4060, 'Goblin_Card', 'Goblin Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddRace,2,20;');
INSERT INTO `item_db` VALUES (4061, 'Cornutus_Card', 'Cornutus Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bUnbreakableArmor,0; bonus bDef,1;');
INSERT INTO `item_db` VALUES (4062, 'Anacondaq_Card', 'Anacondaq Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddEle,5,20;');
INSERT INTO `item_db` VALUES (4063, 'Caramel_Card', 'Caramel Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddRace,4,20;');
INSERT INTO `item_db` VALUES (4064, 'Zerom_Card', 'Zerom Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus bDex,3;');
INSERT INTO `item_db` VALUES (4065, 'Kaho_Card', 'Kaho Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddEle,2,20;');
INSERT INTO `item_db` VALUES (4066, 'Orc_Warrior_Card', 'Orc Warrior Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus2 bSubRace,2,30;');
INSERT INTO `item_db` VALUES (4067, 'Megalodon_Card', 'Megalodon Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus2 bResEff,Eff_Freeze,2000; bonus bDef,1;');
INSERT INTO `item_db` VALUES (4068, 'Scorpion_Card', 'Scorpion Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddRace,3,20;');
INSERT INTO `item_db` VALUES (4069, 'Drainliar_Card', 'Drainliar Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddEle,1,20;');
INSERT INTO `item_db` VALUES (4070, 'Eggyra_Card', 'Eggyra Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus bSPrecovRate,15;');
INSERT INTO `item_db` VALUES (4071, 'Orc_Zombie_Card', 'Orc Zombie Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus2 bSubEle,9,30; bonus bFlee,5;');
INSERT INTO `item_db` VALUES (4072, 'Golem_Card', 'Golem Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bUnbreakableWeapon,0; bonus bBaseAtk,5;');
INSERT INTO `item_db` VALUES (4073, 'Pirate_Skel_Card', 'Pirate Skel Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'skill 37,5;');
INSERT INTO `item_db` VALUES (4074, 'BigFoot_Card', 'BigFoot Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus2 bSubRace,4,30;');
INSERT INTO `item_db` VALUES (4075, 'Argos_Card', 'Argos Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus2 bResEff,Eff_Stone,2000; bonus bDef,1;');
INSERT INTO `item_db` VALUES (4076, 'Magnolia_Card', 'Magnolia Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddEff,Eff_Curse,500; bonus bBaseAtk,5;');
INSERT INTO `item_db` VALUES (4077, 'Phen_Card', 'Phen Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus bNoCastCancel,0; bonus bCastrate,25;');
INSERT INTO `item_db` VALUES (4078, 'Savage_Card', 'Savage Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bVit,3;');
INSERT INTO `item_db` VALUES (4079, 'Mantis_Card', 'Mantis Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus bStr,3;');
INSERT INTO `item_db` VALUES (4080, 'Flora_Card', 'Flora Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddRace,5,20;');
INSERT INTO `item_db` VALUES (4081, 'Hode_Card', 'Hode Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus2 bSubEle,2,30; bonus bFlee,5;');
INSERT INTO `item_db` VALUES (4082, 'Desert_Wolf_Card', 'Desert Wolf Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddSize,0,15; bonus bBaseAtk,5;');
INSERT INTO `item_db` VALUES (4083, 'Rafflesia_Card', 'Rafflesia Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus2 bSubRace,5,30;');
INSERT INTO `item_db` VALUES (4084, 'Marine_Sphere_Card', 'Marine Sphere Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'skill 7,3;');
INSERT INTO `item_db` VALUES (4085, 'Orc_Skeleton_Card', 'Orc Skeleton Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddEle,6,20;');
INSERT INTO `item_db` VALUES (4086, 'Soldier_Skeleton_Card', 'Soldier Skeleton Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bCritical,9;');
INSERT INTO `item_db` VALUES (4087, 'Giearth_Card', 'Giearth Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus2 bResEff,Eff_Confusion,10000; bonus2 bSubEle,2,15;');
INSERT INTO `item_db` VALUES (4088, 'Frilldora_Card', 'Frilldora Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'skill 135,1;');
INSERT INTO `item_db` VALUES (4089, 'Sword_Fish_Card', 'Sword Fish Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bDefEle,1; bonus bDef,1;');
INSERT INTO `item_db` VALUES (4090, 'Munak_Card', 'Munak Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus2 bResEff,Eff_Stone,1500; bonus2 bSubEle,2,5; bonus bDef,1;');
INSERT INTO `item_db` VALUES (4091, 'Kobold_Card', 'Kobold Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus bStr,1; bonus bCritical,4;');
INSERT INTO `item_db` VALUES (4092, 'Skel_Worker_Card', 'Skel Worker Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddSize,1,15; bonus bBaseAtk,5;');
INSERT INTO `item_db` VALUES (4093, 'Obeaune_Card', 'Obeaune Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'skill 35,1;');
INSERT INTO `item_db` VALUES (4094, 'Archer_Skeleton_Card', 'Archer Skeleton Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bLongAtkRate,10;');
INSERT INTO `item_db` VALUES (4095, 'Marse_Card', 'Marse Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus2 bSubEle,1,30;');
INSERT INTO `item_db` VALUES (4096, 'Zenorc_Card', 'Zenorc Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddEff,Eff_Poison,400; bonus bBaseAtk,10;');
INSERT INTO `item_db` VALUES (4097, 'Matyr_Card', 'Matyr Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus bMaxHPrate,10; bonus bAgi,1;');
INSERT INTO `item_db` VALUES (4098, 'Dokebi_Card', 'Dokebi Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bDefEle,4; bonus bDef,1;');
INSERT INTO `item_db` VALUES (4099, 'Pasana_Card', 'Pasana Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bDefEle,3; bonus bDef,1;');
INSERT INTO `item_db` VALUES (4100, 'Sohee_Card', 'Sohee Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus bMaxSPrate,15; bonus bSPrecovRate,3;');
INSERT INTO `item_db` VALUES (4101, 'Sand_Man_Card', 'Sand Man Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bDefEle,2; bonus bDef,1;');
INSERT INTO `item_db` VALUES (4102, 'Whisper_Card', 'Whisper Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus bFlee,20; bonus2 bSubEle,8,-50;');
INSERT INTO `item_db` VALUES (4103, 'Horong_Card', 'Horong Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'skill 10,1;');
INSERT INTO `item_db` VALUES (4104, 'Requiem_Card', 'Requiem Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddEff,Eff_Confusion,500;');
INSERT INTO `item_db` VALUES (4105, 'Marc_Card', 'Marc Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bSubEle,1,5; bonus2 bResEff,Eff_Freeze,10000;');
INSERT INTO `item_db` VALUES (4106, 'Mummy_Card', 'Mummy Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bHit,20;');
INSERT INTO `item_db` VALUES (4107, 'Verit_Card', 'Verit Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus bMaxHPrate,8; bonus bMaxSPrate,8;');
INSERT INTO `item_db` VALUES (4108, 'Myst_Card', 'Myst Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus2 bSubEle,5,30; bonus bFlee,5;');
INSERT INTO `item_db` VALUES (4109, 'Jakk_Card', 'Jakk Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus2 bSubEle,3,30; bonus bFlee,5;');
INSERT INTO `item_db` VALUES (4110, 'Ghoul_Card', 'Ghoul Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus2 bResEff,Eff_Poison,2000; bonus bDef,1;');
INSERT INTO `item_db` VALUES (4111, 'Strouf_Card', 'Strouf Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddRace,6,20;');
INSERT INTO `item_db` VALUES (4112, 'Marduk_Card', 'Marduk Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus2 bResEff,Eff_Silence,10000;');
INSERT INTO `item_db` VALUES (4113, 'Marionette_Card', 'Marionette Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus2 bSubEle,8,30; bonus bFlee,5;');
INSERT INTO `item_db` VALUES (4114, 'Argiope_Card', 'Argiope Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bDefEle,5; bonus bDef,1;');
INSERT INTO `item_db` VALUES (4115, 'Hunter_Fly_Card', 'Hunter Fly Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bHpDrainRate,3,15;');
INSERT INTO `item_db` VALUES (4116, 'Isis_Card', 'Isis Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus2 bSubEle,7,30; bonus bFlee,5;');
INSERT INTO `item_db` VALUES (4117, 'Side_Winder_Card', 'Side Winder Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bDoubleRate,5;');
INSERT INTO `item_db` VALUES (4118, 'Petit_Card', 'Petit Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddRace,9,20;');
INSERT INTO `item_db` VALUES (4119, 'Bathory_Card', 'Bathory Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bDefEle,7;');
INSERT INTO `item_db` VALUES (4120, 'Petit__Card', 'Petit  Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus2 bSubRace,9,30;');
INSERT INTO `item_db` VALUES (4121, 'Phreeoni_Card', 'Phreeoni Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bHit,100;');
INSERT INTO `item_db` VALUES (4122, 'Deviruchi_Card', 'Deviruchi Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus bStr,1; bonus2 bResEff,Eff_Blind,10000;');
INSERT INTO `item_db` VALUES (4123, 'Eddga_Card', 'Eddga Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus bInfiniteEndure,0; bonus bMaxHPrate,-25;');
INSERT INTO `item_db` VALUES (4124, 'Medusa_Card', 'Medusa Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus2 bSubRace,6,15; bonus2 bResEff,Eff_Stone,10000;');
INSERT INTO `item_db` VALUES (4125, 'Deviace_Card', 'Deviace Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddRace,7,7; bonus2 bAddRace,2,7; bonus2 bAddRace,3,7; bonus2 bAddRace,4,7;');
INSERT INTO `item_db` VALUES (4126, 'Minorous_Card', 'Minorous Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddSize,2,15; bonus bBaseAtk,5;');
INSERT INTO `item_db` VALUES (4127, 'Nightmare_Card', 'Nightmare Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus2 bResEff,Eff_Sleep,10000; bonus bAgi,1;');
INSERT INTO `item_db` VALUES (4128, 'Golden_Bug_Card', 'Golden Bug Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus bNoMagicDamage,0; bonus bUseSPrate,100;');
INSERT INTO `item_db` VALUES (4129, 'Baphomet__Card', 'Baphomet Jr Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus bAgi,3; bonus bCritical,1;');
INSERT INTO `item_db` VALUES (4130, 'Scorpion_King_Card', 'Scorpion King Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddEle,9,20;');
INSERT INTO `item_db` VALUES (4131, 'Moonlight_Flower_Card', 'Moonlight Flower Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus bSpeedRate,25;');
INSERT INTO `item_db` VALUES (4132, 'Mistress_Card', 'Mistress Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus bNoGemStone,0; bonus bUseSPrate,25;');
INSERT INTO `item_db` VALUES (4133, 'Raydric_Card', 'Raydric Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus2 bSubEle,0,20;');
# Regain 5 % of the damage done on an enemy as SP (Success Chance 3 %). : http://roempire.com/database/?page=items&act=search&list=true&iid=&qin=t&iname=dracula&ob=nsaz
# The chance should be 10% (yes, ten) instead of 3%: http://emperium.org/cards.php?key=dracula&Weapon=1&pics=0&ok.x=34&ok.y=13#sol
INSERT INTO `item_db` VALUES (4134, 'Dracula_Card', 'Dracula Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bSpDrainRate,10,5;');
INSERT INTO `item_db` VALUES (4135, 'Orc_Lord_Card', 'Orc Lord Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bShortWeaponDamageReturn,30;');
INSERT INTO `item_db` VALUES (4136, 'Khalitzburg_Card', 'Khalitzburg Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus2 bSubRace,6,30;');
INSERT INTO `item_db` VALUES (4137, 'Drake_Card', 'Drake Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bNoSizeFix,0;');
INSERT INTO `item_db` VALUES (4138, 'Anubis_Card', 'Anubis Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus2 bSubRace,8,30;');
INSERT INTO `item_db` VALUES (4139, 'Joker_Card', 'Joker Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'skill 50,1;');
INSERT INTO `item_db` VALUES (4140, 'Knight_Of_Abyss_Card', 'Knight Of Abyss Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddRace,10,25;');
INSERT INTO `item_db` VALUES (4141, 'Evil_Druid_Card', 'Evil Druid Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bDefEle,9; bonus bInt,1; bonus bDef,1;');
INSERT INTO `item_db` VALUES (4142, 'Doppelganger_Card', 'Doppelganger Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bAspdRate,10;');
INSERT INTO `item_db` VALUES (4143, 'Orc_Hero_Card', 'Orc Hero Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus bVit,3; bonus2 bResEff,Eff_Stan,10000;');
INSERT INTO `item_db` VALUES (4144, 'Osiris_Card', 'Osiris Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus bRestartFullRecover,0;');
INSERT INTO `item_db` VALUES (4145, 'Berzebub_Card', 'Berzebub Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus bCastrate,-30;');
INSERT INTO `item_db` VALUES (4146, 'Maya_Card', 'Maya Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus bMagicDamageReturn,30;');
INSERT INTO `item_db` VALUES (4147, 'Baphomet_Card', 'Baphomet Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bHit,-10; bonus bSplashRange,1;');
INSERT INTO `item_db` VALUES (4148, 'Pharaoh_Card', 'Pharaoh Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus bUseSPrate,-30;');

# New Cards (2/15/05)
#===================================================================
INSERT INTO `item_db` VALUES (4149, 'Gargoyle_Card', 'Gargoyle Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus3 bAddMonsterDropItem,12028,4,10;');
INSERT INTO `item_db` VALUES (4150, 'Goat_Card', 'Goat Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'if(getequiprefinerycnt(2) > 5) end; bonus bMdef,5; bonus bDef,2;');
INSERT INTO `item_db` VALUES (4151, 'Gajomart_Card', 'Gajomart Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus2 bSubRace,3,-20; bonus2 bExpAddRace,3,10;');
INSERT INTO `item_db` VALUES (4152, 'Galapago_Card', 'Galapago Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus2 bAddItemHealRate,6,50; bonus3 bAddMonsterDropItem,531,4,300; bonus3 bAddMonsterDropItem,532,4,300; bonus3 bAddMonsterDropItem,534,4,300;');
INSERT INTO `item_db` VALUES (4153, 'Crab_Card', 'Crab Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bAtk,5; bonus2 bAddDamageClass,1266,30; if(isequipped(4247,4273)==0) end; bonus3 bAddMonsterDropItem,544,5,3000; bonus2 bAddEle,4,30;');
INSERT INTO `item_db` VALUES (4154, 'Dumpling_Child_Card', 'Dumpling Child Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'bonus2 bAddItemHealRate,5,50; bonus3 bAddMonsterDropItem,529,7,300; bonus3 bAddMonsterDropItem,530,7,100;');
INSERT INTO `item_db` VALUES (4155, 'Goblin_Leader_Card', 'Goblin Leader Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddRace2,1,30;');
INSERT INTO `item_db` VALUES (4156, 'Goblin_Rider_Card', 'Goblin Steam Rider Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bCritAtkRate,10; bonus2 bCriticalAddRace,0,70;');
INSERT INTO `item_db` VALUES (4157, 'Goblin_Archer_Card', 'Goblin Archer Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bCritAtkRate,10; bonus2 bCriticalAddRace,1,70;');
INSERT INTO `item_db` VALUES (4158, 'Sky_Deleter_Card', 'Sky Deleter Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bNoRegen,1; bonus bHPGainValue,100;');
INSERT INTO `item_db` VALUES (4159, 'Nine_Tail_Card', 'Nine Tail Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus bAgi,2; if(getequiprefinerycnt(5) > 8) bonus bFlee,20;');
INSERT INTO `item_db` VALUES (4160, 'Firelock_Soldier_Card', 'Firelock Soldier Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus bStr,2; if(getequiprefinerycnt(6) < 9) end; bonus bMaxHPrate,10; bonus bMaxSPrate,10;');
INSERT INTO `item_db` VALUES (4161, 'Grand_Peco_Card', 'Grand Peco Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus4 bAutoSpellWhenHit,75,1,500,0; if(isequipped(4031)==0) end; bonus bDef,3; bonus bVit,3;');
INSERT INTO `item_db` VALUES (4162, 'Grizzly_Card', 'Grizzly Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bAddEffWhenHit,Eff_Blind,300+600*(isequipped(4074));');
INSERT INTO `item_db` VALUES (4163, 'Gryphon_Card', 'Gryphon Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bFlee,2; bonus bCritical,7; if (GetPureJob == Job_Swordman) bonus4 bAutoSpell,62,50,100,1;');
INSERT INTO `item_db` VALUES (4164, 'Gullinbursti_Card', 'Gullinbursti Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus2 bSubRace,5,-20; bonus2 bExpAddRace,5,10;');
INSERT INTO `item_db` VALUES (4165, 'Gig_Card', 'Gig Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bSPGainRace,4,5; bonus bLoseSPWhenUnequip,5;');
INSERT INTO `item_db` VALUES (4166, 'Nightmare_Terror_Card', 'Nightmare Terror Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bAddEffWhenHit,Eff_Curse,100+200*(isequipped(4127));');
INSERT INTO `item_db` VALUES (4167, 'Neraid_Card', 'Neraid Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bSPGainRace,2,5; bonus bLoseSPWhenUnequip,5;');
INSERT INTO `item_db` VALUES (4168, 'Dark_Lord_Card', 'Dark Lord Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus4 bAutoSpellWhenHit,83,5,100,0; if(isequipped(4169)==0) end; bonus bMaxHPrate,20; bonus bMaxSPrate,20;	');
INSERT INTO `item_db` VALUES (4169, 'Dark_Illusion_Card', 'Dark Illusion Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus bMaxHPrate,-10; bonus bMaxSPrate,-10; bonus bCastrate,-10-10*isequipped(4168);');
INSERT INTO `item_db` VALUES (4170, 'Dark_Frame_Card', 'Dark Frame Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bAddEffWhenHit,Eff_Stone,600;');
INSERT INTO `item_db` VALUES (4171, 'Dark_Priest_Card', 'Dark Priest Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bSPVanishRate,5,10; if(BaseJob == Job_Sage) bonus bSPGainValue,1;');
INSERT INTO `item_db` VALUES (4172, 'The_Paper_Card', 'The Paper Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bCritAtkRate,20; bonus2 bSPDrainValue,-1,0; if(BaseJob == Job_Assassin) bonus bCritical,4;');
INSERT INTO `item_db` VALUES (4173, 'Demon_Pungus_Card', 'Demon Pungus Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bAddEffWhenHit,Eff_Sleep,600;');
INSERT INTO `item_db` VALUES (4174, 'Deviling_Card', 'Deviling Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus2 bSubEle,0,50; bonus2 bSubEle,1,-50; bonus2 bSubEle,2,-50; bonus2 bSubEle,3,-50; bonus2 bSubEle,4,-50; bonus2 bSubEle,5,-50; bonus2 bSubEle,6,-50; bonus2 bSubEle,7,-50; bonus2 bSubEle,8,-50; bonus2 bSubEle,9,-50;');
INSERT INTO `item_db` VALUES (4175, 'Poisonous_Toad_Card', 'Poisonous Toad Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus4 bAutoSpell,52,1,200,1;'); #need to be checked: pushback effect missing
INSERT INTO `item_db` VALUES (4176, 'Dullahan_Card', 'Dullahan Card', 6, 20, 10, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bCritAtkRate,10; bonus2 bCriticalAddRace,9,70;');
INSERT INTO `item_db` VALUES (4177, 'Dryad_Card', 'Dryad Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus2 bSubEle,2,10; bonus3 bAddMonsterDropItem,993,3,100;');
INSERT INTO `item_db` VALUES (4178, 'Dragon_Tail_Card', 'Dragon Tail Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus bAgi,1; bonus bFlee,10; bonus2 bSkillAtk,46,5; bonus2 bSkillAtk,47,5;');
INSERT INTO `item_db` VALUES (4179, 'Dragon_Fly_Card', 'Dragon Fly Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus bAgi,1; if(isequipped(4009)) bonus bFlee,18;');
INSERT INTO `item_db` VALUES (4180, 'Driller_Card', 'Driller Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bSPGainRace,9,5; bonus bLoseSPWhenUnequip,5;');
INSERT INTO `item_db` VALUES (4181, 'Disguise_Card', 'Disguise Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bAddEffWhenHit,Eff_Silence,300+600*(readparam(bVit)>76);');
INSERT INTO `item_db` VALUES (4182, 'Diabolic_Card', 'Diabolic Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bSPGainRace,6,5; bonus bLoseSPWhenUnequip,5;');
INSERT INTO `item_db` VALUES (4183, 'Vagabond_Wolf_Card', 'Vagabond Wolf Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus bStr,1; if(isequipped(4029)) bonus bFlee,18;');
INSERT INTO `item_db` VALUES (4184, 'Lava_Golem_Card', 'Lava Golem Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddRace2,4,30;');
INSERT INTO `item_db` VALUES (4185, 'Rideword_Card', 'Rideword Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus bInt,1; if(GetPureJob != Job_Acolyte) end; bonus bInt,1; bonus bMdef,1;');
INSERT INTO `item_db` VALUES (4186, 'Raggler_Card', 'Raggler Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus bStr,1; bonus bVit,1; if(isequipped(4206,4281,4321,4233)==0) end; bonus2 bSPDrainValue,2,0; bonus2 bSkillAtk,42,20; bonus bLuk,10; if(GetPureJob != Job_Merchant) end; bonus3 bAddMonsterDropItem,617,11,5; bonus bMagicDamageReturn,20;'); #need to be checked
#4187,Raydric_Archer_Card,Raydric Archer Card,6,20,0,10,,,,,,,136,,,,{},{ bonus3 bAddMonsterDropItem,12030,6,10; } 
INSERT INTO `item_db` VALUES (4187, 'Raydric_Archer_Card', 'Raydric Archer Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, NULL); #According Aegis item database, this is not implemented
INSERT INTO `item_db` VALUES (4188, 'Leib_Olmai_Card', 'Leib Olmai Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus2 bSubEle,3,10; bonus3 bAddMonsterDropItem,990,2,100;');
INSERT INTO `item_db` VALUES (4189, 'Wraith_Dead_Card', 'Wraith Dead Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bAddEffWhenHit,Eff_Curse,600;');
#4190,Wraith_Card,Wraith Card,6,20,0,10,,,,,,,136,,,,{},{ bonus3 bAddMonsterDropItem,12027,1,10; }
INSERT INTO `item_db` VALUES (4190, 'Wraith_Card', 'Wraith Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, NULL); #According Aegis item database, this is not implemented
INSERT INTO `item_db` VALUES (4191, 'Loli_Ruri_Card', 'Loli Ruri Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus4 bAutoSpellWhenHit,28,3,500,0;');
INSERT INTO `item_db` VALUES (4192, 'Rotar_Zairo_Card', 'Rotar Zairo Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bCritAtkRate,10; bonus2 bCriticalAddRace,5,70;');
INSERT INTO `item_db` VALUES (4193, 'Lude_Card', 'Lude Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'if(GetPureJob == Job_Novice) bonus4 bAutoSpellWhenHit,8,1,2000,0;');
INSERT INTO `item_db` VALUES (4194, 'Rybio_Card', 'Rybio Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bAddEffWhenHit,Eff_Stan,300+600*(readparam(bDex)>76);');
INSERT INTO `item_db` VALUES (4195, 'Leaf_Cat_Card', 'Leaf Cat Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus2 bSubEle,1,10; bonus3 bAddMonsterDropItem,991,5,100;');
INSERT INTO `item_db` VALUES (4196, 'Marin_Card', 'Marin Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus3 bAddMonsterDropItemGroup,10,11,500;');
INSERT INTO `item_db` VALUES (4197, 'Mastering_Card', 'Mastering Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus bLuk,1; if(isequipped(4001)) bonus bFlee,18;');
INSERT INTO `item_db` VALUES (4198, 'Maya_Purple_Card', 'Maya Purple Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, NULL); #bonus not implemented in freya yet
INSERT INTO `item_db` VALUES (4199, 'Merman_Card', 'Merman Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus bHPrecovRate,10; bonus bSPrecovRate,10; if(isequipped(4297,4234,4252,4178)==0) end; bonus bLongAtkRate,20; bonus bAgi,5; bonus bDex,3; bonus bPerfectHitAddRate,20; if(GetPureJob != Job_Archer) end; bonus2 bExpAddRace,2,5; bonus2 bWeaponComaRace,2,100;');
INSERT INTO `item_db` VALUES (4200, 'Megalith_Card', 'Megalith Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'if(getequiprefinerycnt(6) < 6) bonus bMdef,7;');
INSERT INTO `item_db` VALUES (4201, 'Majoruros_Card', 'Majoruros Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bAddEffWhenHit,Eff_Stan,600;');
INSERT INTO `item_db` VALUES (4202, 'Civil_Servant_Card', 'Civil Servant Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddEle,8,20;');
INSERT INTO `item_db` VALUES (4203, 'Mutant_Dragonoid_Card', 'Mutant Dragonoid Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bAtk,15; bonus4 bAutoSpell,17,3+2*(getskilllv(17)==5),500,1;');
INSERT INTO `item_db` VALUES (4204, 'Mini_Demon_Card', 'Mini Demon Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus2 bSubRace,2,-20; bonus2 bExpAddRace,2,10;');
INSERT INTO `item_db` VALUES (4205, 'Mimic_Card', 'Mimic Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus2 bAddMonsterDropItem,603,10;');
INSERT INTO `item_db` VALUES (4206, 'Myst_Case_Card', 'Myst Case Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus2 bAddMonsterDropItem,644,30;');
INSERT INTO `item_db` VALUES (4207, 'Mysteltainn_Card', 'Mysteltainn Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus2 bSubSize,0,25; bonus bDef,1;');
INSERT INTO `item_db` VALUES (4208, 'Miyabi_Ningyo_Card', 'Miyabi Ningyo Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus bMaxSPrate,10; bonus2 bSkillAtk,15,5;');
INSERT INTO `item_db` VALUES (4209, 'Violy_Card', 'Violy Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus4 bAutoSpell,318,1+4*(getskilllv(318)==5),200,0;');
INSERT INTO `item_db` VALUES (4210, 'Wanderer_Card', 'Wanderer Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'if(GetPureJob == Job_Thief) bonus bFlee,20; if(isequipped(4172,4257,4230,4272)) goto THIEF_SET; bonus4 bAutoSpell,219,1,200,0; end; THIEF_SET: bonus bAgi,5; bonus bStr,5; bonus bAspdRate,5; bonus bSpeedRate,5; bonus2 bSPDrainValue,1,0; if(GetPureJob == Job_Thief) bonus bNoGemStone,0;');
INSERT INTO `item_db` VALUES (4211, 'Vocal_Card', 'Vocal Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus bMdef,3; if(isequipped(4021)) bonus bFlee,18;');
INSERT INTO `item_db` VALUES (4212, 'Bongun_Card', 'Bongun Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus4 bAutoSpell,5,1,200,1; bonus2 bAddDamageByClass,1026,100;'); # need to be checked: pushback effect missing, according aegis
INSERT INTO `item_db` VALUES (4213, 'Brilight_Card', 'Brilight Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bAddEffWhenHit,Eff_Silence,600;');
INSERT INTO `item_db` VALUES (4214, 'Bloody_Murderer_Card', 'Bloody Murderer Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bCritAtkRate,10; bonus2 bCriticalAddRace,4,70;');
INSERT INTO `item_db` VALUES (4215, 'Blazer_Card', 'Blazer Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus3 bAddMonsterDropItemGroup,12,11,300;'); #need to be checked: rates shouldnt be the same for each item
INSERT INTO `item_db` VALUES (4216, 'Sasquatch_Card', 'Sasquatch Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bAddEffWhenHit,Eff_Freeze,600;');
INSERT INTO `item_db` VALUES (4217, 'Enchanted_Peach_Card', 'Enchanted Peach Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus4 bAutoSpell,28,1+9*(getskilllv(28)==10),200,0; if(isequipped(4280,4185,4293,4312)==0) end; bonus bVit,10; bonus bCastrate,-10; bonus bUseSPRate,-10; if(GetPureJob != Job_Acolyte) end; bonus2 bExpAddRace,1,5; bonus2 bExpAddRace,6,5; bonus2 bSubRace,6,30; bonus2 bSubRace,1,30;');
INSERT INTO `item_db` VALUES (4218, 'Succubus_Card', 'Succubus Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bMaxHP,1000; bonus bVit,-3+4*isequipped(4269); bonus bHPrecovRate,-20+30*isequipped(4269);');
INSERT INTO `item_db` VALUES (4219, 'Sage_Worm_Card', 'Sage Worm Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus3 bAddMonsterDropItemGroup,9,11,30;');
INSERT INTO `item_db` VALUES (4220, 'Solider_Card', 'Solider Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bDef,2; bonus bMdef,2;');
INSERT INTO `item_db` VALUES (4221, 'Skeleton_General_Card', 'Skeleton General Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus2 bSubRace,4,-20; bonus2 bExpAddRace,4,10;');
INSERT INTO `item_db` VALUES (4222, 'Skeleton_Prisoner_Card', 'Skel Prisoner Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bAddEffWhenHit,Eff_Sleep,300+600*(isequipped(4025));');
INSERT INTO `item_db` VALUES (4223, 'Stalactic_Golem_Card', 'Stalactic Golem Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus2 bResEff,Eff_Stan,2000; bonus bDef,1;');
#4224,Stem_Worm_Card,Stem Worm Card,6,20,0,10,,,,,,,136,,,,{},{ bonus3 bAddMonsterDropItem,12032,2,10; }
INSERT INTO `item_db` VALUES (4224, 'Stem_Worm_Card', 'Stem Worm Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, NULL); #Not implemented yet, in Aegis
INSERT INTO `item_db` VALUES (4225, 'Stone_Shooter_Card', 'Stone Shooter Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bAtk,10; bonus bHit,10;');
INSERT INTO `item_db` VALUES (4226, 'Sting_Card', 'Sting Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus bDef,2; if(getequiprefinerycnt(3) > 8) bonus bMdef,5;');
INSERT INTO `item_db` VALUES (4227, 'Spring_Rabbit_Card', 'Spring Rabbit Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus3 bAddMonsterDropItem,517,2,200; bonus3 bAddMonsterDropItem,528,2,200;'); #need to be checked
#4228,Sleeper_Card,Sleeper Card,6,20,0,10,,,,,,,136,,,,{},{ bonus3 bAddMonsterDropItem,12031,5,10; }
INSERT INTO `item_db` VALUES (4228, 'Sleeper_Card', 'Sleeper Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, NULL); #Not implemented yet, in aegis
INSERT INTO `item_db` VALUES (4229, 'Clock_Tower_Manager_Card', 'Clock Tower Manager Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus bInt,1; bonus bCastrate,-5; if(isequipped(4244,4299,4313)==0) end; bonus bMdef,3; bonus bDef,3;');
INSERT INTO `item_db` VALUES (4230, 'Shinobi_Card', 'Shinobi Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus bAgi,1; bonus4 bAutoSpellWhenHit,135,5,1000,0;');
INSERT INTO `item_db` VALUES (4231, 'Increase_Soil_Card', 'Increase Soil Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus2 bAddDamageByClass,1285,-50; bonus2 bAddDamageByClass,1286,-50; bonus2 bAddDamageByClass,1287,-50;');
INSERT INTO `item_db` VALUES (4232, 'Hermit_Plant_Card', 'Hermit Plant Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (4233, 'Baby_Leopard_Card', 'Baby Leopard Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bLuk,3; if(GetPureJob != Job_Merchant) end; bonus bUnbreakableArmor,0;');
INSERT INTO `item_db` VALUES (4234, 'Anolian_Card', 'Anolian Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus4 bAutoSpellWhenHit,45,1+9*(getskilllv(45)==10),300,0;');
INSERT INTO `item_db` VALUES (4235, 'Christmas_Cookie_Card', 'Christmas Cookie Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus2 bSubRace,8,-20; bonus2 bExpAddRace,8,10;');
INSERT INTO `item_db` VALUES (4236, 'Amon_Ra_Card', 'Amon Ra Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus bAllStats,1; bonus4 bAutoSpellWhenHit,73,10,(300+700*(readparam(bInt)>=99)),0;');
INSERT INTO `item_db` VALUES (4237, 'Owl_Duke_Card', 'Owl Duke Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus4 bAutoSpell,66,3,30,0; if(isequipped(4238)) bonus4 bAutoSpell,20,5,200,1;');
INSERT INTO `item_db` VALUES (4238, 'Owl_Baron_Card', 'Owl Baron Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus4 bAutoSpell,78,1,300,1;');
INSERT INTO `item_db` VALUES (4239, 'Iron_Fist_Card', 'Iron Fist Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus2 bSubRace,0,-20; bonus2 bExpAddRace,0,10;');
INSERT INTO `item_db` VALUES (4240, 'Arclouse_Card', 'Arclouse Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'if(getequiprefinerycnt(3) > 5) end; bonus bMdef,3; bonus bDef,2;');
INSERT INTO `item_db` VALUES (4241, 'Archangeling_Card', 'Archangeling Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus bMaxHP,300; if(readparam(bLuk)<=77) end; bonus bHPrecovRate,100; bonus bSPrecovRate,100;');
INSERT INTO `item_db` VALUES (4242, 'Apocalypse_Card', 'Apocalypse Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bVit,2; if(getequiprefinerycnt(2) > 8) bonus bMaxHP,800;');
INSERT INTO `item_db` VALUES (4243, 'Antonio_Card', 'Antonio Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus4 bAutoSpellWhenHit,26,1,5000,0;');
INSERT INTO `item_db` VALUES (4244, 'Alarm_Card', 'Alarm Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus4 bAutoSpellWhenHit,10,1,2000,0; bonus bMaxHP,300; bonus bVit,1;');
INSERT INTO `item_db` VALUES (4245, 'Am_Mut_Card', 'Am Mut Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus2 bSubRace,7,-20; bonus2 bExpAddRace,7,10;');
INSERT INTO `item_db` VALUES (4246, 'Assaulter_Card', 'Assaulter Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bCritAtkRate,10; bonus2 bCriticalAddRace,7,70;');
INSERT INTO `item_db` VALUES (4247, 'Aster_Card', 'Aster Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bAtk,5; bonus2 bAddDamageClass,1074,30;');
INSERT INTO `item_db` VALUES (4248, 'Ancient_Mummy_Card', 'Ancient Mummy Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus4 bAutoSpellWhenHit,32,5,300,0; if(isequipped(4106)) bonus bPerfectHitAddRate,20;');
INSERT INTO `item_db` VALUES (4249, 'Ancient_Worm_Card', 'Ancient Worm Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus2 bSubRace,6,-20; bonus2 bExpAddRace,6,10;');
INSERT INTO `item_db` VALUES (4250, 'Executioner_Card', 'Executioner Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus2 bSubSize,2,25; bonus bDef,1;');
INSERT INTO `item_db` VALUES (4251, 'Elder_Card', 'Elder Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddRace2,5,40;');
INSERT INTO `item_db` VALUES (4252, 'Alligator_Card', 'Alligator Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus bLongAtkDef,5;');
INSERT INTO `item_db` VALUES (4253, 'Alice_Card', 'Alice Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus2 bSubRace,10,40; bonus2 bSubRace,11,-40;');
INSERT INTO `item_db` VALUES (4254, 'Tirfing_Card', 'Tirfing Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus2 bSubSize,1,25; bonus bDef,1;');
INSERT INTO `item_db` VALUES (4255, 'Orc_Lady_Card', 'Orc Lady Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddRace2,3,30;');
#4256,Orc_Archer_Card,Orc Archer Card,6,20,0,10,,,,,,,136,,,,{},{ bonus3 bAddMonsterDropItem,12034,7,10; }
INSERT INTO `item_db` VALUES (4256, 'Orc_Archer_Card', 'Orc Archer Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, NULL); #Not implemented, in Aegis
INSERT INTO `item_db` VALUES (4257, 'Wild_Rose_Card', 'Wild Rose Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus bAgi,1; if(GetPureJob == Job_Thief) bonus bFlee2,5;');
INSERT INTO `item_db` VALUES (4258, 'Evil_Nymph_Card', 'Evil Nymph Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus bInt,1; bonus bMaxSP,50;');
INSERT INTO `item_db` VALUES (4259, 'Wooden_Golem_Card', 'Wooden Golem Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bDef,1; bonus bHPrecovRate,30;');
INSERT INTO `item_db` VALUES (4260, 'Wootan_Shooter_Card', 'Wootan Shooter Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus bDef,1; bonus2 bResEff, Eff_Confusion,2000;');
INSERT INTO `item_db` VALUES (4261, 'Wootan_Fighter_Card', 'Wootan Fighter Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus bDef,1; bonus2 bResEff, Eff_Bleeding,2000;');
#4262,Taoist_Hermit_Card,Taoist Hermit Card,6,20,0,10,,,,,,,136,,,,{},{ bonus3 bAddMonsterDropItem,12029,3,10; }
INSERT INTO `item_db` VALUES (4262, 'Taoist_Hermit_Card', 'Taoist Hermit Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, NULL); #Not implemented, in Aegis
INSERT INTO `item_db` VALUES (4263, 'Incantation_Samurai_Card', 'Incantation Samurai Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bIgnoreDefMob,0; bonus bNoRegen,1; bonus2 bHPLossRate,666,10000; bonus bDamageWhenUnequip,1000;');
INSERT INTO `item_db` VALUES (4264, 'Wind_Ghost_Card', 'Wind Ghost Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus4 bAutoSpell,84,3+7*(getskilllv(84)==10),200,1;');
#4265,Jing_Guai_Card,Jing Guai Card,6,20,0,10,,,,,,,136,,,,{},{ bonus3 bAddMonsterDropItem,12033,8,10; }
INSERT INTO `item_db` VALUES (4265, 'Jing_Guai_Card', 'Jing Guai Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, NULL); #Not implemented, in Aegis
INSERT INTO `item_db` VALUES (4266, 'Eclipse_Card', 'Eclipse Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus bVit,1; if(isequipped(4006)) bonus bFlee,18;');
INSERT INTO `item_db` VALUES (4267, 'Explosion_Card', 'Explosion Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus2 bSubRace,9,-20; bonus2 bExpAddRace,9,10;');
INSERT INTO `item_db` VALUES (4268, 'Injustice_Card', 'Injustice Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus4 bAutoSpell,136,1,500,1; if(isequipped(4277)==0) end; bonus bAtk,20; bonus bLuk,3;');
INSERT INTO `item_db` VALUES (4269, 'Incubus_Card', 'Incubus Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus bMaxSP,150; bonus bInt,-3+4*isequipped(4218); bonus bSPrecovRate,-20+30*isequipped(4218);');
INSERT INTO `item_db` VALUES (4270, 'Giant_Spider_Card', 'Giant Spider Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bAddEffWhenHit,Eff_Poison,600;');
INSERT INTO `item_db` VALUES (4271, 'Giant_Hornet_Card', 'Giant Hornet Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus2 bSubEle,4,10; bonus3 bAddMonsterDropItem,992,4,100;');
INSERT INTO `item_db` VALUES (4272, 'Dancing_Dragon_Card', 'Dancing Dragon Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus bAgi,1; bonus bCritical,3;');
INSERT INTO `item_db` VALUES (4273, 'Shellfish_Card', 'Shellfish Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bAtk,5; bonus2 bAddDamageClass,1073,30;');
INSERT INTO `item_db` VALUES (4274, 'Zombie_Master_Card', 'Zombie Master Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bSPGainRace,1,5; bonus bLoseSPWhenUnequip,5;');
INSERT INTO `item_db` VALUES (4275, 'Zombie_Prisoner_Card', 'Zombie Prisoner Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus2 bSubRace,1,-20; bonus2 bExpAddRace,1,10;');
INSERT INTO `item_db` VALUES (4276, 'Lord_of_Death_Card', 'Lord of Death Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddEff,Eff_Stan,500; bonus2 bAddEff,Eff_Curse,500; bonus2 bAddEff,Eff_Poison,500; bonus2 bAddEff,Eff_Bleeding,500; bonus2 bAddEff,EFf_Silence,500; bonus2 bWeaponComaRace,11,30;');
INSERT INTO `item_db` VALUES (4277, 'Zherlthsh_Card', 'Zherlthsh Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus bLuk,2; bonus2 bSkillAtk,324,10; bonus2 bSkillAtk,316,10;');
#4278,Gibbet_Card,Gibbet Card,6,20,0,10,,,,,,,769,,,,{},{ if(getequiprefinerycnt(1) < 6) bonus bMdef,5; }
INSERT INTO `item_db` VALUES (4278, 'Gibbet_Card', 'Gibbet Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'if(readparam(bInt) < 21 ) bonus bMdef,5;'); #As per Aegis
INSERT INTO `item_db` VALUES (4279, 'Earth_Deleter_Card', 'Earth Deleter Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bSPrecovRate,-100; bonus bSPGainValue,10; bonus bLoseSPWhenUnequip,100;');
INSERT INTO `item_db` VALUES (4280, 'Geographer_Card', 'Geographer Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus4 bAutoSpellWhenHit,34,2+8*(getskilllv(34)==10),300,0;');
INSERT INTO `item_db` VALUES (4281, 'Zipper_Bear_Card', 'Zipper Bear Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bAtk,30; bonus2 bSPDrainValue,-1,0; if(GetPureJob == Job_Merchant) bonus bUnbreakableWeapon,0;');
INSERT INTO `item_db` VALUES (4282, 'Tengu_Card', 'Tengu Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus3 bAddMonsterDropItemGroup,13,11,500;'); #Need to be checked: Drop rates are different from each item
INSERT INTO `item_db` VALUES (4283, 'Greatest_General_Card', 'Greatest General Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus4 bAutoSpell,261,5,20+200*(GetPureJob == Job_Acolyte),0;'); #Need to be checked: initial rate is 0,2
INSERT INTO `item_db` VALUES (4284, 'Chepet_Card', 'Chepet Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus4 bAutoSpell,28,5,500,1;');
INSERT INTO `item_db` VALUES (4285, 'Choco_Card', 'Choco Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus bFlee2,5; bonus bFlee,10;');
INSERT INTO `item_db` VALUES (4286, 'Karakasa_Card', 'Karakasa Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bAddEffWhenHit,Eff_Confusion,300+600*(readparam(bStr)>=77);');
INSERT INTO `item_db` VALUES (4287, 'Kapha_Card', 'Kapha Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'if(getequiprefinerycnt(5) < 6) bonus bMdef,8;');
#4288,Carat_Card,Carat Card,6,20,0,10,,,,,,,769,,,,{},{ bonus bInt,2; if(getequiprefinerycnt(1) > 8) bonus bMaxSP,150; }
INSERT INTO `item_db` VALUES (4288, 'Carat_Card', 'Carat Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus bInt,2; bonus bMaxSP,3*readparam(55);');
INSERT INTO `item_db` VALUES (4289, 'Caterpillar_Card', 'Caterpillar Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bSPGainRace,3,5; bonus bLoseSPWhenUnequip,5;');
INSERT INTO `item_db` VALUES (4290, 'Cat_o\'_Nine_Tail_Card', 'Cat o\' Nine Tail Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus bMdef,3; bonus bMagicDamageReturn,5;');
INSERT INTO `item_db` VALUES (4291, 'Kobold_Leader_Card', 'Kobold Leader Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bAddRace2,2,30;');
INSERT INTO `item_db` VALUES (4292, 'Kobold_Archer_Card', 'Kobold Archer Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bCritAtkRate,10; bonus2 bCriticalAddRace,3,70;');
INSERT INTO `item_db` VALUES (4293, 'Cookie_Card', 'Cookie Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus bLuk,2; bonus2 bSkillAtk,156,10;');
INSERT INTO `item_db` VALUES (4294, 'Quve_Card', 'Quve Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'if(GetPureJob == Job_Novice) bonus4 bAutoSpellWhenHit,29,1,1000,0; if(isequipped(4193)==0) end; bonus bMaxHP,300; bonus bMaxSP,60;');
INSERT INTO `item_db` VALUES (4295, 'Kraben_Card', 'Kraben Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bAddEffWhenHit,Eff_Blind,600;');
INSERT INTO `item_db` VALUES (4296, 'Cramp_Card', 'Cramp Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus2 bGetZenyNum,500,1; if(isequipped(4028)) bonus bStr,3;');
INSERT INTO `item_db` VALUES (4297, 'Cruiser_Card', 'Cruiser Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bCritAtkRate,10; bonus2 bCriticalAddRace,2,70;');
INSERT INTO `item_db` VALUES (4298, 'Creamy_Fear_Card', 'Creamy Fear Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bAddEffWhenHit,Eff_Confusion,600;');
INSERT INTO `item_db` VALUES (4299, 'Clock_Card', 'Clock Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus4 bAutoSpellWhenHit,249,3+7*(getskilllv(249)==10),300,0;');
INSERT INTO `item_db` VALUES (4300, 'Chimera_Card', 'Chimera Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bAddEffWhenHit,Eff_Poison,300+600*(BaseJob==Job_Assassin);');
INSERT INTO `item_db` VALUES (4301, 'Killer_Mantis_Card', 'Killer Mantis Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bAddEffWhenHit,Eff_Bleeding,600;');
INSERT INTO `item_db` VALUES (4302, 'Tao_Gunka_Card', 'Tao Gunka Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus bMaxHPrate,100; bonus bDefRate,-50; bonus bDef2Rate,-50;');
INSERT INTO `item_db` VALUES (4303, 'Giant_Whisper_Card', 'Giant Whisper Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus bFlee,10; if(readparam(bStr)>=80) bonus bAtk,20; if(readparam(bVit)>=80) bonus bMaxHPrate,3; if(readparam(bLuk)>=80) bonus bCritical,3;');
INSERT INTO `item_db` VALUES (4304, 'Tamruan_Card', 'Tamruan Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus bDef,2; bonus2 bSkillAtk,250,10; bonus2 bSkillAtk,251,10;');
INSERT INTO `item_db` VALUES (4305, 'Turtle_General_Card', 'Turtle General Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bAtkRate,20; if(GetPureJob == Job_Swordman) bonus4 bAutoSpell,7,10,300,1;');
INSERT INTO `item_db` VALUES (4306, 'Toad_Card', 'Toad Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus bFlee2,1; if(isequipped(4014)) bonus bFlee,18;');
INSERT INTO `item_db` VALUES (4307, 'Beetle_King_Card', 'Beetle King Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bSPGainRace,5,5; bonus bLoseSPWhenUnequip,5;');
INSERT INTO `item_db` VALUES (4308, 'Tri-Joint_Card', 'Tri-Joint Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bSPGainRace,0,5; bonus bLoseSPWhenUnequip,5;');
INSERT INTO `item_db` VALUES (4309, 'Parasite_Card', 'Parasite Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus bDef,1; bonus2 bSubEle,0,5;');
INSERT INTO `item_db` VALUES (4310, 'Panzer_Goblin_Card', 'Panzer Goblin Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bCritAtkRate,10; bonus2 bCriticalAddRace,6,70;');
INSERT INTO `item_db` VALUES (4311, 'Permeter_Card', 'Perimeter Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus2 bSubEle,7,15; bonus2 bSubEle,9,15;');
INSERT INTO `item_db` VALUES (4312, 'Seal_Card', 'Seal Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bFlee,3; bonus bHit,10; if(GetPureJob != Job_Acolyte) end; bonus2 bCriticalAddRace,1,90; bonus2 bCriticalAddRace,6,90;');
INSERT INTO `item_db` VALUES (4313, 'Punk_Card', 'Punk Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus4 bAutoSpellWhenHit,92,1+4*(getskilllv(92)==5),500,0;');
INSERT INTO `item_db` VALUES (4314, 'Penomena_Card', 'Penomena Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus2 bSubRace,0,30;');
INSERT INTO `item_db` VALUES (4315, 'Pest_Card', 'Pest Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bAddEffWhenHit,Eff_Stone,300+600*(readparam(bInt)>76);');
INSERT INTO `item_db` VALUES (4316, 'Fake_Angel_Card', 'Fake Angel Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bSPGainRace,8,5; bonus bLoseSPWhenUnequip,5;');
INSERT INTO `item_db` VALUES (4317, 'Mobster_Card', 'Mobster Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus bCritAtkRate,15; if(GetPureJob == Job_Thief) bonus bCritical,4;');
INSERT INTO `item_db` VALUES (4318, 'Stormy_Knight_Card', 'Stormy Knight Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus4 bAutoSpell,89,1,200,0; bonus2 bAddEffWhenHit,Eff_Freeze,2000;');
INSERT INTO `item_db` VALUES (4319, 'Freezer_Card', 'Freezer Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 64, 0, 0, 0, NULL, 'bonus bMaxHP,300; if(getequiprefinerycnt(6) >= 9) bonus2 bSkillAtk,5,10; if(isequipped(4246,4311,4220,4331)==0) end; bonus bStr,10; bonus bMaxHPrate,20; bonus bHPrecovRate,50; bonus4 bAutoSpell,112,1,30,0; bonus2 bAddMonsterDropItem,501,500; if(GetPureJob != Job_Swordman) end; bonus2 bAddItemHealRate,1,50;');
INSERT INTO `item_db` VALUES (4320, 'Bloody_Knight_Card', 'Bloody Knight Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus4 bAutoSpell,83,1,200,0;');
INSERT INTO `item_db` VALUES (4321, 'Heirozoist_Card', 'Heirozoist Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus bClassChange,100;'); # Aegis: AddChangeMonster 1, Rate: x/100
INSERT INTO `item_db` VALUES (4322, 'High_Orc_Card', 'High Orc Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, NULL, 'bonus bDef,1; bonus bShortWeaponDamageReturn,5;');
INSERT INTO `item_db` VALUES (4323, 'Garm_Baby_Card', 'Garm Baby Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus4 bAutoSpell,15,3,500+2500*isequipped(4324),1;');
INSERT INTO `item_db` VALUES (4324, 'Garm_Card', 'Garm Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, NULL, 'bonus2 bAddEffWhenHit,Eff_Freeze,5000;');
INSERT INTO `item_db` VALUES (4325, 'Harpy_Card', 'Harpy Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus2 bSubEle,0,15; bonus2 bSkillAtk,11,5; if(isequipped(4191,4208,4258,4309,4327)==0) end; bonus bMaxHP,500; bonus bDef,5; bonus bMDef,5; bonus2 bSkillAtk,14,10; bonus2 bSkillAtk,19,10; bonus2 bSkillAtk,20,10; if(GetPureJob != Job_Mage) end; bonus bMatkRate,3; bonus bCastrate,-15;');
INSERT INTO `item_db` VALUES (4326, 'Sea_Otter_Card', 'Sea Otter Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus2 bAddItemHealRate,7,50; bonus3 bAddMonsterDropItem,544,5,300; bonus3 bAddMonsterDropItem,551,5,300;');
INSERT INTO `item_db` VALUES (4327, 'Bloody_Butterfly_Card', 'Bloody Butterfly Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus bCastrate,30; bonus bNoCastCancel,0; bonus2 bSkillAtk,18,5;');
INSERT INTO `item_db` VALUES (4328, 'Hyegun_Card', 'Hyegun Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, NULL, 'bonus bFlee,15; bonus bCritical,1; if(isequipped(4090,4212)) bonus bAllStats,1;');
INSERT INTO `item_db` VALUES (4329, 'Phendark_Card', 'Phendark Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, 'bonus2 bSPGainRace,7,5; bonus bLoseSPWhenUnequip,5;');
INSERT INTO `item_db` VALUES (4330, 'Evil_Snake_Lord_Card', 'Evil Snake Lord Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 769, 0, 0, 0, NULL, 'bonus bInt,3; bonus2 bResEff,Eff_Blind,10000; bonus2 bResEff,Eff_Curse,10000;');
INSERT INTO `item_db` VALUES (4331, 'Heater_Card', 'Heater Card', 6, 20, 0, 10, 0, 0, 0, 0, 0, 0, 136, 0, 0, 0, NULL, 'bonus bCritical,3; if(GetPureJob == Job_Swordman) bonus bFlee2,3;');

# Extra Headgears
INSERT INTO `item_db` VALUES (5001, 'Headset', 'Headset', 5, 20, 0, 200, 0, 3, 0, 0, 18866174, 2, 256, 0, 0, 87, NULL, 'bonus2 bResEff,Eff_Curse,1000;');
INSERT INTO `item_db` VALUES (5002, 'Jewel_Crown', 'Jewel Crown', 5, 20, 0, 600, 0, 4, 0, 0, 414946, 2, 256, 0, 60, 88, NULL, 'bonus bMdef,3; bonus bInt,2; bonus bLuk,1;');
INSERT INTO `item_db` VALUES (5003, 'Joker_Jester', 'Joker Jester', 5, 20, 0, 100, 0, 1, 0, 0, 18866174, 2, 256, 0, 0, 89, NULL, 'bonus bMdef,5; bonus bLuk,2;');
INSERT INTO `item_db` VALUES (5004, 'Oxygen_Mask', 'Oxygen Mask', 5, 20, 0, 200, 0, 0, 0, 0, 18866174, 2, 1, 0, 0, 90, NULL, 'bonus2 bResEff,Eff_Poison,2000;');
INSERT INTO `item_db` VALUES (5005, 'Gas_Mask', 'Gas Mask', 5, 20, 0, 100, 0, 1, 0, 0, 18866174, 2, 513, 0, 0, 91, NULL, 'bonus2 bResEff,Eff_Poison,3000;');
INSERT INTO `item_db` VALUES (5006, 'Machoman_Glasses', 'Machoman\'s Glasses', 5, 36000, 0, 100, 0, 1, 0, 0, 18866174, 2, 512, 0, 0, 92, NULL, NULL);
INSERT INTO `item_db` VALUES (5007, 'Grand_Circlet', 'Grand Circlet', 5, 20, 0, 200, 0, 3, 0, 0, 18866174, 2, 256, 0, 55, 93, NULL, 'bonus bMdef,4; bonus bStr,1; bonus bInt,1; bonus bLuk,1;');
INSERT INTO `item_db` VALUES (5008, 'Puppy_Love', 'Puppy Love', 5, 20, 0, 100, 0, 1, 0, 0, 18866174, 2, 256, 0, 0, 94, NULL, NULL);
INSERT INTO `item_db` VALUES (5009, 'Safety_Helmet', 'Safety Helmet', 5, 20, 0, 500, 0, 3, 0, 0, 18866174, 2, 256, 0, 0, 95, NULL, 'bonus bMdef,3; bonus bUnbreakableHelm,0;');
INSERT INTO `item_db` VALUES (5010, 'Indian_Hair_Piece', 'Indian Fillet', 5, 20, 0, 100, 0, 3, 0, 0, 27254783, 2, 256, 0, 0, 96, NULL, NULL);
INSERT INTO `item_db` VALUES (5011, 'Aerial', 'Aerial', 5, 20, 0, 100, 0, 3, 0, 0, 27254783, 2, 256, 0, 0, 97, NULL, NULL);
INSERT INTO `item_db` VALUES (5012, 'Ph.D_Hat', 'Ph.D Hat', 5, 20, 0, 200, 0, 3, 0, 0, 18866174, 2, 256, 0, 0, 98, NULL, 'bonus bMdef,3;');
INSERT INTO `item_db` VALUES (5013, 'Horn_Of_Lord_Kaho', 'Lord Kaho\'s Horn', 5, 20, 0, 100, 0, 5, 0, 0, 27254783, 2, 256, 0, 0, 99, NULL, 'bonus bMdef,10; bonus bStr,5; bonus bAgi,10; bonus bVit,10; bonus bInt,5; bonus bLuk,20;');
INSERT INTO `item_db` VALUES (5014, 'Fin_Helm', 'Fin Helm', 5, 20, 0, 300, 0, 2, 0, 0, 16514, 2, 512, 0, 65, 100, NULL, NULL);
INSERT INTO `item_db` VALUES (5015, 'Egg_Shell', 'Egg Shell', 5, 20, 0, 200, 0, 3, 0, 0, 27254783, 2, 256, 0, 0, 101, NULL, NULL);
INSERT INTO `item_db` VALUES (5016, 'Boy\'s_Cap', 'Boy\'s Cap', 5, 20, 0, 100, 0, 2, 0, 0, 18866174, 2, 256, 0, 0, 102, NULL, NULL);
INSERT INTO `item_db` VALUES (5017, 'Bone_Helm', 'Bone Helm', 5, 20, 0, 800, 0, 7, 0, 0, 279714, 2, 256, 0, 70, 103, NULL, 'bonus2 bSubEle,7,-15;');
INSERT INTO `item_db` VALUES (5018, 'Feather_Bonnet', 'Feather Bonnet', 5, 20, 0, 300, 0, 4, 0, 0, 1574920, 2, 256, 0, 0, 104, NULL, 'bonus bAgi,1;');
INSERT INTO `item_db` VALUES (5019, 'Corsair', 'Corsair', 5, 20, 0, 500, 0, 5, 0, 0, 18866174, 2, 256, 0, 0, 105, NULL, 'bonus bVit,1;');
INSERT INTO `item_db` VALUES (5020, 'Kafra_Band', 'Kafra\'s Band', 5, 20, 0, 500, 0, 3, 0, 0, 27254783, 2, 256, 0, 0, 106, NULL, 'bonus bMdef,3;');
INSERT INTO `item_db` VALUES (5021, 'Bankruptcy_of_Heart', 'Money Loser\'s Grief', 5, 20, 0, 1200, 0, 4, 0, 0, 263200, 2, 256, 0, 38, 107, NULL, 'bonus bInt,1; bonus bDex,1;');
INSERT INTO `item_db` VALUES (5022, 'Solar_God_Helm', 'Solar God Helm', 5, 20, 0, 2400, 0, 4, 0, 0, 2088832, 2, 768, 0, 0, 138, NULL, 'bonus bStr,3; bonus bInt,2;');
INSERT INTO `item_db` VALUES (5023, 'Parcel_Hat', 'Parcel Hat', 5, 20, 0, 1000, 0, 0, 0, 0, 263200, 2, 256, 0, 0, 108, NULL, NULL);
INSERT INTO `item_db` VALUES (5024, 'Cake_Hat', 'Cake Hat', 5, 20, 0, 1500, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 109, NULL, NULL);
INSERT INTO `item_db` VALUES (5025, 'Angel_Helm', 'Angel Helm', 5, 20, 0, 1600, 0, 5, 0, 0, 2088832, 2, 256, 0, 74, 110, NULL, 'bonus bAgi,1; bonus bLuk,1; bonus bMdef,3;');
INSERT INTO `item_db` VALUES (5026, 'Chef_Hat', 'Chef\'s Hat', 5, 20, 0, 300, 0, 1, 0, 0, 18866174, 2, 256, 0, 50, 111, NULL, 'bonus bDex,1;');
INSERT INTO `item_db` VALUES (5027, 'Mage_Hat', 'Mage Hat', 5, 20, 0, 300, 0, 1, 0, 0, 66052, 2, 256, 0, 0, 112, NULL, 'bonus bInt,2; bonus bMaxSP,150;');
INSERT INTO `item_db` VALUES (5028, 'Candle', 'Candle', 5, 20, 0, 150, 0, 5, 0, 0, 27254783, 2, 256, 0, 0, 113, NULL, NULL);
INSERT INTO `item_db` VALUES (5029, 'Spore_Hat', 'Spore Hat', 5, 20, 0, 900, 0, 3, 0, 0, 18866174, 2, 256, 0, 20, 114, NULL, NULL);
INSERT INTO `item_db` VALUES (5030, 'Panda_Hat', 'Panda Hat', 5, 20, 0, 800, 0, 3, 0, 0, 18866174, 2, 256, 0, 40, 115, NULL, NULL);
INSERT INTO `item_db` VALUES (5031, 'Miner\'s_Helmet', 'Miner\'s Helmet', 5, 20, 0, 1500, 0, 4, 0, 0, 447986, 2, 256, 0, 55, 116, NULL, 'bonus bDex,2;');
INSERT INTO `item_db` VALUES (5032, 'Sunday_Hat', 'Sunday Hat', 5, 20, 0, 800, 0, 1, 0, 0, 18866174, 2, 256, 0, 0, 117, NULL, NULL);
INSERT INTO `item_db` VALUES (5033, 'Smokie_Hat', 'Smokie Hat', 5, 20, 0, 900, 0, 3, 0, 0, 27254783, 2, 256, 0, 50, 118, NULL, NULL);
INSERT INTO `item_db` VALUES (5034, 'Lightbulb_Hairband', 'Lightbulb Hairband', 5, 20, 0, 500, 0, 0, 0, 0, 18866174, 2, 256, 0, 0, 119, NULL, NULL);
INSERT INTO `item_db` VALUES (5035, 'Poring_Hat', 'Poring Hat', 5, 20, 0, 700, 0, 2, 0, 0, 18866174, 2, 256, 0, 38, 120, NULL, NULL);
INSERT INTO `item_db` VALUES (5036, 'Cross_Hairband', 'Cross Hairband', 5, 20, 0, 250, 0, 1, 0, 0, 18866174, 2, 256, 0, 10, 121, NULL, NULL);
INSERT INTO `item_db` VALUES (5037, 'Fruit_Shell', 'Apple Hat', 5, 20, 0, 150, 0, 4, 0, 0, 27254783, 2, 256, 0, 5, 122, NULL, NULL);
INSERT INTO `item_db` VALUES (5038, 'Deviruchi_Hat', 'Deviruchi Hat', 5, 20, 0, 800, 0, 2, 0, 0, 18866174, 2, 256, 0, 64, 123, NULL, 'bonus bStr,1; bonus bInt,1;');
INSERT INTO `item_db` VALUES (5039, 'Rainbow_Eggshell', 'Rainbow Eggshell', 5, 20, 0, 400, 0, 4, 0, 0, 27254783, 2, 256, 0, 19, 124, NULL, NULL);
INSERT INTO `item_db` VALUES (5040, 'Blush', 'Blush', 5, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 512, 0, 0, 125, NULL, NULL);
INSERT INTO `item_db` VALUES (5041, 'Heart_Hairpin', 'Heart Hairpin', 5, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 256, 0, 0, 126, NULL, NULL);
INSERT INTO `item_db` VALUES (5042, 'Hair_Protector', 'Dumpling Decoration', 5, 20, 0, 150, 0, 0, 0, 0, 27254783, 2, 256, 0, 14, 127, NULL, NULL);
INSERT INTO `item_db` VALUES (5043, 'Opera_Ghost_Mask', 'Opera Ghost Mask', 5, 20, 0, 200, 0, 1, 0, 0, 18866174, 2, 512, 0, 20, 128, NULL, NULL);
INSERT INTO `item_db` VALUES (5044, 'Wing_Of_Demon', 'Wings of Demon', 5, 20, 0, 350, 0, 2, 0, 0, 27254783, 2, 256, 0, 45, 129, NULL, NULL);
INSERT INTO `item_db` VALUES (5045, 'Magician_Hat', 'Magic Hat', 5, 20, 0, 500, 0, 3, 0, 0, 2147483647, 2, 256, 0, 50, 130, NULL, 'bonus bDex,1; bonus bAgi,1; bonus bMaxSP,50;');
INSERT INTO `item_db` VALUES (5046, 'Bongun_Hat', 'Bongun Hat', 5, 20, 0, 300, 0, 5, 0, 0, 27254783, 2, 769, 0, 0, 139, NULL, NULL);
INSERT INTO `item_db` VALUES (5047, 'Fashion_Sunglasses', 'Fashion Sunglasses', 5, 20, 0, 100, 0, 0, 0, 0, 18866174, 2, 256, 0, 0, 131, NULL, NULL);
INSERT INTO `item_db` VALUES (5048, 'Cresent_Hairpin', 'Cresent Hairpin', 5, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 256, 0, 0, 132, NULL, NULL);
INSERT INTO `item_db` VALUES (5049, 'Striped_Bandana', 'Striped Bandana', 5, 20, 0, 150, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 133, NULL, NULL);
INSERT INTO `item_db` VALUES (5050, 'Mysterious_Fruit_Shell', 'Mysterious Fruit Shell', 5, 20, 0, 300, 0, 5, 0, 0, 27254783, 2, 256, 0, 30, 134, NULL, NULL);
INSERT INTO `item_db` VALUES (5051, 'Bell_of_Pussycat', 'Bell of Pussycat', 5, 20, 0, 100, 0, 5, 0, 0, 27254783, 2, 1, 0, 0, 135, NULL, NULL);
INSERT INTO `item_db` VALUES (5052, 'Blue_Bandana', 'Blue Bandana', 5, 20, 0, 150, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 136, NULL, NULL);
INSERT INTO `item_db` VALUES (5053, 'Sphinx_Hat', 'Sphinx Hat', 5, 20, 0, 3000, 0, 5, 0, 0, 16514, 2, 257, 0, 65, 137, NULL, 'bonus bStr,2;');
INSERT INTO `item_db` VALUES (5054, 'Assassin_Mask', 'Assassin Mask', 5, 20, 0, 100, 0, 0, 0, 0, 4096, 2, 1, 0, 70, 180, NULL, NULL);
INSERT INTO `item_db` VALUES (5055, 'Novice_Eggshell', 'Novice Eggshell', 5, 20, 0, 10, 0, 3, 0, 0, 8388609, 2, 256, 0, 0, 101, NULL, NULL);
INSERT INTO `item_db` VALUES (5056, 'Seed_Of_Love', 'Seed Of Love', 5, 20, 0, 200, 0, 0, 0, 0, 27254783, 2, 256, 0, 0, 140, NULL, NULL);
INSERT INTO `item_db` VALUES (5057, 'Black_Cat_Ears', 'Black Cat Ears', 5, 20, 0, 200, 0, 2, 0, 0, 27254783, 2, 256, 0, 45, 141, NULL, NULL);
INSERT INTO `item_db` VALUES (5058, 'Resting_Cat', 'Resting Cat', 5, 20, 0, 500, 0, 1, 0, 0, 18866174, 2, 256, 0, 0, 142, NULL, 'bonus bMDef,15; bonus2 bResEff,Eff_Curse,3000;');
INSERT INTO `item_db` VALUES (5059, 'Bear_Hat', 'Bear Hat', 5, 20, 0, 800, 0, 3, 0, 0, 27254783, 2, 256, 0, 50, 143, NULL, NULL);
INSERT INTO `item_db` VALUES (5060, 'Pointy_Cap', 'Pointy Cap', 5, 20, 0, 300, 0, 3, 0, 0, 27254783, 2, 256, 0, 0, 144, NULL, 'bonus bLuk,1;');
INSERT INTO `item_db` VALUES (5061, 'Flower_Hairpin', 'Flower Hairpin', 5, 20, 0, 100, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 145, NULL, NULL);
INSERT INTO `item_db` VALUES (5062, 'Straw_Hat', 'Straw Hat', 5, 20, 0, 200, 0, 3, 0, 0, 27254783, 2, 256, 0, 50, 146, NULL, 'bonus bAgi,1;');
INSERT INTO `item_db` VALUES (5063, 'Bandage', 'Bandage', 5, 20, 0, 100, 0, 1, 0, 0, 18866174, 2, 256, 0, 0, 147, NULL, NULL);
INSERT INTO `item_db` VALUES (5064, 'Transformation_Leaf', 'Transformation Leaf', 5, 20, 0, 100, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 148, NULL, NULL);
INSERT INTO `item_db` VALUES (5065, 'Fresh_Blueish_Fish', 'Fresh Blueish Fish', 5, 20, 0, 500, 0, 2, 0, 0, 27254783, 2, 256, 0, 50, 149, NULL, 'bonus2 bAddRace,5,10;');
INSERT INTO `item_db` VALUES (5066, 'Horns_Of_Succubus', 'Horns of Succubus', 5, 20, 0, 800, 0, 4, 0, 0, 18866174, 2, 256, 0, 70, 150, NULL, 'bonus bInt,1; bonus bMdef,10;');
INSERT INTO `item_db` VALUES (5067, 'Sombrero', 'Sombrero', 5, 20, 0, 350, 0, 4, 0, 0, 18866174, 2, 256, 0, 0, 151, NULL, 'bonus bAgi,1;');
INSERT INTO `item_db` VALUES (5068, 'Ears_of_Demon', 'Ears Of Demon', 5, 20, 0, 100, 0, 1, 0, 0, 27254783, 2, 512, 0, 70, 152, NULL, 'bonus bStr,1;');
INSERT INTO `item_db` VALUES (5069, 'Fox_Mask', 'Fox Mask', 5, 20, 0, 300, 0, 1, 0, 0, 18866174, 2, 256, 0, 0, 153, NULL, 'bonus bAgi,1; bonus bLuk,1;');
INSERT INTO `item_db` VALUES (5070, 'Burning_Blood_Bandana', 'Burning Blood Bandana', 5, 20, 0, 100, 0, 1, 0, 0, 18866174, 2, 256, 0, 0, 154, NULL, 'bonus bStr,2;');
INSERT INTO `item_db` VALUES (5071, 'Indian_Headband', 'Indian Headband', 5, 20, 0, 200, 0, 1, 0, 0, 18866174, 2, 256, 0, 0, 155, NULL, 'bonus bDex,1;');
INSERT INTO `item_db` VALUES (5072, 'Horns_Of_Incubus', 'Horns Of Incubus', 5, 20, 0, 800, 0, 4, 0, 0, 18866174, 2, 256, 0, 70, 156, NULL, 'bonus bAgi,1; bonus bMdef,10;');
INSERT INTO `item_db` VALUES (5073, 'Posture_Fix_Hat', 'Posture Fix Hat', 5, 20, 0, 700, 0, 2, 0, 0, 18866174, 2, 256, 0, 0, 157, NULL, 'bonus bDex,2;');
INSERT INTO `item_db` VALUES (5074, 'Ears_of_Angel', 'Ears of Angel', 5, 20, 0, 100, 0, 1, 0, 0, 27254783, 2, 512, 0, 70, 158, NULL, 'bonus bStr,1;');
INSERT INTO `item_db` VALUES (5075, 'Cowboy_Hat', 'Cowboy Hat', 5, 20, 0, 500, 0, 4, 0, 0, 27254783, 2, 256, 0, 0, 159, NULL, NULL);
INSERT INTO `item_db` VALUES (5076, 'Wool_Hat', 'Wool Hat', 5, 20, 0, 350, 0, 2, 0, 0, 27254783, 2, 256, 0, 0, 160, NULL, 'bonus bLuk,1;');
INSERT INTO `item_db` VALUES (5077, 'Tulip_Hairpin', 'Tulip Hairpin', 5, 20, 0, 100, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 161, NULL, NULL);
INSERT INTO `item_db` VALUES (5078, 'Sea_Otter_Hat', 'Sea Otter Hat', 5, 20, 0, 800, 0, 3, 0, 0, 27254783, 2, 256, 0, 50, 162, NULL, 'bonus bVit,1;');
INSERT INTO `item_db` VALUES (5079, 'X_Hairpin', 'X Hairpin', 5, 20, 0, 100, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 163, NULL, NULL);
INSERT INTO `item_db` VALUES (5080, 'Crown_of_Ancient_Queen', 'Crown Ancient Queen', 5, 20, 0, 400, 0, 4, 0, 0, 27254783, 2, 256, 0, 45, 164, NULL, NULL);
INSERT INTO `item_db` VALUES (5081, 'Crown_of_Mistress', 'Crown of Mistress', 5, 20, 0, 100, 0, 1, 0, 0, 18866174, 0, 256, 0, 75, 165, NULL, 'bonus bMaxSP,100; bonus bInt,2; bonus bUnbreakableHelm,0;');
INSERT INTO `item_db` VALUES (5082, 'Mushroom_Hairband', 'Mushroom Hairband', 5, 20, 0, 100, 0, 2, 0, 0, 27254783, 2, 256, 0, 0, 166, NULL, NULL);
INSERT INTO `item_db` VALUES (5083, 'Back_Ribbon', 'Back Ribbon', 5, 20, 0, 200, 0, 1, 0, 0, 27254783, 0, 256, 0, 45, 167, NULL, 'bonus bMdef,10;');
INSERT INTO `item_db` VALUES (5084, 'Lazy_Raccoon_Hat', 'Lazy Racoon Hat', 5, 20, 0, 500, 0, 1, 0, 0, 18866174, 2, 256, 0, 0, 168, NULL, 'bonus2 bResEff,Eff_Sleep,2000;');
INSERT INTO `item_db` VALUES (5085, 'Small_Twin_Ribbons', 'Small Twin Ribbons', 5, 20, 0, 100, 0, 1, 0, 0, 27254783, 0, 512, 0, 45, 169, NULL, NULL);
INSERT INTO `item_db` VALUES (5086, 'Alarm_Mask', 'Alarm Mask', 5, 20, 0, 100, 0, 2, 0, 0, 27254783, 2, 513, 0, 0, 170, NULL, 'bonus2 bResEff,Eff_Blind,5000;');
INSERT INTO `item_db` VALUES (5087, 'Expressionless_Mask', 'Expressionless Mask', 5, 20, 0, 100, 0, 1, 0, 0, 27254783, 2, 513, 0, 0, 171, NULL, NULL);
INSERT INTO `item_db` VALUES (5088, 'Surprised_Mask', 'Surprised Mask', 5, 20, 0, 100, 0, 1, 0, 0, 27254783, 2, 513, 0, 0, 172, NULL, NULL);
INSERT INTO `item_db` VALUES (5089, 'Annoyed_Mask', 'Annoyed Mask', 5, 20, 0, 100, 0, 1, 0, 0, 27254783, 2, 513, 0, 0, 173, NULL, NULL);
INSERT INTO `item_db` VALUES (5090, 'Goblin_Leader_Mask', 'Goblin Leader Mask', 5, 20, 0, 100, 0, 2, 0, 0, 27254783, 2, 513, 0, 0, 174, NULL, NULL);
INSERT INTO `item_db` VALUES (5091, 'Golden_Bells', 'Golden Bells', 5, 20, 0, 200, 0, 2, 0, 0, 18866174, 2, 768, 0, 35, 175, NULL, NULL);
INSERT INTO `item_db` VALUES (5092, 'Nun_Hat', 'Nun Hat', 5, 150000, 0, 300, 0, 5, 0, 0, 33024, 0, 768, 0, 65, 176, NULL, NULL);
INSERT INTO `item_db` VALUES (5093, 'Nun_Hat_', 'Nun Hat', 5, 20, 0, 300, 0, 5, 0, 1, 33024, 0, 768, 0, 65, 177, NULL, 'bonus bMaxSP,100;');
INSERT INTO `item_db` VALUES (5094, 'Orc_Hero_Helm', 'Orc Hero Helm', 5, 20, 0, 900, 0, 5, 0, 0, 18866174, 2, 768, 0, 55, 178, NULL, 'bonus bStr,2; bonus bVit,1;');

INSERT INTO `item_db` VALUES (5096, 'Assassin_Mask_', 'Assassin Mask', 5, 20, 0, 100, 0, 0, 0, 0, 4096, 2, 1, 0, 70, 180, NULL, NULL);
INSERT INTO `item_db` VALUES (5097, 'Annual_Commemoration_Hat', 'Annual Commemoration Hat', 5, 20, 0, 30, 0, 3, 0, 0, 27254783, 2, 256, 0, 0, 166, NULL, 'bonus bAllStats,3;');
INSERT INTO `item_db` VALUES (5098, 'Tiger_Mask', 'Tiger Mask', 5, 20, 0, 400, 0, 2, 0, 0, 27254783, 2, 768, 0, 0, 181, NULL, 'bonus bStr,3; bonus bMaxHP,100;');

INSERT INTO `item_db` VALUES (5099, 'Neko_Mimi', 'Neko Mimi', 5, 20, 0, 300, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 182, NULL, 'bonus bLuk,2; bonus bMdef,10; bonus2 bSubRace,2,5;');
INSERT INTO `item_db` VALUES (5100, 'Sale_Sign', 'Sale Sign', 5, 20, 0, 800, 0, 1, 0, 0, 27254783, 2, 256, 0, 75, 183, NULL, 'bonus bStr,1; bonus bAgi,1; bonus bLuk,1;');
INSERT INTO `item_db` VALUES (5101, 'Takius_Blindfold', 'Takius\' Blindfold', 5, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 512, 0, 0, 184, NULL, NULL);
INSERT INTO `item_db` VALUES (5102, 'Round_Eyes', 'Round Eyes', 5, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 512, 0, 0, 185, NULL, NULL);
INSERT INTO `item_db` VALUES (5103, 'Sunflower_Pin', 'Sunflower Hairpin', 5, 20, 0, 600, 0, 0, 0, 0, 18866174, 2, 256, 0, 30, 186, NULL, 'bonus bAgi,2; bonus bCriticalRate,5;'); #Not refinable
INSERT INTO `item_db` VALUES (5104, 'Black_Blindfold', 'Black Blindfold', 5, 20, 0, 100, 0, 0, 0, 0, 18866174, 2, 512, 0, 0, 184, NULL, 'bonus2 bResEff,Eff_Blind,10000; bonus2 bResEff,Eff_Stan,200;');
INSERT INTO `item_db` VALUES (5105, '2nd_Anniversary_Cake_Hat', 'Chinese Cake Hat', 5, 20, 0, 1000, 0, 1, 0, 0, 27254783, 2, 256, 0, 24, 109, NULL, 'bonus bDex,1; bonus bMaxSP,80;');
INSERT INTO `item_db` VALUES (5106, '2nd_Anniversary_Hat', '2nd Anniversary Hat', 5, 20, 0, 300, 0, 3, 0, 0, 27254783, 2, 256, 0, 24, 144, NULL, 'bonus bLuk,1;');
INSERT INTO `item_db` VALUES (5107, 'Well_Done_Toast', 'Slice of Toast', 5, 20, 0, 50, 0, 0, 0, 0, 27254783, 2, 1, 0, 0, 188, NULL, NULL);
INSERT INTO `item_db` VALUES (5108, 'Detective_Hat', 'Detective Hat', 5, 20, 0, 350, 0, 3, 0, 1, 27254783, 2, 256, 0, 0, 189, NULL, NULL);
INSERT INTO `item_db` VALUES (5109, 'Red_Bonnet', 'Red Bonnet', 5, 20, 0, 400, 0, 2, 0, 0, 27254783, 2, 256, 0, 0, 190, NULL, NULL);
INSERT INTO `item_db` VALUES (5110, 'Baby_Rubber_Nipple', 'Baby Rubber Nipple', 5, 20, 0, 50, 0, 0, 0, 0, 27254783, 2, 1, 0, 0, 191, NULL, NULL);
INSERT INTO `item_db` VALUES (5111, 'Galapago_Hat', 'Galapago Hat', 5, 20, 0, 500, 0, 2, 0, 0, 27254783, 2, 256, 0, 55, 192, NULL, 'bonus3 bAddMonsterDropItem,605,11,200;');
INSERT INTO `item_db` VALUES (5112, 'Super_Novice_Hat', 'Super Novice Hat', 5, 5000, 0, 400, 0, 4, 0, 0, 8388609, 2, 256, 0, 40, 193, NULL, 'bonus bAllStats,1;');
INSERT INTO `item_db` VALUES (5113, 'Angry_Teeth', 'Angry Teeth', 5, 20, 0, 50, 0, 0, 0, 0, 27254783, 2, 1, 0, 0, 194, NULL, NULL);
INSERT INTO `item_db` VALUES (5114, 'Soldier\'s_Felt_Hat', 'Soldier\'s Felt Hat', 5, 6000, 0, 300, 0, 3, 0, 0, 27254783, 2, 256, 0, 0, 195, NULL, NULL);
INSERT INTO `item_db` VALUES (5115, 'Fashionable_Fur_Hat', 'Winter Cap', 5, 20, 0, 500, 0, 3, 0, 0, 27254783, 2, 256, 0, 0, 196, NULL, 'bonus2 bResEff,Eff_Freeze,1000;');
INSERT INTO `item_db` VALUES (5116, 'Banana_Hat', 'Banana Hat', 5, 20, 0, 200, 0, 1, 0, 0, 27254783, 2, 256, 0, 0, 197, NULL, 'bonus4 bAutoSpell,6,3,700,1;'); #autospell rate is unknown,
INSERT INTO `item_db` VALUES (5117, 'Mystic_Rose', 'Mystic Rose', 5, 20, 0, 100, 0, 0, 0, 0, 27254783, 2, 256, 0, 0, 198, NULL, 'bonus2 bSubRace,3,2;');
INSERT INTO `item_db` VALUES (5118, 'Puppy_Ear_Hairband', 'Dog Ear Headband', 5, 20, 0, 100, 0, 2, 0, 0, 27254783, 2, 256, 0, 0, 199, NULL, NULL);
INSERT INTO `item_db` VALUES (5119, 'Super_Novice_Hat_', 'Super Novice Hat', 5, 5000, 0, 400, 0, 4, 0, 1, 8388609, 2, 256, 0, 40, 193, NULL, 'bonus bAllStats,1;');
INSERT INTO `item_db` VALUES (5120, 'Soldier\'s_Felt_Hat_', 'Soldier\'s Felt Hat', 5, 6000, 0, 300, 0, 3, 0, 1, 27254783, 2, 256, 0, 0, 195, NULL, NULL);
INSERT INTO `item_db` VALUES (5121, 'Mask_of_Zherlthsh', 'Zealotus Mask', 5, 20, 0, 100, 0, 3, 0, 0, 27254783, 2, 768, 0, 0, 200, NULL, 'bonus2 bAddRace,7,5; bonus2 bSubRace,7,5;');
INSERT INTO `item_db` VALUES (5122, 'Megin_Cap', 'Megin Cap', 5, 20, 0, 1000, 0, 5, 0, 0, 18866174, 2, 256, 0, 65, 201, NULL, 'bonus bStr,2; if(GetPureJob == Job_Swordman) bonus bDef,5; if(isequipped(2114,2353)==0) end; bonus bStr,2; bonus bDef,5; bonus bMdef,5;');
INSERT INTO `item_db` VALUES (5123, 'Wool_Cap', 'Wool Cap', 5, 20, 0, 500, 0, 3, 0, 0, 18866174, 2, 256, 0, 65, 202, NULL, 'bonus bDex,2; bonus bAgi,1;  if(isequipped(2353)==0) end; if(bDex>=70) bonus bUseSPrate,-10;');
INSERT INTO `item_db` VALUES (5124, 'Frica_Circlet', 'Frica Circlet', 5, 20, 0, 300, 0, 3, 0, 0, 18866174, 2, 256, 0, 65, 203, NULL, 'bonus bMdef,10; bonus bInt,2; bonus bMaxSP,50; if(isequipped(2115,2353)==0) end; bonus bDef,2; bonus bMdef,25;');
INSERT INTO `item_db` VALUES (5125, 'Angel_Kiss', 'Angel\'s Kiss', 5, 20, 0, 300, 0, 2, 0, 0, 18866174, 2, 256, 0, 50, 204, NULL, 'bonus bSPrecovRate,3;'); #Description miss.  This item is for Novice/Super Novice, like any other 'Angel' equipments.
INSERT INTO `item_db` VALUES (5126, 'Morphicious_Hood', 'Hood of Morphicious', 5, 20, 0, 200, 0, 3, 0, 0, 18866174, 2, 256, 0, 33, 205, NULL, 'bonus bInt,2; if(isequipped(2518,2648,2649)==0) end; bonus bInt,5; bonus bMdef,11; bonus bMaxSPrate,20; bonus bDelayrate,25;'); #When using magic, it cannot be dispelled(Maybe it works like Phen card)
INSERT INTO `item_db` VALUES (5127, 'Helm_of_Morrigan', 'Helm of Morrigan', 5, 20, 0, 500, 0, 4, 0, 0, 18866174, 2, 256, 0, 61, 206, NULL, 'bonus bLuk,2; bonus bAtk,3; if(isequipped(2519,2650,2651)==0) end; bonus bStr,2; bonus bLuk,9; bonus bCritical,13; bonus bAtk,18; bonus bFlee2,13;');
INSERT INTO `item_db` VALUES (5128, 'Goibniu_Helm', 'Helm of Goibniu', 5, 20, 0, 500, 0, 5, 0, 0, 18866174, 2, 256, 0, 54, 207, NULL, 'bonus bVit,3; bonus bMdef,3; if(isequipped(2354,2419,2520)==0) end; bonus bVit,5; bonus bMaxHPrate,15; bonus bMaxSPrate,5; bonus bDef,5; bonus bMdef,15; bonus2 bSubEle,1,10; bonus2 bSubEle,2,10; bonus2 bSubEle,3,10; bonus2 bSubEle,4,10;');
INSERT INTO `item_db` VALUES (5129, 'Nest', 'Bird Nest', 5, 0, 0, 400, 0, 1, 0, 0, 27254783, 2, 256, 0, 55, 201, NULL, 'bonus bAgi,2; bonus2 bSubRace,2,10;');
INSERT INTO `item_db` VALUES (5130, 'Lion_Mask', 'Lion Mask', 5, 0, 0, 700, 0, 0, 0, 0, 2088832, 2, 768, 0, 75, 202, NULL, 'bonus2 bAddEffWhenHit,Eff_Silence,300; bonus bMdef,1;');
INSERT INTO `item_db` VALUES (5131, 'Close_Helmet', 'Close Helmet', 5, 0, 0, 1200, 0, 8, 0, 0, 8405122, 2, 769, 0, 75, 203, NULL, 'bonus bVit,3; bonus bMaxHPrate,3;');
INSERT INTO `item_db` VALUES (5132, 'Angeling_Hat', 'Angeling Hat', 5, 0, 0, 700, 0, 2, 0, 0, 27254783, 2, 256, 0, 38, 204, NULL, 'bonus2 bSubRace,7,10;');
INSERT INTO `item_db` VALUES (5133, 'Sheep_Hat', 'Sheep Hat', 5, 0, 10, 150, 0, 1, 0, 0, 33040, 2, 256, 0, 50, 205, NULL, 'bonus bShortWeaponDamageReturn,5;');
INSERT INTO `item_db` VALUES (5134, 'Pumpkin_Hat', 'Pumpkin Hat', 5, 0, 10, 200, 0, 2, 0, 0, 127918079, 2, 256, 0, 0, 206, NULL, 'bonus2 bSubRace,6,5; bonus bAllStats,2;');

# Misc items
INSERT INTO `item_db` VALUES (7001, 'Mold_Powder', 'Mould Powder', 3, 680, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7002, 'Ogre_Tooth', 'Ogre Tooth', 3, 658, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7003, 'Anolian_Skin', 'Anolian Skin', 3, 928, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7004, 'Mud_Lump', 'Mud Lump', 3, 876, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7005, 'Skull', 'Skull', 3, 1044, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7006, 'Wing_of_Red_Bat', 'Wing of Red Bat', 3, 168, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7007, 'Claw_of_Rat', 'Claw of Rat', 3, 748, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7008, 'Stiff_Horn', 'Stiff Horn', 3, 636, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7009, 'Glitter_Shell', 'Glitter Shell', 3, 528, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7010, 'Tail_of_Steel_Scorpion', 'Tail of Steel Scorpion', 3, 548, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7011, 'Claw_of_Monkey', 'Claw of Monkey', 3, 466, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7012, 'Tough_Scalelike_Stem', 'Tough Scalelike Stem', 3, 412, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7013, 'Coral_Reef', 'Coral Reef', 3, 772, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7014, 'Old_Portrait', 'Old Portrait', 3, 1500, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7015, 'Bookclip_in_Memory', 'Bookclip in Memory', 3, 3000, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7016, 'Spoon_Stub', 'Spoon Stub', 3, 2500, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7017, 'Executioner\'s_Mitten', 'Executioner\'s Mitten', 3, 4500, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7018, 'Young_Twig', 'Young Twig', 3, 50, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7019, 'Loki\'s_Whispers', 'Loki\'s Whispers', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7020, 'Mother\'s_Nightmare', 'Mother\'s Nightmare', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7021, 'Foolishness_of_the_Blind', 'Foolishness of the Blind', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7022, 'Old_Hilt', 'Old Hilt', 3, 150, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7023, 'Blade_Lost_in_Darkness', 'Blade Lost in Darkness', 3, 12000, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7024, 'Bloody_Edge', 'Bloody Edge', 3, 10000, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7025, 'Lucifer\'s_Lament', 'Lucifer\'s Lament', 3, 30000, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7026, 'Key_of_Clock_Tower', 'Key of Clock Tower', 3, 2, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7027, 'Key_of_Underground', 'Key of Underground', 3, 2, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7028, 'Invite_for_Duel', 'Invite for Duel', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7029, 'Admission_for_Duel', 'Admission for Duel', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7030, 'Claw_of_Desert_Wolf', 'Claw of Desert Wolf', 3, 208, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7031, 'Old_Frying_Pan', 'Old Frying Pan', 3, 196, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7032, 'Piece_of_Egg_Shell', 'Piece of Egg Shell', 3, 168, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7033, 'Poison_Spore', 'Poison Spore', 3, 114, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7034, 'Red_Socks_with_Holes', 'Red Socks with Holes', 3, 100, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7035, 'Matchstick', 'Matchstick', 3, 100, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7036, 'Fang_of_Garm', 'Fang of Garm', 3, 100, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7037, 'Coupon', 'Coupon', 3, 2000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7038, 'Yarn', 'Yarn', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7039, 'Novice_Nametag', 'Novice Nametag', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7040, 'Megaphone', 'Megaphone', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7041, 'Fine_Grit', 'Fine Grit', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7042, 'Leather_Bag_of_Infinity', 'Leather Bag of Infinity', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7043, 'Fine_Sand', 'Fine Sand', 3, 100, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7044, 'Vigorgra', 'Vigorgra', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7045, 'Magic_Paint', 'Magic Paint', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7046, 'Cart_Parts', 'Cart Parts', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7047, 'Alice\'s_Apron', 'Alice\'s Apron', 3, 2424, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7048, 'Talon_of_Griffon', 'Talon of Griffon', 3, 100, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7049, 'Stone', 'Stone', 3, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7050, 'Cotton_Mat', 'Cotton Mat', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7051, 'Silk_Mat', 'Silk Mat', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7052, 'Wasted_Magazine', 'Wasted Magazine', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7053, 'Cyfar', 'Cyfar', 3, 772, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7054, 'Brigan', 'Brigan', 3, 746, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7055, 'Animal_Poop', 'Animal Poop', 3, 20, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7056, 'Payment_Statement_Kafra', 'Payment Statement Kafra', 3, 20, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7057, 'Gjallar', 'Gjallar', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7058, 'Gleipnir', 'Gleipnir', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7059, 'Free_Ticket_Storage', 'Free Ticket for Kafra St', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7060, 'Free_Ticket_Teleport', 'Free Ticket for Kafra Tr', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7061, 'Free_Ticket_Cart_Service', 'Free Ticket for the Cart', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7062, 'Broken_Turtle_Shell', 'Broken Turtle Shell', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7063, 'Soft_Feather', 'Soft Feather', 3, 280, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7064, 'Wing_of_Dragonfly', 'Wing of Dragonfly', 3, 520, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7065, 'Sea-otter_Fur', 'Sea Otter Fur', 3, 820, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7066, 'Ice_Cubic', 'Ice Cubic', 3, 660, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7067, 'Stone_Fragment', 'Stone Fragment', 3, 640, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7068, 'Burnt_Tree', 'Burnt Tree', 3, 722, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7069, 'Destroyed_Armor', 'Destroyed Armor', 3, 1042, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7070, 'Broken_Shell', 'Broken Shell', 3, 900, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7071, 'Tattered_Clothes', 'Tattered Clothes', 3, 640, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7072, 'Old_Shuriken', 'Old Shuriken', 3, 1780, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7073, 'Freya\'s_Jewel', 'Freya\'s Jewel', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7074, 'Thor\'s_Gauntlet', 'Thor\'s Gauntlet', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7075, 'Iron_Maiden', 'Iron Maiden', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7076, 'Wheel_of_the_Unknown', 'Wheel of the Unknown', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7077, 'Silver_Ornament', 'Silver Ornament', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7078, 'Wrath_of_Valkyrie', 'Wrath of Valkyrie', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7079, 'Feather_of_Angel_Wing', 'Feather of Angel Wing', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7080, 'Cat_Tread', 'Footprints of Cat', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7081, 'Woman\'s_Moustache', 'Woman\'s Moustache', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7082, 'Root_of_Stone', 'Root of Stone', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7083, 'Spirit_of_Fish', 'Spirit of Fish', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7084, 'Sputum_of_Bird', 'Sputum of Bird', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7085, 'Sinew_of_Bear', 'Sinew of Bear', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7086, 'Emblem_of_the_Sun_God', 'Emblem of the Sun God', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7087, 'Breath_of_Spirit', 'Breath of Soul', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7088, 'Snow_Crystal', 'Snow Crystal', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7089, 'Omen_of_Tempest', 'Omen of Tempest', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7090, 'Ripple', 'Ripple', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7091, 'Billow', 'Billow', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7092, 'Drifting_Air', 'Drifting Air', 3, 20, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7093, 'Cogwheel', 'Metal Wheel', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7094, 'Fragment', 'Cabinet Chip', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7095, 'Metal_Fragment', 'Tooth Fragment', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7096, 'Lava', 'Hardened Lava', 3, 1108, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7097, 'Burning_Heart', 'Burning Heart', 3, 924, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7098, 'Live_Coal', 'Fire Seed', 3, 638, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7099, 'Worn-out_Magic_Scroll', 'Old Magical Circle', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7100, 'Sharp_Leaf', 'Sharpened Leaf', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7101, 'PecoPeco_Feather', 'Peco Feather', 3, 454, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7102, 'Nightmare', 'Nightmare', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7103, 'Unknown_Liquid_Bottle', 'Yellow Liquid Bottle', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7104, 'Fake_Angel\'s_Wing', 'Fake Angel\'s Wing', 3, 756, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7105, 'Fake_Heaven_Ring', 'Imitation Soul\'s Band', 3, 924, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7106, 'Antelope_Horn', 'Antelope Horn', 3, 672, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7107, 'Antelope_Skin', 'Antelope Skin', 3, 756, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7108, 'Piece_of_Shield', 'Broken Shield', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7109, 'Shining_Spear_Blade', 'Shiny Spear Tip', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7110, 'Broken_Sword', 'Broken Sword', 3, 588, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7111, 'Slick_Paper', 'Slick Paper', 3, 706, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7112, 'Sharp_Paper', 'Transparent Paper', 3, 906, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7113, 'Broken_Symbol_of_Pharaoh', 'Broken Symbol of Pharaoh', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7114, 'Masque_of_Tutankhamen', 'Sphinx Mask', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7115, 'Harpy_Feather', 'Blood Feather', 3, 1142, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7116, 'Harpy_Talon', 'Tooth of Lowblood', 3, 1210, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7117, 'Torn_Magic_Book', 'Torn Spell Book', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7118, 'Torn_Scroll', 'Torn Scroll', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7119, 'Bacillus', 'Hypha Body', 3, 1024, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7120, 'Burning_Horseshoe', 'Burning Horseshoe', 3, 822, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7121, 'Honey_Pot', 'Honey Jar', 3, 622, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7122, 'Burning_Hair', 'Hot Feather', 3, 974, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7123, 'Dragon_Skin', 'Dragon Skin', 3, 1024, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7124, 'Sand_Clump', 'Sand Lump', 3, 706, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7125, 'Scorpion_Claw', 'Crab Shot', 3, 706, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7126, 'Large_Jellopy', 'Large Jellopy', 3, 840, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7127, 'Alcohol_Creation_Book', 'Alcohol Book', 3, 100000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7128, 'Bottle_Grenade_Guide', 'Fire Bottle Book', 3, 100000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7129, 'Acid_Bottle_Book', 'Acid Bottle Book', 3, 100000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7130, 'Plant_Bottle_Book', 'Plant Bottle Book', 3, 100000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7131, 'Marine_Spheren_Book', 'Mine Bottle Book', 3, 100000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7132, 'Glistening_Coat_Book', 'Glistening Coat Book', 3, 100000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7133, 'Condensed_Potion_Book', 'Condensed Potion Book', 3, 240000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7134, 'Medicine_Bowl', 'Medicine Bowl', 3, 8, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7135, 'Bottle_Grenade', 'Fire Bottle', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7136, 'Acid_Bottle', 'Hydrobolic Acid Bottle', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7137, 'Plant_Bottle', 'Water Bottle', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7138, 'Marine_Sphere_Bottle', 'Mine Bottle', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7139, 'Glistening_Coat', 'Coating Wax', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7140, 'Seed_of_Life', 'Seed of Life', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7141, 'Morning_Dew_of_Yggdrasil', 'Water Flow', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7142, 'Ancient_Life', 'Embryo', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7143, 'Glass_Tube', 'Seperation Tubes', 2, 50000, 0, 1000, 0, 0, 0, 0, 262144, 2, 0, 0, 0, 0, 'bpet;', NULL);
INSERT INTO `item_db` VALUES (7144, 'Potion_Creation_Gude', 'Potion Making Book', 3, 100000, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7145, 'Ragnarok_T-shirt', 'Ragnarok T-Shirt', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7146, 'Vacation_Ticket', 'Vacation Ticket', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7147, 'Jasmine', 'Jasmine', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7148, 'Mother\'s_Letter', 'Mother\'s Letter', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7149, 'Yellow_Plate', 'Yellow Plate', 3, 220, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7150, 'A_piece_of_Bamboo', 'Bamboo Trunk', 3, 310, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7151, 'Oil_Paper', 'Oiled Paper', 3, 310, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7152, 'Glossy_Hair', 'Glossy Hair', 3, 340, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7153, 'Worn-out_Kimono', 'Old Kimono', 3, 590, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7154, 'Poisonous_Powder', 'Poison Powder', 3, 160, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7155, 'Skin_of_Poisonous_Toad', 'Poisonous Toad Skin', 3, 280, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7156, 'Broken_Shuriken', 'Broken Shuriken', 3, 470, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7157, 'Black_Mask', 'Black Mask', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7158, 'Broken_Liquor_Bottle', 'Broken Liquor Bottle', 3, 160, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7159, 'Demon\'s_Nose', 'Demon\'s Nose', 3, 400, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7160, 'Passport_From_King', 'Passport From King', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7161, 'Bear_Skin', 'Bear Skin', 3, 384, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7162, 'Piece_of_Cloud', 'Piece of Cloud', 3, 390, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7163, 'Hard_Antennae', 'Hard Antennae', 3, 570, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7164, 'Very_Hard_Peach', 'Very Hard Peach', 3, 400, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7165, 'Etherial_Winged_Clothing', 'Etherial Winged Clothing', 3, 650, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7166, 'Soft_Silk_Fabric', 'Soft Silk Fabric', 3, 1200, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7167, 'Strange_Piece_of_Iron', 'Strange Piece of Iron', 3, 430, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7168, 'Big_Wing_of_Butterfly', 'Big Wing of Butterfly', 3, 614, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7169, 'Tae_Guk_Tablet', 'Tae Guk Tablet', 3, 280, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7170, 'Tuxedo', 'Tuxedo', 5, 43000, 0, 10, 0, 0, 0, 0, 10477566, 1, 16, 0, 0, 0, NULL, 'changebase 22;');
INSERT INTO `item_db` VALUES (7171, 'Skin_of_Panther', 'Skin of Panther', 3, 282, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7172, 'Claw_of_Panther', 'Claw of Panther', 3, 290, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7173, 'Bun_Buster_Bag', 'Bun Buster Bag', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7174, 'Wrapping_Thread', 'Wrapping Thread', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7175, 'Wrapper', 'Wrapper', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7176, 'King\'s_Proof_Document', 'King\'s Proof Document', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7177, 'Formation_of_Starlight', 'Piece of Starlight', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7178, 'Starlight\'s_Sorrow', 'Starlight\'s Sorrow', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7179, 'Donation_Ticket', 'Donation Ticket', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7180, 'Letter_of_Introduction', 'Letter of Introduction', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7181, 'Commodity_Receipt', 'Commodity Receipt', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7182, 'Cacao', 'Cacao', 3, 200, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7183, 'Letter_of_Younger_Sister', 'Letter of Younger Sister', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7184, 'Piano_Key', 'Piano Key', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7185, 'Quiz_Entry', 'Quiz Ticket', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7186, 'Thin_Trunk', 'Thin Trunk', 3, 218, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7187, 'Festival_Mask', 'Festival Mask', 3, 100, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7188, 'Brown_Root', 'Brown_Root', 3, 560, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7189, 'Wooden_Heart', 'Wooden Heart', 3, 680, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7190, 'Hard_Back_Shell', 'Hard Back Shell', 3, 140, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7191, 'Paper_Lantern', 'Paper Lantern', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7192, 'Pin_Wheel', 'Pin Wheel', 3, 160, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7193, 'Sprout', 'Sprout', 3, 230, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7194, 'Soft_Grass_Leaf', 'Soft Grass Leaf', 3, 400, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7195, 'Slingshot', 'Slingshot', 3, 210, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7196, 'Shoulder_Guard', 'Shoulder Guard', 3, 230, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7197, 'Durable_Vine', 'Durable Vine', 3, 500, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7198, 'Huge_Leaf', 'Huge Leaf', 3, 610, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7199, 'Hieroglyphic', 'Hieroglyphic', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7200, 'Elastic_Band', 'Elastic Band', 3, 380, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7201, 'Log', 'Log', 3, 250, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7202, 'Insect_Pinchers', 'Insect Pinchers', 3, 290, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7203, 'Healthy_Branch', 'Healthy Branch', 3, 190, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7204, 'Gun_Powder', 'Gun Powder', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7205, 'Black_Piece_of_Cloth', 'Black Piece of Cloth', 3, 526, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7206, 'Cat_Doll', 'Black Cat Doll', 3, 1440, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7207, 'Old_Mantle', 'Old Mantle', 3, 1050, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7208, 'Rusted_Knife', 'Rusted Knife', 3, 1780, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7209, 'Dullahan\'s_Helm', 'Dullahan\'s Helm', 3, 1350, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7210, 'Armor_Piece_of_Dullahan', 'Dullahan\'s Armor Piece', 3, 750, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7211, 'Rosetta_Stone_Fragment', 'Rosetta Stone Fragment', 3, 2600, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7212, 'Hanging_Doll', 'Hanging Doll', 3, 1020, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7213, 'Pin_Cusion', 'Pin Cusion', 3, 832, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7214, 'Bat_Cage', 'Bat Cage', 3, 880, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7215, 'Broken_Needle', 'Broken Needle', 3, 690, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7216, 'Red_Scarf', 'Red Scarf', 3, 660, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7217, 'Spool_of_Thread', 'Spool of Thread', 3, 424, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7218, 'Rotted_Rope', 'Rotted Rope', 3, 390, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7219, 'Striped_Socks', 'Striped Socks', 3, 920, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7220, 'Ectoplasm', 'Ectoplasm', 3, 332, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7221, 'Chains', 'Chains', 3, 740, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7222, 'Old_Tree_Branch', 'Old Tree Branch', 3, 468, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7223, 'Ruined_Self_Portrait', 'Ruined Self Portrait', 3, 2032, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7224, 'Philosophers_Stone', 'Philosopher\'s Stone', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7225, 'Silk_Lantern', 'Silk Lantern', 3, 486, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7226, 'Hallucination_Pill', 'Hallucination Pill', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7227, 'TCG_Card', 'TCG Card', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7228, 'Gold_Nugget', 'Gold Nugget', 3, 20, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7229, 'Iron_Nugget', 'Iron Nugget', 3, 20, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7230, 'Silver_Nugget', 'Silver Nugget', 3, 20, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7231, 'Gold_Ore', 'Gold Ore', 3, 20, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7232, 'Silver_Ore', 'Silver Ore', 3, 20, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7233, 'Mysterious_Ore', 'Mysterious Ore', 3, 20, 0, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

# RWC Reward items
INSERT INTO `item_db` VALUES (7234, 'Spirit_of_Guild', 'Spirit of Guild', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7235, 'Spirit_of_Assault', 'Spirit of Assault', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7236, 'Spirit_of_Defense', 'Spirit of Defense', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7237, 'Spirit_of_Cooperation', 'Spirit of Cooperation', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7238, 'Spirit_of_Harmony', 'Spirit of Harmony', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7239, 'Spirit_of_Advancement', 'Spirit of Advancement', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7240, 'Spirit_of_Trust', 'Spirit of Trust', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7241, 'Spirit_of_Concentration', 'Spirit of Concentration', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7242, 'Spirit_of_Unity', 'Spirit of Unity', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7243, 'Spirit_of_Integrity', 'Spirit of Integrity', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7244, 'Spirit_of_Communion', 'Spirit of Communion', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7245, 'Spirit_of_Friendship', 'Spirit of Friendship', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7246, 'Spirit_of_Peace', 'Spirit of Peace', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7247, 'Spirit_of_Nature', 'Spirit of Nature', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7248, 'Spirit_of_Fame', 'Spirit of Fame', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7249, 'Spirit_of_Contribution', 'Spirit of Contribution', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7250, 'Spirit_of_Glory', 'Spirit of Glory', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7251, 'Spirit_of_Victory', 'Spirit of Victory', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

# Louyang Items
INSERT INTO `item_db` VALUES (7252, 'Chinese_Medicine', 'Chinese Medicine', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7253, 'Golden_Flag', 'Golden Flag', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7254, 'Digitally_Printed_Ticket', 'Digitally Printed Ticket', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7262, 'Paper_Fan', 'Paper Fan', 3, 233, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7263, 'Cat\'s_Eye', 'Cat\'s-Eye', 3, 954, 477, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7264, 'Dried_Sand', 'Dried Sand', 3, 322, 161, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7265, 'Dragon_Horn', 'Dragon Horn', 3, 544, 272, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7266, 'Dragon_Teeth', 'Dragon Teeth', 3, 436, 218, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7267, 'Tigerskin_Underwear', 'Tigerskin Underwear', 3, 298, 149, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
# price 1210 found on http://iro.ragnarokonline.com/game/libraryListItem.asp
INSERT INTO `item_db` VALUES (7268, 'Ghost_Doll', 'Ghost Doll', 3, 1210, 605, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7269, 'Baby_Bib', 'Baby Bib', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7270, 'Baby_Bottle', 'Baby Bottle', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7271, 'Novice_Statue', 'Novice Statue', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7272, 'Dumpling_Doll', 'Dumpling Doll', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7273, 'RWC_Necklace', 'RWC Necklace', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7274, 'Ancient_Language_Book', 'Ancient Language Book', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7275, 'Ancient_Lang_Document', 'Record of Ancient Lang', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7276, 'Picture_Letter', 'Doodled Message', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7277, 'Munak_Doll', 'Munak Doll', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7278, 'Welfare_Letter', 'Welfare Letter', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7279, 'Vita_500_Bottlecap', 'Vita 500 Bottlecap', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7280, '1st_Quiz_Entry', '1st Quiz Entry', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7281, '2nd_Quiz_Entry', '2nd Quiz Entry', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7282, '3rd_Quiz_Entry', '3rd Quiz Entry', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7283, '4th_Quiz_Entry', '4th Quiz Entry', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7284, '5th_Quiz_Entry', '5th Quiz Entry', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

# 11/09(Ayothana) Items
INSERT INTO `item_db` VALUES (7285, 'Holy_Threads', 'Holy Threads', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7286, 'Red_Chili', 'Red Chili', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7287, 'Holier_Threads', 'Holier Threads', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7288, 'Engagement_Ring', 'Engagement Ring', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7289, 'Peridot', 'Peridotite', 3, 20, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7290, 'Phlogopite', 'Phlogopite', 3, 20, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7291, 'Agate', 'Agate', 3, 20, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7292, 'Muscovite', 'Muscovite', 3, 20, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7293, 'Rose_Quartz', 'Rose Quartz', 3, 20, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7294, 'Turquoise', 'Turquoise', 3, 20, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7295, 'Citrine', 'Citrine', 3, 20, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7296, 'Pyroxene', 'Pyroxene', 3, 20, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7297, 'Biotite', 'Biotite', 3, 20, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7298, 'Fig_Leaf', 'Fig Leaf', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7299, 'Straw_Basket', 'Straw Basket', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7300, 'Gemstone', 'Gemstone', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7301, 'Tassel', 'Tassel', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7302, 'Krathong', 'Krathong', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7303, 'Straw_Rice_Bag', 'Straw Rice Bag', 3, 20, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

# 2005
INSERT INTO `item_db` VALUES (7304, 'Witchs_Spellbook', 'Witch\'s Spellbook', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7305, 'Unknown_item', 'Authority of 9 worlds', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7306, 'Piece_of_Soul', 'Piece of Soul', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7307, 'Whisper_of_Soul', 'Whisper of Soul', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7308, 'Witchs_Potion', 'Witch\'s Potion', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7309, 'Crows_Wing', 'Crow\'s Wing', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7310, 'Peco_Coupon', 'Pecopeco Free Coupon', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7311, 'Airship_Coupon', 'Airship Free Coupon', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7312, 'Jubile', 'Jubilaeum', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7313, 'Witch\'s_Voucher', 'Witch\'s Voucher', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7314, 'The_Sign', 'The Sign', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

INSERT INTO `item_db` VALUES (7315, 'Black_Quartz_Piece', 'Piece of Black Quartz', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7316, 'Insect_Long_leg', 'Insect\'s Long Leg', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7317, 'Rusted_Bolt', 'Rusted Bolt', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7318, 'Old_Pick', 'Old Pick', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7319, 'Old_Iron_Plate', 'Old Iron Plate', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7320, 'Dust', 'Dust', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7321, 'Quartz_Piece', 'Piece of Quartz', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7322, 'Poison_Gas', 'Poison Gas', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7323, 'Battered_Kettle', 'Battered Kettle', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7324, 'Toothed_Wheel', 'Gear', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7325, 'Tube', 'Tube', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7326, 'Fluorescent_Color_Liquid', 'Fluorescent Liquid', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7327, 'Flashlight', 'Flashlight', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7328, 'Songkran_Legend', 'Songkran Legend', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7329, 'Old_Copper_Key', 'Old Copper Key', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

INSERT INTO `item_db` VALUES (7330, 'Songwha_Orb7', 'Songwha Orb', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7331, 'Heavenly_Flower', 'Heavenly Flower', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7332, 'Stone_Tablet', 'Stone Tablet', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7333, 'Piece_of_Stone_Tablet', 'Piece of Stone Tablet', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7334, 'Piece_of_Stone_Tablet_', 'Piece of Stone Tablet', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7335, 'Piece_of_Stone_Tablet__', 'Piece of Stone Tablet', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7336, 'Piece_of_Stone_Tablet___', 'Piece of Stone Tablet', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7337, 'Eye_of_Helion', 'Eye of Helion', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7338, 'One_Way_Ticket', 'One way ticket', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7339, 'Commemorative_Traffic', 'Commoemorative Traffic', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7340, 'Dark_Will', 'Dark Will', 3, 20, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7341, 'Old_Pendant', 'Old Pendant', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7342, 'Folder', 'Thin Folder', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7343, 'Sealed_File', 'Sealed File', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7344, 'Sinocas_Incident_File', 'Sinocas Incident File', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7345, 'Prisoner_Bangle', 'Prisoner\'s Bangle', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7346, 'Pile_of_Ymir_Heart', 'Pile of Ymir\'s Heart', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7347, 'Researcher_Record', 'Researcher Record', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7348, 'Membership_Certificate', 'Organization Member Cert', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7349, 'Archives_Pass', 'Archives Passport', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7350, 'Pass', 'Pass', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7351, 'Friends_Diary', 'Friend\'s Diary', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7352, 'Transparent_Board', 'Transparent Plate', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7353, 'Transparent_Board_', 'Transparent Plate', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7354, 'Transparent_Board__', 'Transparent Plate', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7355, 'Transparent_Board___', 'Transparent Plate', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7356, 'Embelem_Piece', 'Piece of Emblem', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7357, 'Embelem_Piece_', 'Piece of Emblem', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7358, 'Embelem_Piece__', 'Piece of Emblem', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7359, 'Embelem_Piece___', 'Piece of Emblem', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7360, 'RO_Festival_Invo_Ticket', 'Festival Ticket', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7361, 'Number_1_Ball', 'Number_1_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7362, 'Number_2_Ball', 'Number_2_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7363, 'Number_3_Ball', 'Number_3_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7364, 'Number_4_Ball', 'Number_4_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7365, 'Number_5_Ball', 'Number_5_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7366, 'Number_6_Ball', 'Number_6_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7367, 'Number_7_Ball', 'Number_7_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7368, 'Number_8_Ball', 'Number_8_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7369, 'Number_9_Ball', 'Number_9_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7370, 'Number_10_Ball', 'Number_10_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7371, 'Number_11_Ball', 'Number_11_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7372, 'Number_12_Ball', 'Number_12_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7373, 'Number_13_Ball', 'Number_13_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7374, 'Number_14_Ball', 'Number_14_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7375, 'Number_15_Ball', 'Number_15_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7376, 'Number_16_Ball', 'Number_16_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7377, 'Number_17_Ball', 'Number_17_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7378, 'Number_18_Ball', 'Number_18_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7379, 'Number_19_Ball', 'Number_19_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7380, 'Number_20_Ball', 'Number_20_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7381, 'Number_21_Ball', 'Number_21_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7382, 'Number_22_Ball', 'Number_22_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7383, 'Number_23_Ball', 'Number_23_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7384, 'Number_24_Ball', 'Number_24_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7385, 'Number_25_Ball', 'Number_25_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7386, 'Number_26_Ball', 'Number_26_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7387, 'Number_27_Ball', 'Number_27_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7388, 'Number_28_Ball', 'Number_28_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7389, 'Number_29_Ball', 'Number_29_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7390, 'Number_30_Ball', 'Number_30_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7391, 'Number_31_Ball', 'Number_31_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7392, 'Number_32_Ball', 'Number_32_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7393, 'Number_33_Ball', 'Number_33_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7394, 'Number_34_Ball', 'Number_34_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7395, 'Number_35_Ball', 'Number_35_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7396, 'Number_36_Ball', 'Number_36_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7397, 'Number_37_Ball', 'Number_37_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7398, 'Number_38_Ball', 'Number_38_Ball', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
#-Indonesian Independence Day Event
INSERT INTO `item_db` VALUES (7399, 'Selamat', 'Sselamat', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7400, 'Hari', 'Hari', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7401, 'Kemerdekaan', 'Kemerdekaan', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7402, 'Republik', 'Republik', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7403, 'Indonesia', 'Indonesia', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7404, 'Ke-60', 'KE-60', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7405, 'Crushed_Can', 'Crushed Can', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL); #Green Iguana's drop
INSERT INTO `item_db` VALUES (7406, 'Yuebing', 'Lettered Moon Cake', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7407, 'Yuebing', 'Lettered Moon Cake', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7408, 'Yuebing', 'Lettered Moon Cake', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7409, 'Yuebing', 'Lettered Moon Cake', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7410, 'Yuebing', 'Lettered Moon Cake', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7411, 'Yuebing', 'Lettered Moon Cake', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7412, 'Yuebing', 'Lettered Moon Cake', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7413, 'Yuebing', 'Lettered Moon Cake', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7414, 'Yuebing', 'Lettered Moon Cake', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7415, 'Summoning_Stone', 'Summoning Stone', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

INSERT INTO `item_db` VALUES (7416, 'Letter_of_Recommentation', 'Letter of Recommentation', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7417, 'Written_Request', 'Written Request', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7418, 'Written_Request_', 'Written Request', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7419, 'Embryo_Creation_Guide', 'Embryo Creation Guide', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7420, 'Skull_', 'Skull', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7421, 'Red_Key', 'Red Key', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7422, 'Yellow_Key', 'Yellow Key', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7423, 'Blue_Key', 'Blue Key', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7424, 'Green_Key', 'Green Key', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7425, 'Black_Key', 'Black Key', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7426, 'Red_Magic_Stone', 'Red Magic Stone', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7427, 'Yellow_Magic_Stone', 'Yellow Magic Stone', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7428, 'Blue_Magic_Stone', 'Blue Magic Stone', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7429, 'Green_Magic_Stone', 'Green Magic Stone', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7430, 'Black_Magic_Stone', 'Black Magic Stone', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7431, 'Books', 'Books', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7432, 'Leather_Pouch', 'Leather Pouch', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7433, 'Empty_Scroll', 'Blank Scroll', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7434, 'Elemental_Potion_Guide', 'Elemental Potion Guide', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7435, 'Golden_Accessory', 'Golden Accessory', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7436, 'Fragment_of_Agony', 'Fragment of Agony', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7437, 'Fragment_of_Sorrow', 'Fragment of Sorrow', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7438, 'Fragment_of_Hatred', 'Fragment of Hatred', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7439, 'Fragment_of_Dispair', 'Fragment of Dispair', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7440, 'Red_Feather', 'Red tinted Feather', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7441, 'Blue_Feather', 'Blue tinted Feather', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7442, 'Cursed_Seal', 'Cursed Seal', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7443, 'Head_of_Three_Dragon', '3-Headed Dragon\'s Head', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7444, 'Treasure_Box', 'Treasure Box', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7445, 'Green_Orb', 'Green Orb', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7446, 'Blue_Orb', 'Blue Orb', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7447, 'Red_Orb', 'Red Orb', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7448, 'Yellow_Orb', 'Yellow Orb', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7449, 'Bloodstained_Page', 'Bloodstained Page', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7450, 'Bone_Armor_Piece', 'Bone Armor Piece', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7451, 'Scale_of_Fire_Dragon', 'Scale of Fire Dragon', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7452, 'Yellow_Spice', 'Yellow Spice', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7453, 'Sweet_Sauce', 'Sweet Sauce', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7454, 'Plain_Sauce', 'Plain Sauce', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7455, 'Hot_Sauce', 'Hot Sauce', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7456, 'Red_Spice', 'Red Spice', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7457, 'Cooking_Oil', 'Cooking Oil', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7458, 'Unknown', 'Unknown Item', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7459, 'Ramadan_', 'Ramadan', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7460, 'Niflheim_Express_Ticket', 'Niflheim Express Ticket', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7461, 'Blue_A_Card', 'Blue A Card', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7462, 'Blue_E_Card', 'Blue E Card', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7463, 'Blue_F_Card', 'Blue F Card', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7464, 'Blue_H_Card', 'Blue H Card', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7465, 'Blue_L_Card', 'Blue L Card', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7466, 'Blue_N_Card', 'Blue N Card', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7467, 'Blue_O_Card', 'Blue O Card', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7468, 'Blue_P_Card', 'Blue P Card', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7469, 'Blue_U_Card', 'Blue U Card', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7470, 'Blue_W_Card', 'Blue W Card', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7471, 'Blue_Y_Card', 'Blue Y Card', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7472, 'Lv1_Cookery_Book', 'Lv1 Cookbook', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7473, 'Lv2_Cookery_Book', 'Lv2 Cookbook', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7474, 'Lv3_Cookery_Book', 'Lv3 Cookbook', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7475, 'Lv4_Cookery_Book', 'Lv4 Cookbook', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7476, 'Lv5_Cookery_Book', 'Lv5 Cookbook', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7477, 'Lv6_Cookery_Book', 'Lv6 Cookbook', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7478, 'LV7_Cookery_Book', 'Lv7 Cookbook', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7479, 'Lv8_Cookery_Book', 'Lv8 Cookbook', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7480, 'LV9_Cookery_Book', 'Lv9 Cookbook', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7481, 'Lv10_Cookery_Book', 'Lv10 Cookbook', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7482, 'Pot', 'Pot', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7483, 'Key_of_the_Seal', 'Key of the Seal', 3, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

INSERT INTO `item_db` VALUES (7500, 'THG_Membership', 'THG Membership', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7501, 'Token_Bag', 'Token Bag', 3, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

# Pet Eggs
INSERT INTO `item_db` VALUES (9001, 'Poring_Egg', 'Poring Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9002, 'Drops_Egg', 'Drops Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9003, 'Poporing_Egg', 'Poporing Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9004, 'Lunatic_Egg', 'Lunatic Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9005, 'Picky_Egg', 'Picky Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9006, 'Chonchon_Egg', 'Chonchon Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9007, 'Steel_Chonchon_Egg', 'Steel Chonchon Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9008, 'Hunter_Fly_Egg', 'Hunter Fly Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9009, 'Savage_Babe_Egg', 'Savage Babe Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9010, 'Baby_Desert_Wolf_Egg', 'Baby Desert Wolf Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9011, 'Rocker_Egg', 'Rocker Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9012, 'Spore_Egg', 'Spore Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9013, 'Poison_Spore_Egg', 'Poison Spore Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9014, 'PecoPeco_Egg', 'PecoPeco Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9015, 'Smokie_Egg', 'Smokie Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9016, 'Yoyo_Egg', 'Yoyo Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9017, 'Orc_Warrior_Egg', 'Orc Warrior Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9018, 'Munak_Egg', 'Munak Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9019, 'Dokkaebi_Egg', 'Dokkaebi Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9020, 'Sohee_Egg', 'Sohee Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9021, 'Isis_Egg', 'Isis Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9022, 'Green_Petite_Egg', 'Green Petite Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9023, 'Deviruchi_Egg', 'Deviruchi Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9024, 'Bapho_Jr._Egg', 'Bapho Jr. Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9025, 'Bongun_Egg', 'Bongun Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9026, 'Alice_Egg', 'Alice Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9027, 'Zherlthsh_Egg', 'Zherlthsh Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9028, 'test_Egg', 'Test Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (9029, 'test_Egg_', 'Test Egg', 7, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

# Pet Accessories
INSERT INTO `item_db` VALUES (10001, 'Skull_Helm', 'Skull Helm', 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (10002, 'Monster_Oxygen_Mask', 'Monster Oxygen Mask', 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (10003, 'Transparent_Head_Protect', 'Transparent Headgear', 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (10004, 'Pacifier', 'Pacifier', 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (10005, 'Wig', 'Wig', 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (10006, 'Queen\'s_Hair_Ornament', 'Queen\'s Hair Ornament', 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (10007, 'Silk_Ribbon', 'Silk Ribbon', 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (10008, 'Punisher', 'Punisher', 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (10009, 'Wild_Flower', 'Wild Flower', 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (10010, 'Battered_Pot', 'Battered Pot', 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (10011, 'Stellar_Hairpin', 'Stellar Hairpin', 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (10012, 'Tiny_Egg_Shell', 'Tiny Egg Shell', 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (10013, 'Backpack', 'Backpack', 8, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (10014, 'Rocker_Glasses', 'Rocker Glasses', 8, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (10015, 'Green_Lace', 'Green Lace', 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (10016, 'Golden_Bell', 'Golden Bell', 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (10017, 'Bark_Shorts', 'Bark Shorts', 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (10018, 'Monkey_Circlet', 'Monkey Circlet', 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (10019, 'Red_Muffler', 'Red Muffler', 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (10020, 'Grave_Keep_Sword', 'Sword Chinese Exorcist', 8, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

# Books

# History books
INSERT INTO `item_db` VALUES (11000, 'Prontera_History_Book', 'Prontera History Book', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11001, 'Izlude_History_Book', 'Izlude History Book', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11002, 'Yuno_History_Book', 'Yuno History Book', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11003, 'Geffen_History_Book', 'Geffen History Book', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11004, 'Aldebaran_History_Book', 'Aldebaran History Book', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11005, 'Alberta_History_Book', 'Alberta History Book', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11006, 'Payon_History_Book', 'Payon History Book', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11007, 'History_Book', 'Unknown Item', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11008, 'History_Book__', 'Unknown Item', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11009, 'History_Book_', 'Unknown Item', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11010, 'Archer_Village_Book', 'Archer Village Book', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11011, 'Lutie_History_Book', 'Lutie History Book', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11012, 'Jawaii_History_Book', 'Jawaii History Book', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11013, 'Gonryun_History_Book', 'Gonryun History Book', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11014, 'Mjolnir_History_Book', 'Mjolnir History Book', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11015, 'Amatsu_History_Book', 'Amatsu History Book', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11016, 'Umbala_History_Book', 'Umbala History Book', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11017, 'Nifleheim_History_Book', 'Nifflheim History Book', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11018, 'Morroc_History_Book', 'Morroc History Book', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11019, 'Comodo_History_Book', 'Comodo History Book', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (11020, 'Louyang_History_Book', 'Louyang History Book', 3, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

# More Scrolls
INSERT INTO `item_db` VALUES (12000, 'Frost_Diver_5', 'Frost Diver Level 5', 2, 700, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 15,5,\"Frost Diver Level 5\";', NULL);
INSERT INTO `item_db` VALUES (12001, 'Heal_3', 'Heal Level 3', 2, 1000, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 28,3,\"Heal Level 3\";', NULL);
INSERT INTO `item_db` VALUES (12002, 'Heal_5', 'Heal Level 5', 2, 2000, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 28,5,\"Heal Level 5\";', NULL);
INSERT INTO `item_db` VALUES (12003, 'Teleport_1', 'Teleport Level 1', 2, 100, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 26,1,\"Teleport Level 1\";', NULL);

# Arrow Quivers
INSERT INTO `item_db` VALUES (12004, 'Arrow_Quiver', 'Arrow Quiver', 2, 500, 0, 250, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem 1750,500;', NULL);
INSERT INTO `item_db` VALUES (12005, 'Iron_Arrow_Quiver', 'Iron Arrow Quiver', 2, 1000, 0, 250, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem 1770,500;', NULL);
INSERT INTO `item_db` VALUES (12006, 'Steel_Arrow_Quiver', 'Steel Arrow Quiver', 2, 1500, 0, 250, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem 1753,500;', NULL);
INSERT INTO `item_db` VALUES (12007, 'Oridecon_Arrow_Quiver', 'Oridecon Arrow Quiver', 2, 1500, 0, 250, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem 1765,500;', NULL);
INSERT INTO `item_db` VALUES (12008, 'Fire_Arrow_Quiver', 'Fire Arrow Quiver', 2, 1500, 0, 250, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem 1752,500;', NULL);
INSERT INTO `item_db` VALUES (12009, 'Silver_Arrow_Quiver', 'Silver Arrow Quiver', 2, 1500, 0, 250, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem 1751,500;', NULL);
INSERT INTO `item_db` VALUES (12010, 'Arrow_of_Wind_Quiver', 'Arrow of Wind Quiver', 2, 1500, 0, 250, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem 1755,500;', NULL);
INSERT INTO `item_db` VALUES (12011, 'Stone_Arrow_Quiver', 'Stone Arrow Quiver', 2, 1500, 0, 250, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem 1756,500;', NULL);
INSERT INTO `item_db` VALUES (12012, 'Crystal_Arrow_Quiver', 'Crystal Arrow Quiver', 2, 1500, 0, 250, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem 1754,500;', NULL);
INSERT INTO `item_db` VALUES (12013, 'Shadow_Arrow_Quiver', 'Shadow Arrow Quiver', 2, 1500, 0, 250, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem 1767,500;', NULL);
INSERT INTO `item_db` VALUES (12014, 'Immaterial_Arrow_Quiver', 'Immaterial Arrow Quiver', 2, 1500, 0, 250, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem 1757,500;', NULL);
INSERT INTO `item_db` VALUES (12015, 'Rusty_Arrow_Quiver', 'Rusty Arrow Quiver', 2, 1500, 0, 250, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem 1762,500;', NULL);

# Speed Potions
INSERT INTO `item_db` VALUES (12016, 'Speed_Increasing_Potion', 'Speed Potion', 2, 1000, 0, 100, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12017, 'Speed_Decreasing_Potion', 'Speed Potion', 2, 1000, 0, 100, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12018, 'Fire_Cracker', 'Fire Cracker', 2, 250, 0, 20, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'misceffect(256);', NULL);

# 2005
INSERT INTO `item_db` VALUES (12019, 'Sacred_Egg', 'Sacred Egg', 2, 20, 0, 150, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Acts like Yggdra 
INSERT INTO `item_db` VALUES (12020, 'Dark_Water', 'Dark_Water', 2, 20, 0, 30, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
#Test Items
INSERT INTO `item_db` VALUES (12021, 'Fatback', 'Fatback', 2, 20, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12022, 'Ribs', 'Ribs', 2, 20, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);

INSERT INTO `item_db` VALUES (12023, '2nd_Anniversary_Giftbox', '2nd Anniversary Giftbox', 2, 20, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem -4,1;', NULL);
INSERT INTO `item_db` VALUES (12024, 'Red_Pouch', 'Red Pouch', 2, 20, 0, 50, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'set Zeny,Zeny+rand(100,1000);', NULL);
INSERT INTO `item_db` VALUES (12025, 'Five_Paragraphs_Egg', 'Five Paragraphs Egg', 2, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12026, 'Five_Paragraphs_Egg_', 'Five Paragraphs Egg', 2, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
# Effect Boxes
INSERT INTO `item_db` VALUES (12027, 'Giggling_Box', 'Giggling Box', 2, 20, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'sc_start SC_Curse,30000,0; percentheal 9,0;', NULL); #the probablity is 100%
INSERT INTO `item_db` VALUES (12028, 'Lightning_Box', 'Lightning Box', 2, 20, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'sc_start SC_SpeedUp1,20000,0;', NULL);
INSERT INTO `item_db` VALUES (12029, 'Gloomy_Box', 'Gloomy Box', 11, 20, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'itemskill 45,3,\"Improve Concentration\";', NULL);
INSERT INTO `item_db` VALUES (12030, 'Grudge_Box', 'Box of Grudge', 2, 20, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'sc_start SC_ATKPot,60000,20;', NULL);
INSERT INTO `item_db` VALUES (12031, 'Sleepy_Box', 'Sleepy Box', 2, 20, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'sc_start SC_MATKPot,60000,20;', NULL);
INSERT INTO `item_db` VALUES (12032, 'Downpour_Box', 'Box of Heavy Rain', 2, 20, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'sc_start SC_Frost,180000,0;', NULL);
INSERT INTO `item_db` VALUES (12033, 'Sunshine_Box', 'Box of Sunshine', 2, 20, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #can see cloaked or hidden enemy,,,
INSERT INTO `item_db` VALUES (12034, 'Gasping_Box', 'Gasping Box', 2, 20, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'sc_start SC_Silence,30000,0; percentheal 0,9;', NULL); #the probablity is 100%
INSERT INTO `item_db` VALUES (12035, 'Ball_Box', 'Ball Box', 2, 20, 0, 20, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem rand(7361,7368),1;', NULL);
INSERT INTO `item_db` VALUES (12036, 'Ball_Box_', 'Ball Box', 2, 20, 0, 20, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem rand(7369,7376),1;', NULL);
INSERT INTO `item_db` VALUES (12037, 'Ball_Box__', 'Ball Box', 2, 20, 0, 20, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem rand(7377,7384),1;', NULL);
INSERT INTO `item_db` VALUES (12038, 'Ball_Box___', 'Ball Box', 2, 20, 0, 20, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem rand(7385,7392),1;', NULL);
INSERT INTO `item_db` VALUES (12039, 'Ball_Box____', 'Ball Box', 2, 20, 0, 20, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem rand(7393,7398),1;', NULL);
INSERT INTO `item_db` VALUES (12040, 'Philosopher\'s_Stone', 'Philosopher\'s Stone', 2, 20, 0, 10, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
# Mixed Food
INSERT INTO `item_db` VALUES (12041, 'Boiled_Down_Locust', 'Boiled Locust', 2, 0, 0, 60, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Str+1,,
INSERT INTO `item_db` VALUES (12042, 'Seasoned_Webs', 'Seasoned Webs', 2, 0, 0, 500, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Str+2,,
INSERT INTO `item_db` VALUES (12043, 'Bomber_Steak', 'Bomber Steak', 2, 0, 0, 500, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Str+3,,
INSERT INTO `item_db` VALUES (12044, 'Rib_with_Herb_and_Spices', 'Spicy Ribs', 2, 0, 0, 500, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Str+4,,
INSERT INTO `item_db` VALUES (12045, 'Lutie_Plat_Cake', 'Lutie Plat Cake', 2, 0, 0, 500, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Str+5,,
INSERT INTO `item_db` VALUES (12046, 'Herb_Tea_with_Grape', 'Grape Juice and Tea', 2, 0, 0, 100, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Int+1,,
INSERT INTO `item_db` VALUES (12047, 'Black_Tea', 'Black Tea', 2, 0, 0, 500, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12048, 'Herb_and_Honey_Tea', 'Herb and Honey Tea', 2, 0, 0, 500, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12049, 'Morocc_Fruit_Wine', 'Morocc Fruit Wine', 2, 0, 0, 300, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12050, 'Mastela_Wine', 'Mastela Wine', 2, 0, 0, 400, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Int+5,,
INSERT INTO `item_db` VALUES (12051, 'Steamed_Crab_Pincer', 'Steamed Crab Pincer', 2, 0, 0, 100, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Vit+1,,
INSERT INTO `item_db` VALUES (12052, 'Sea_Food', 'Sea Food', 2, 0, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12053, 'Clam_Soup', 'Clam Soup', 2, 0, 0, 300, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12054, 'Seasoned_Jellyfish', 'Seasoned Jellyfish', 2, 0, 0, 500, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12055, 'Peppery_Roasted_Dumpling', 'Hot Roasted Dumpling', 2, 0, 0, 800, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Vit+5
INSERT INTO `item_db` VALUES (12056, 'Frog_Sspawn_Soup', '', 2, 0, 0, 100, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Agi+1
INSERT INTO `item_db` VALUES (12057, 'Smooth_Noodle', 'Smooth Noodle', 2, 0, 0, 100, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12058, 'Tentacle_Cheese_Gratin', 'Tentacle\'n\'Cheese Gratin', 2, 0, 0, 500, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12059, 'Lutie_Mixed_Cold_Noodle', 'Lutie Mixed Cold Noodle', 2, 0, 0, 400, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12060, 'Steamed_Bat_Wing_Pumpkin', 'Steamed Bat Wing', 2, 0, 0, 500, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Agi+5
INSERT INTO `item_db` VALUES (12061, 'Grape_Juice_with_Honey', 'Grape Juice with Honey', 2, 0, 0, 100, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Dex+1
INSERT INTO `item_db` VALUES (12062, 'Chocolate_Mousse_Cake', 'Chocolate Mousse Cake', 2, 0, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12063, 'Fruits_Punch', 'Fruits Punch', 2, 0, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12064, 'Cream_Sandwich', 'Cream Sandwich', 2, 0, 0, 500, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12065, 'Green_Salad', 'Green Salad', 2, 0, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Dex+5
INSERT INTO `item_db` VALUES (12066, 'Fried_Monkey_Tail', 'Fried Monkey Tail', 2, 0, 0, 60, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Luk+1
INSERT INTO `item_db` VALUES (12067, 'Mixed_Juice', 'Mixed Juice', 2, 0, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12068, 'Fried_Sweet_Potato_Syrup', 'Fried Sweet Potato Syrup', 2, 0, 0, 500, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12069, 'Ancient_Fish_Dish', 'Ancient Fish Dish', 2, 0, 0, 500, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12070, 'Broiled_Down_Scorpion', 'Broiled Scorpion', 2, 0, 0, 400, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Luk+5
INSERT INTO `item_db` VALUES (12071, 'Flavored_Grilled_Beef', 'Flavored Grilled Beef', 2, 0, 0, 80, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Str+6
INSERT INTO `item_db` VALUES (12072, 'Barbecue', 'Barbecue', 2, 0, 0, 1000, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12073, 'Bear_Foot_Dish', 'Bear Foot Dish', 2, 0, 0, 500, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12074, 'Sauted_Meat_Strips', 'Sauted Meat Strips', 2, 0, 0, 1000, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12075, 'Tongue_Dish', 'Tongue Dish', 2, 0, 0, 1000, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Str+10
INSERT INTO `item_db` VALUES (12076, 'Red_Mushroom_Wine', 'Red Mushroom Wine', 2, 0, 0, 300, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Int+6
INSERT INTO `item_db` VALUES (12077, 'Royal_Jelly_and_Herb_Tea', 'Royal Jelly and Herb Tea', 2, 0, 0, 800, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12078, 'Royal_Tea', 'Royal Tea', 2, 0, 0, 1000, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12079, 'Tristan_12', 'Tristans 12 years wine', 2, 0, 0, 1000, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12080, 'Dragon_Breath_Cocktail', 'Dragon Breath Cocktail', 2, 0, 0, 1000, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Int+10
INSERT INTO `item_db` VALUES (12081, 'Very_Bitter_Invigorant', 'Very Bitter Invigorant', 2, 0, 0, 500, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Vit+6
INSERT INTO `item_db` VALUES (12082, 'Sumptuous_Feast', 'Sumptuous Feast', 2, 0, 0, 400, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12083, 'Huge_Stuffed_Leaves', 'Huge Stuffed Leaves', 2, 0, 0, 1000, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12084, 'Ascending_Dragon_Broth', 'Ascending Dragon Broth', 2, 0, 0, 1000, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12085, 'Stew_of_Immortality', 'Stew of Immortality', 2, 0, 0, 1000, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Vit+10
INSERT INTO `item_db` VALUES (12086, 'Chili_and_Prawn_Gratin', 'Chili and Prawn Gratin', 2, 0, 0, 800, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Agi+6
INSERT INTO `item_db` VALUES (12087, 'Boiled_Vegitable', 'Boiled Vegitable', 2, 0, 0, 800, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12088, 'Very_Hot_Curry', 'Very Hot Curry', 2, 0, 0, 1000, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12089, 'Delicious_Boiled_Meats', 'Delicious Boiled Meats', 2, 0, 0, 1000, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12090, 'Hot_Sand_Scorpion', 'Hot Sand Scorpion', 2, 0, 0, 1000, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Agi+10
INSERT INTO `item_db` VALUES (12091, 'Peach_Cake', 'Peach Cake', 2, 0, 0, 800, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Dex+6
INSERT INTO `item_db` VALUES (12092, 'Soul_Hunt_Bread', 'Soul Hunt Bread', 2, 0, 0, 800, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12093, 'Special_Toast', 'Special Toast', 2, 0, 0, 1000, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12094, 'Ethereal_Fruit_Juice', 'Ethereal Fruit Juice', 2, 0, 0, 500, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12095, 'Wine_of_Bergelmir', 'Wine of Bergelmir', 2, 0, 0, 500, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Dex+10
INSERT INTO `item_db` VALUES (12096, 'Soup_of_Great_Luck', 'Soup of Great Luck', 2, 0, 0, 300, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Luk+6
INSERT INTO `item_db` VALUES (12097, 'Grilled_Meat_Skewer', 'Grilled Meat Skewer', 2, 0, 0, 800, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12098, 'Strawberry_Rice_Ball', 'Strawberry Rice Ball', 2, 0, 0, 400, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12099, 'Blood_Flavored_Sodapop', 'Blood Flavored Sodapop', 2, 0, 0, 1000, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12100, 'Nine_Tail_Dish', 'Nine Tail Dish', 2, 0, 0, 500, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #Luk+10
INSERT INTO `item_db` VALUES (12101, 'Citron', 'Citron', 2, 0, 0, 300, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12102, 'Grilled_Skewer', 'Grilled Skewer', 2, 0, 0, 300, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12103, 'Bloody_Branch', 'Bloody Branch', 2, 0, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'monster \"this\",0,0,\"--ja--\",-3,1,\"\";', NULL);
INSERT INTO `item_db` VALUES (12104, 'Random_Quiver', 'Random Quiver', 2, 0, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'getitem rand(12004,12015),1;', NULL);
INSERT INTO `item_db` VALUES (12105, 'Taming_Item_Giftset', 'Taming Item Giftset', 2, 0, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #gets 3 of any(?) taming items
INSERT INTO `item_db` VALUES (12106, 'Jewel_Box', 'Jewel Case', 2, 0, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #gets any accessary
INSERT INTO `item_db` VALUES (12107, 'Wrapped_Mask', 'Wrapped Mask', 2, 0, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #gets a mask
INSERT INTO `item_db` VALUES (12108, 'Bundle_of_Spells', 'Bundle of Spells', 2, 0, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); # gets 5 of any(?) spell scrolls
INSERT INTO `item_db` VALUES (12109, 'Poring_Box', 'Poring Box', 2, 0, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, 'monster \"this\",0,0,\"--ja--\",-2,1,\"\";', NULL);
INSERT INTO `item_db` VALUES (12110, 'First_Aid_Box', 'First Aid Box', 2, 0, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #gets 5 of any potions
INSERT INTO `item_db` VALUES (12111, 'Wrapped_Food', 'Wrapped Food', 2, 0, 0, 200, 0, 0, 0, 0, 27254783, 2, 0, 0, 0, 0, NULL, NULL); #gets 3 of any food
INSERT INTO `item_db` VALUES (12112, 'Tropical_Sograt', 'Tropical Sograt', 2, 0, 10, 100, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12113, 'Vermilion_the_Beach', 'Vermilion the Beach', 2, 0, 10, 100, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, NULL);

# Elemental Converters
INSERT INTO `item_db` VALUES (12114, 'Elem_Converter_Fire', 'Fire Elem Converter', 2, 0, 10, 10, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, 'sc_start SC_Flame,180000,1;');
INSERT INTO `item_db` VALUES (12115, 'Elem_Converter_Water', 'Water Elem Converter', 2, 0, 10, 10, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, 'sc_start SC_Frost,180000,1;');
INSERT INTO `item_db` VALUES (12116, 'Elem_Converter_Earth', 'Earth Elem Converter', 2, 0, 10, 10, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, 'sc_start SC_Seismic,180000,1;');
INSERT INTO `item_db` VALUES (12117, 'Elem_Converter_Wind', 'Wind Elem Converter', 2, 0, 10, 10, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, 'sc_start SC_Lightning,180000,1;');
# Elemental Resistance Potions
INSERT INTO `item_db` VALUES (12118, 'Resist_Fire_Potion', 'Resist Fire Potion', 2, 0, 10, 10, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12119, 'Resist_Water_Potion', 'Resist Water Potion', 2, 0, 10, 10, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12120, 'Resist_Earth_Potion', 'Resist Earth Potion', 2, 0, 10, 10, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12121, 'Resist_Wind_Potion', 'Resist Wind Potion', 2, 0, 10, 10, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12122, 'Dasik', 'Dasik', 0, 0, 1, 70, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, 'sc_start SC_HitFood,1200000,30;');
INSERT INTO `item_db` VALUES (12123, 'Oil_and_Honey_Pastry', 'Oil and Honey Pastry', 0, 0, 10, 70, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, 'sc_start SC_FleeFood,1200000,30;');
INSERT INTO `item_db` VALUES (12124, 'Various_color_Rice_Cake', 'Rainbow colord Rice Cake', 0, 0, 10, 70, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, 'sc_start SC_BATKFood,1200000,10; sc_start SC_MATKFood,120000,10;');
# Cooking Sets
INSERT INTO `item_db` VALUES (12125, 'Outdoor_Cooker', 'Outdoor Cooker', 2, 0, 10, 20, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, 'produce 11;');
INSERT INTO `item_db` VALUES (12126, 'Home_Cooking_Set', 'Home Cooking Set', 2, 0, 10, 30, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, 'produce 11;');
INSERT INTO `item_db` VALUES (12127, 'Deluxe_Cooking_Set', 'Deluxe Cooking Set', 2, 0, 10, 30, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, 'produce 11;');
INSERT INTO `item_db` VALUES (12128, 'Court_Cooking_Set', 'Court Cooking Set', 2, 0, 10, 70, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, 'produce 11;');
INSERT INTO `item_db` VALUES (12129, 'Legendary_Cooking_Set', 'Legendary Cooking Set', 2, 0, 10, 70, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, 'produce 11;');
INSERT INTO `item_db` VALUES (12130, 'Cookie_Bag', 'Cookie Bag', 3, 0, 10, 70, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12131, 'Lucky_Potion', 'Lucky Potion', 0, 0, 10, 100, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12132, 'Santa\'s_Bag', 'Red Package', 2, 0, 10, 200, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, 'sc_start SC_Xmas,600000,0;');

# More Weapons

# Daggers
INSERT INTO `item_db` VALUES (13000, 'Jujube_Dagger', 'Dagger with Jujube hilt', 4, 20, 0, 600, 39, 0, 1, 0, 10444527, 2, 2, 1, 0, 1, NULL, 'bonus bAtkEle,4;');
INSERT INTO `item_db` VALUES (13001, 'Dragon_Killer', 'Dragon Killer', 4, 20, 0, 900, 110, 0, 1, 0, 10444527, 2, 2, 4, 60, 1, NULL, 'bonus bIgnoreDefRace,9; bonus2 bExpAddRace,9,10;');
INSERT INTO `item_db` VALUES (13002, 'Ginnungagap', 'Ginnungagap', 4, 20, 0, 700, 120, 0, 1, 0, 10444527, 2, 2, 4, 70, 1, NULL, 'bonus bAtkEle,7; bonus2 bAddEff,Eff_Blind,500; bonus2 bAddEff2,Eff_Blind,50;');
INSERT INTO `item_db` VALUES (13003, 'Coward', 'Coward', 4, 65000, 0, 700, 80, 0, 1, 1, 10444527, 2, 2, 3, 55, 1, NULL, 'bonus bDef,5;');
INSERT INTO `item_db` VALUES (13004, 'Coward_', 'Coward', 4, 65000, 0, 700, 80, 0, 1, 2, 10444527, 2, 2, 3, 55, 1, NULL, 'bonus bDef,5;');
INSERT INTO `item_db` VALUES (13005, 'Angel_Wing_Dagger', 'Angel Wing Dagger', 4, 20, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

# Temp Plugs
INSERT INTO `item_db` VALUES (13100, 'Rifle', 'Rifle', 4, 10000, 0, 50, 100, 0, 1, 3, 134217728, 7, 2, 2, 1, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (13200, 'Bullet', 'Bullet', 10, 1, 0, 2, 10, 0, 0, 0, 134217728, 7, 2, 0, 0, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (13250, 'Shuriken', 'Shuriken', 10, 1, 0, 1, 10, 0, 0, 0, 268435456, 7, 2, 0, 0, 1, NULL, NULL);
INSERT INTO `item_db` VALUES (584, 'Skewer_Soup', 'Skewer Soup', 0, 50, 0, 60, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, 'itemheal rand(45,64),0;', NULL);
INSERT INTO `item_db` VALUES (12133, 'McDonald\'s_Ice_Cone', 'McDonald\'s Ice Cone', 0, 50, 0, 80, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, 'itemheal rand(45,64),0;', NULL);

INSERT INTO `item_db` VALUES (2357, 'Valkyrie\'s_Armor', 'Valkyrie\'s Armor', 5, 20, 10, 2800, 0, 6, 0, 1, 119529470, 2, 16, 0, 0, 1, NULL, 'bonus bAllStats,1; bonus bUnbreakableArmor,0; bonus2 bResEff,Eff_Stan,5000;');
INSERT INTO `item_db` VALUES (2421, 'Valkyrie\'s_Shoes', 'Valkyrie\'s Shoes', 5, 20, 10, 500, 0, 4, 0, 1, 119529470, 2, 64, 0, 0, 1, NULL, 'bonus bUnbreakableArmor,0; bonus bMaxSP,(JobLevel*2);');
INSERT INTO `item_db` VALUES (2524, 'Valkyrie\'s_Manteau', 'Valkyrie\'s Manteau', 5, 20, 10, 500, 0, 3, 0, 1, 119529470, 2, 4, 0, 0, 1, NULL, 'bonus bUnbreakableArmor,0; bonus bShortWeaponDamageReturn,5+(getequiprefinerycnt(5)*2);');

INSERT INTO `item_db` VALUES (2668, 'Glory_of_Women', 'Glory of Women', 5, 20, 10, 1500, 0, 1, 0, 0, 127918079, 7, 2, -120, 0, 94, NULL, 'bonus bAllStats,3; bonus bSPrecovRate,20;');

INSERT INTO `item_db` VALUES (5137, 'Alice_Doll', 'Alice Doll', 5, 20, 10, 500, 0, 0, 0, 0, 119529470, 7, 2, 0, 0, 30, NULL, 'bonus bStr,1; bonus2 bAddRace,RC_DemiHuman,10; bonus2 bAddEff2,Eff_Freeze,10;');
INSERT INTO `item_db` VALUES (5138, 'Magic_Eyes', 'Magic Eyes', 5, 20, 10, 300, 0, 0, 0, 0, 67174916, 7, 2, 0, 0, 30, NULL, 'bonus bCastrate,-10; bonus bUseSPrate,20;');
INSERT INTO `item_db` VALUES (5139, 'Confederate_Rose', 'Confederate Rose', 5, 20, 10, 200, 0, 0, 0, 0, 127918079, 7, 2, 0, 0, 10, NULL, 'bonus bDex,1; bonus bInt,1; bonus bMdef,5;');
INSERT INTO `item_db` VALUES (5140, 'Pretty_Ribbon', 'Pretty Ribbon', 5, 20, 10, 400, 0, 0, 0, 0, 127918079, 7, 2, 0, 0, 10, NULL, 'bonus2 bSubRace,RC_Undead,5; bonus2 bSubRace,RC_Demon,5;');
INSERT INTO `item_db` VALUES (5141, 'Marionette', 'Marionette', 5, 20, 10, 400, 0, 0, 0, 0, 119529470, 7, 2, 0, 0, 30, NULL, 'bonus bStr,1;');
INSERT INTO `item_db` VALUES (5142, 'Samurai_Helmet', 'Helmet of Crecent Moon', 5, 20, 10, 3000, 0, 8, 0, 0, 279714, 7, 2, 0, 0, 50, NULL, 'bonus bVit,1; bonus2 bSubRace,RC_DemiHuman,5;');
INSERT INTO `item_db` VALUES (5143, 'Kabuki_Mask', 'Kabuki Mask', 5, 20, 10, 1000, 0, 5, 0, 0, 119529470, 7, 2, 1, 0, 10, NULL, 'bonus2 bResEff,EFf_Silence,3000;');
INSERT INTO `item_db` VALUES (5144, 'Gambler_Hat', 'Gambler Hat', 5, 20, 10, 200, 0, 2, 0, 0, 127918079, 7, 2, 0, 0, 0, NULL, 'bonus bLuk,5;');

INSERT INTO `item_db` VALUES (7516, 'Green_Keycard', 'Green Keycard', 3, 0, 10, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7517, 'Golden_Coin', 'Golden Coin', 3, 0, 10, 100, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (7518, 'Order_of_Women', 'The Order of Women', 3, 0, 10, 10, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, NULL, NULL); #(Order or Medal, whatever)

INSERT INTO `item_db` VALUES (12134, 'Red_Envelope', 'Red Envelope', 2, 0, 10, 10, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12135, 'Green_Ale', 'Green Ale', 2, 0, 10, 30, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `item_db` VALUES (12136, 'Women\'s_Bundle', 'Women\'s Bundle', 2, 0, 10, 100, 0, 0, 0, 0, 127918079, 2, 0, 0, 0, 0, NULL, NULL); #you can get item ID 558,529,2668,7518


#Custom Items
#5201,Fire_Protector,Country of Fire protector,5,20,0,400,,4,,4,27254783,0,256,,45,19,{},{ bonus bInt,2; }
#5202,Wind_Protector,Country of Wind protector,5,4500,0,300,,3,,4,27254783,2,256,,0,7,{},{ bonus bVit,2; }
#5203,Water_Protector,Country of Water protector,5,4500,0,300,,3,,4,27254783,2,256,,0,7,{},{ bonus bDex,2; }
#5204,Lightning_Protector,Country of Lightning protector,5,4500,0,300,,3,,4,27254783,2,256,,0,7,{},{ bonus bLuk,2; }
#5205,Earth_Protector,Country of Earth protector,5,4500,0,300,,3,,4,27254783,2,256,,0,7,{},{ bonus bAgi,2; }
#5206,Sound_Protector,Country of Sound protector,5,4500,0,300,,3,,4,27254783,2,256,,0,7,{},{ bonus bInt,2; }
#5207,Hokage_Hat,Hokage Hat,6,20,0,10,,,,,,,2,,,,{},{ bonus bInt,2; }
#5208,Konoha_Headband,Konoha Headband,5,20,0,300,,2,,4,263200,2,513,,50,151,{},{ bonus bAgi,7; }
#5209,Kakashi_Headgear,Kakashi headgear,5,20,0,300,,2,,4,263200,2,513,,50,151,{},{ bonus bAgi,7; }
#5210,Angel_Wings,Angel Wings,6,20,0,10,,,,,,,2,,,,{},{ bonus bInt,2; }
#5211,Valkyrie_Helmet,Valkyrie Helmet,6,20,0,10,,,,,,,2,,,,{},{ bonus bInt,2; }
#5212,Torn_Angel_Wings,Torn Angel Wings,6,20,0,10,,,,,,,2,,,,{},{ bonus bInt,2; }
#5213,Gargoyle_Wings,Gargoyle Wings,6,20,0,10,,,,,,,2,,,,{},{ bonus bInt,2; }
#5214,Black_Butterfly_Wings,Black Butterfly Wings,6,20,0,10,,,,,,,2,,,,{},{ bonus bInt,2; }
#5215,White_Butterfly_Wings,White Butterfly Wings,6,20,0,10,,,,,,,2,,,,{},{ bonus bInt,2; }
#5216,Legendary_Big_Wings,Legendary_Big_Wings,6,20,0,10,,,,,,,2,,,,{},{ bonus bInt,2; }
#5217,Dowry_Helmet,Dowry Helmet,6,20,0,10,,,,,,,2,,,,{},{ bonus bInt,2; }
#ID,DB_Name,Natural name,Type,Price,Sell,Weight,ATK,DEF,Range,Slot,Job,Gender,Loc,wLV,eLV,View,{UseScript},{EquipScript}
#Type: 0 Healing, 2: Usable, 3: Misc, 4: Weapon, 5: Armor, 6: Card, 7: egg,
#      8: petequip, 10: arrow, 11: Usable with delayed consumption (all items with
#      script "pet" or "itemskill": Lures, Scrolls, Magnifier, Yggdrasil Leaf)
#Elements: 0 Nothing, 1 Water, 2 Earth ,3 Fire, 4 Wind, 5 Poison, 6 Saint, 7 Darkness, 8 Sense, 9 Immortality

# Custom Items go here
#=============================================================

