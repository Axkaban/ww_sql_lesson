/*Name: MySQL Sample Database classicmodels
Link: http://www.mysqltutorial.org/mysql-sample-database.aspx
Version 3.1
+ changed data type from DOUBLE to DECIMAL for amount columns
Version 3.0
+ changed DATETIME to DATE for some colunmns
Version 2.0
+ changed table type from MyISAM to InnoDB
+ added foreign keys for all tables 
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE IF NOT EXISTS lesson;

USE lesson;

DROP TABLE IF EXISTS middle_earth;
CREATE TABLE middle_earth (
 id int(11) PRIMARY KEY,
 locationName varchar(50) NOT NULL,
 inhabitants varchar(50),
 languages varchar(50) NOT NULL
) ENGINE=INNODB;

DROP TABLE IF EXISTS main_inhabitants;
CREATE TABLE main_inhabitants (
 id int(11) PRIMARY KEY,
 ownName varchar(50) NOT NULL,
 nickName varchar(50),
 race varchar(50) NOT NULL,
 items varchar(50),
 skill varchar(50) NOT NULL,
 skillLevel int(11),
 partOfFellowship boolean NOT NULL,
 isFrom varchar(50) NOT NULL,
 isAt int(11)
) ENGINE=INNODB;

INSERT INTO middle_earth (id, locationName, inhabitants, languages)
VALUES 
(1, "The Shire", "Hobbits", "Hobbitish, Westron"),
(2,"Rivendell", "Ñoldor", "Sindarin, Westron"),
(3, "Mordor", "Uruk-hai", "Black Speech");

INSERT INTO main_inhabitants (id, ownName, nickName, race, items, skill, skillLevel, partOfFellowship, isFrom, isAt)
VALUES
(1, "Frodo Baggins", "Nine-Fingered Frodo", "Hobbit", "Ring", "Valor", 3, false, "The Shire", 1),
(2, "Samwise Gamgee", "Sam", "Hobbit", "Bag", "Cooking", 3, false, "The Shire", 1),
(3, "Meriadoc Brandybuck", "Merry", "Hobbit", "", "Mischief", 3, false, "The Shire", 1),
(4, "Peregrin Took", "Pippin", "Hobbit", "", "Mischief", 3, false, "The Shire", 1),
(5, "Gandalf", "Gandalf the Grey", "Ainur", "Wizard Staff, Glamdring", "Magic", 10, false, "The begining of time", 2),
(6, "Legolas Greenleaf", "Greenleaf", "Elf", "Bow and 'Long white knife'", "Archer", 9, false, "Woodland Realm", 2),
(7, "Gimli", "Lockbearer", "Dwarf", "Broad-bladed axe", "Courage", 8, false, "Thorin's Halls", 2),
(8, "Aragorn", "Strider", "Man", "Andúril", "Long Age", 10, false, "Reunited Kingdom", 2),
(9, "Boromir", "Steward-prince of Gondor", "Man", "Sword", "Fairness", 7, false, "Gondor", 2),
(10, "Sméagol", "Gollum", "Hobbit", "", "Greed", 4, false, "Gladden Fields", 0);