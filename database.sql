DROP DATABASE IF EXISTS CITADEL;
CREATE DATABASE CITADEL;

USE CITADEL;

DROP TABLE IF EXISTS PEOPLE;
CREATE TABLE PEOPLE
(   PID INT NOT NULL,
    Fname VARCHAR(30) NOT NULL,
    Lname VARCHAR(30) NOT NULL,
    DOB DATE NOT NULL,
    Status_Dead_or_Alive VARCHAR(10),
    House_Name VARCHAR(30),
    Kingdom_they_are_in VARCHAR(50),
PRIMARY KEY (PID) );

DROP TABLE IF EXISTS KINGS_LANDING_RULERS;
CREATE TABLE KINGS_LANDING_RULERS
(   PID INT NOT NULL,
    House VARCHAR(30),
    Duration_Years INT,
FOREIGN KEY (PID) REFERENCES PEOPLE(PID));


DROP TABLE IF EXISTS KINGDOMS;
CREATE TABLE KINGDOMS
(   Name VARCHAR(50) NOT NULL,
    Continent VARCHAR(30),
PRIMARY KEY (Name) );

DROP TABLE IF EXISTS AREA;
CREATE TABLE AREA
(   Location VARCHAR(30) NOT NULL,
    Kingdom VARCHAR(50),
FOREIGN KEY (Kingdom) REFERENCES KINGDOMS(Name),
PRIMARY KEY (Location));

DROP TABLE IF EXISTS DRAGONS;
CREATE TABLE DRAGONS
(   Name VARCHAR(20) NOT NULL,
    Age INT,
    Color VARCHAR(30),
    Status_Dead_or_Alive VARCHAR(10),
PRIMARY KEY (Name) );

DROP TABLE IF EXISTS HOUSES;
CREATE TABLE HOUSES
(   Name VARCHAR(30) NOT NULL,
    Sigil VARCHAR(30) NOT NULL,
    Motto VARCHAR(40) NOT NULL,
PRIMARY KEY (Name) );

DROP TABLE IF EXISTS COOL_DEATHS;
CREATE TABLE COOL_DEATHS
(   Person_Dead_PID INT NOT NULL,
    When_ DATE,
    Weapon_Used VARCHAR(30),
    Manner_of_Killing VARCHAR(40),
    Place VARCHAR(30),
FOREIGN KEY (Person_Dead_PID) REFERENCES PEOPLE(PID));

DROP TABLE IF EXISTS RULED_BY;
CREATE TABLE RULED_BY
(   Kingdom VARCHAR(50) NOT NULL,
    House VARCHAR(30),
FOREIGN KEY (Kingdom) REFERENCES KINGDOMS(Name),
FOREIGN KEY (House) REFERENCES HOUSES(Name));

DROP TABLE IF EXISTS RIDE;
CREATE TABLE RIDE
(   Dragon VARCHAR(20) NOT NULL,
    Rider_PID INT NOT NULL,
FOREIGN KEY (Dragon) REFERENCES DRAGONS(Name),
FOREIGN KEY (Rider_PID) REFERENCES PEOPLE(PID));

DROP TABLE IF EXISTS DIE_BY;
CREATE TABLE DIE_BY
(   Person_Dead_PID INT NOT NULL,
    People_Responsible_PID INT NOT NULL,
FOREIGN KEY (People_Responsible_PID) REFERENCES PEOPLE(PID),
FOREIGN KEY (Person_Dead_PID) REFERENCES COOL_DEATHS(Person_Dead_PID));

-- DROP TABLE IF EXISTS PEOPLE_RESPONSIBLE;
-- CREATE TABLE PEOPLE_RESPONIBLE
-- (   Fname VARCHAR(20),
--     Killed VARCHAR(20),
-- FOREIGN KEY (Fname) REFERENCES DIE_BY(People_Responsible_Fname),
-- FOREIGN KEY (Killed) REFERENCES COOL_DEATHS(Name_of_Person_Dead) );

ALTER TABLE PEOPLE
 ADD CONSTRAINT Ppl_hs FOREIGN KEY (House_Name) REFERENCES HOUSES(Name);
ALTER TABLE PEOPLE
 ADD CONSTRAINT Ppl_kdom FOREIGN KEY (Kingdom_they_are_in) REFERENCES KINGDOMS(Name);
ALTER TABLE KINGS_LANDING_RULERS
    ADD CONSTRAINT Rul_hs FOREIGN KEY (House) REFERENCES HOUSES(Name);