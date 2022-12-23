-- have to add more people according to the other tables like deaths and shit and make sure to add a greyjoy,martell,arryn
-- AAAAAAAAAAAAAAAAAA
INSERT INTO HOUSES VALUES
('Stark','Direwolf','Winter is Coming'),
('Targaryen','Dragon','Fire and Blood'),
('Baratheon','Stag','Ours is the Fury'),
('Greyjoy','Kraken','We do not sow'),
('Lannister','Lion','Hear me Roar'),
('Martell','Sun','Unbowed. Unbent. Unbroken'),
('Tyrell','Rose','Growing Strong'),
('Bolton', 'Flayed Man', 'Our blades are sharp'),
('Arryn','Falcon','As High as Honour');

INSERT INTO KINGDOMS VALUES
('Kingdom of the North','Westeros'),
('Kingdom of Mountain and Vale','Westeros'),
('Kingdom of the Isles and the Rivers','Westeros'),
('Kingdom of the Rock','Westeros'),
('Kingdom of the Reach','Westeros'),
('Kingdom of the Stormlands','Westeros'),
('Principality of Dorne','Westeros'),
('The Crownlands','Westeros'),
('The Wall','Westeros'),
('Braavos','Essos'),
('Lorath','Essos'),
('Dothraki Sea','Essos'),
('Slaver' 's Bay','Essos');

INSERT INTO PEOPLE VALUES
(1, 'Robb', 'Stark', '1999-09-03', 'Dead', 'Stark', 'Kingdom of Mountain and Vale'),
(2, 'Sansa', 'Stark', '2003-12-04', 'Alive', 'Stark', 'The Crownlands'),
(3, 'Bran', 'Stark', '2007-03-24', 'Alive', 'Stark', 'Kingdom of the North'),
(4, 'Arya', 'Stark', '2005-05-30', 'Alive', 'Stark', 'Braavos'),
(5, 'Jon', 'Snow', '1999-05-01', 'Alive', 'Stark', 'The Wall'),
(6, 'Ned', 'Stark', '1950-04-23', 'Dead', 'Stark', 'Kingdom of the North'),
(7, 'Robert', 'Baratheon', '1949-06-24','Dead','Baratheon','The Crownlands'),
(8, 'Joffrey','Baratheon','2002-12-05','Dead','Baratheon','The Crownlands'),
(9, 'Cersei','Lannister','1980-03-06','Alive','Lannister','The Crownlands'),
(10, 'Daenerys','Targaryen','1999-06-06','Alive','Targaryen','Dothraki Sea'),
(11, 'Missandei','Naath','2000-04-21','Alive','Targaryen','Slaver' 's Bay'),
(12, 'Olenna','Tyrell','1920-09-18','Dead','Tyrell','Kingdom of the Reach'),
-- (14, 'Samwell', 'Tarly', 20/10/2004, 'Alive', 'Tarly', 'Kingdom of the Reach'),
(15, 'Shae', 'Shae', '1995=05-05', 'Dead', NULL, 'Lorath'),
(16, 'Ellaria', 'Sand', '1988-02-13', 'Alive', NULL, 'Principality of Dorne'),
-- (17, 'Jorah', 'Mormont', 22/07/1970, 'Alive', 'Mormont')
(18, 'Tommen', 'Baratheon', '2006-03-18', 'Dead', 'Baratheon', 'The Crownlands'),
(19, 'Myrcella', 'Baratheon', '2004-01-04', 'Dead', 'Baratheon', 'Principality of Dorne'),
(20, 'Jaime', 'Lannister', '1980-03-06', 'Alive', 'Lannister', 'The Crownlands'),
(21, 'Lisa', 'Arryn', '1981-09-14', 'Alive', 'Arryn', 'Kingdom of Mountain and Vale'),
(13, 'Tyrion', 'Lannister', '1984-12-20', 'Alive', 'Lannister', 'The Crownlands'),
(23, 'Roose', 'Bolton', '1992-02-03', 'Alive', 'Bolton', 'Kingdom of the North'),
(22, 'Night', 'King', '0001-01-01', 'Alive', NULL, 'The Wall');

INSERT INTO KINGS_LANDING_RULERS VALUES
(2,  'Stark', 8),
(3,  'Stark', 4),
(5, 'Stark', 1),
(7, 'Baratheon',10),
(8, 'Lannister',2),
(9, 'Lannister',4),
(10, 'Targaryen',11),
(12, 'Tyrell',1),
(18, 'Lannister', 2);

INSERT INTO AREA VALUES
('King' 's Landing', 'The Crownlands'),
('Winterfell','Kingdom of the North'),
('Vaes Dothrak','Dothraki Sea'),
('Highgarden','Kingdom of the Reach'),
('Castle Black','The Wall'),
('The Eyrie','Kingdom of Mountain and Vale'),
('Sunspear','Principality of Dorne'),
('Dragonstone','The Crownlands'),
('House of Black and White','Braavos'),
('Meereen','Slaver' 's Bay'),
('Storm' 's End','Kingdom of the Stormlands');

INSERT INTO DRAGONS VALUES
('Syrax',22,'Yellow','Alive'),
('Caraxes',31,'Red','Alive'),
('Balerion',12,'Black','Alive'),
('Seasmoke',43,'Grey','Dead'),
('Dreamfyre',12,'Blue','Alive'),
('Vhagar',90,'Black','Dead'),
('Maleyes',56,'Scarlet','Dead'),
('Drogon',10,'Black','Alive'),
('Rhaegal',10,'Green','Alive'),
('Viserion',10,'Red','Alive');

-- kya chutiya table hai yaar need to dicuss deths and do
INSERT INTO COOL_DEATHS VALUES
(1, '2018-10-24', 'Knife', 'Throat slit', 'The Red Wedding'),
(6, '2017-11-16', 'Sword', 'Beheaded', 'Kings Landing'),
(7, '2017-11-13', 'Poison', 'Boar wounds/poisoned', 'Kings Landing'),
(8, '2019-05-09', 'Poison', 'Poisoned', 'Kings Landing'),
(12, '2022-01-29', 'Poison', 'Poisoned', 'Highgarden'),
(15, '2019-06-15', 'Rope', 'Suffocating', 'Kings Landing'),
(18, '2020-04-01', 'Poison', 'Kissed with poison', 'Dornish seas');


INSERT INTO RULED_BY VALUES
('Kingdom of the North','Stark'),
('Kingdom of Mountain and Vale','Arryn'),
('Kingdom of the Isles and the Rivers','Greyjoy'),
('Kingdom of the Rock','Lannister'),
('Kingdom of the Reach','Tyrell'),
('Kingdom of the Stormlands','Targaryen'),
('The Crownlands','Baratheon'),
('Principality of Dorne','Martell');


INSERT INTO RIDE VALUES
('Drogon', 10),
('Drogon', 5),
('Drogon', 9),
('Rhaegal', 10),
('Viserion', 10),
('Viserion', 2),
('Rhaegal', 22),
('Seasmoke', 15),
('Syrax', 16),
('Syrax', 3),
('Balerion', 3),
('Dreamfyre', 13);

-- next 2 tables also very chutiya
INSERT INTO DIE_BY VALUES
(1, 23),
(6, 9),
(6, 8),
(7, 9),
(8, 12),
(12, 20),
(15, 13),
(18, 16);