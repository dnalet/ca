CREATE DATABASE  IF NOT EXISTS `spidermanComics` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `spidermanComics`;
-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: spidermanComics
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Characters`
--

DROP TABLE IF EXISTS `Characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Characters` (
  `charName` varchar(100) DEFAULT NULL,
  `charID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`charID`),
  UNIQUE KEY `charName` (`charName`)
) ENGINE=InnoDB AUTO_INCREMENT=518 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Characters`
--

LOCK TABLES `Characters` WRITE;
/*!40000 ALTER TABLE `Characters` DISABLE KEYS */;
INSERT INTO `Characters` VALUES ('Adoma',100),('Aiden Blain',127),('Alchemax',200),('Aleksei Sytsevich',182),('Alistaire Smythe',386),('Anna Maria Marconi',32),('Anna Maria Marconi (A.I.)',291),('Anselmo',484),('Anthony Stark',199),('Anton Miguel Rodriquez',391),('Aquarius (Jacobs\' Zodiac)',79),('Aribella Fishbach',19),('Aries (Jacobs\' Zodiac)',107),('Arnim Zola',423),('Augustus Roman',10),('Aunt May',29),('Avengers',215),('Barbara Morse',17),('Barton Hamilton',376),('Bastards of Evil',457),('Ben Reilly',185),('Benjamin Parker',474),('Black Cat\'s Gang',36),('Black Widow',415),('Burt Kenyon',385),('Burt Richardson',174),('Cancer (Jacobs\' Zodiac)',78),('Cancer (Terry)',184),('Canice Cassidy',47),('Capricorn (Jacobs\' Zodiac)',114),('Captain America',439),('Carol Danvers',24),('Chango (Santerians)',463),('Cindy Moon',1),('Clayton Cole',87),('Curtis Connors',175),('Daemos',349),('Danielle Blunt',455),('Desmond Charne',377),('Devil-Spider',429),('Doctor Octopus',64),('Doppelganger',41),('Dr. McCray',261),('Eddie Brock',456),('Eduardo Lobo',372),('Edward Leeds',371),('Edwin Jarvis',225),('Electro',45),('Elite Roxxon Strike Team',454),('Elizabeth Allan',211),('Elizabeth Brant',220),('Empire Unlimited',6),('Facoquero',450),('Fact Channel News',305),('Felicia Hardy',30),('Fisk Industries',307),('Francine Frye',271),('Frank Oliver',381),('Frederick Foswell',380),('Gemini (Jacobs\' Zodiac, second)',183),('Gemini (Sarah)',44),('George Stacy',370),('Ghost',209),('Goblin Nation',62),('Goldbug II',39),('Grady Scraps',27),('Green Goblin',452),('Gwendolyne Stacy',3),('Harold Osborn',82),('Hawkeye',425),('Hector Baez',18),('Helmut Zemo',205),('Henry McCoy',473),('Hobgoblin',56),('Hobie Brown',16),('Hobie Brown (Clone)',272),('Home',330),('Horizon University',26),('Hubert Carpenter',49),('Hulk',437),('Hydra',408),('Inheritors',352),('Inner Demons',517),('Iron Man',427),('Issa (Naduayan)',98),('Itzpapalotl',514),('Jacinda Rodriquez',432),('Jackal',367),('Jackson Brice',374),('Jane Foster',247),('Jason Pierce',448),('Jennix',347),('Jerome Salteres',259),('Jerome Salteres (Clone)',254),('Jessica Drew',11),('John Jonah Jameson',257),('John Jonah Jameson, Sr.',91),('Jonathan Mangum',513),('Jonathan Storm',85),('Kaine',353),('Kaine Parker',338),('Kamala Khan',244),('Kangaroo',61),('Karla Sofen',207),('Karn',341),('Karnov',48),('Kevin Templeton',461),('Kingpin',60),('Kingpin\'s Henchmen',335),('Kraven the Hunter',67),('Kwasi',97),('Leo (Jacobs\' Zodiac)',52),('Lian Tang',34),('Libra (Jacobs\' Zodiac)',108),('Living Brain',38),('Lizard',53),('Lonnie Lincoln',204),('Lorina Dodson',50),('Magus',57),('Mara Rodriguez',460),('Marcus Lyman',398),('Marla Madison',270),('Martha Connors',176),('Mary Jane Watson',198),('Mary MacPherran',203),('Masters of Evil',208),('Mateo Rodriguez',505),('Max Modell',25),('Maxwell Dillon',266),('May Reilly',93),('Melinda May',94),('Miguel O\'Hara',12),('Miles Morales',15),('Miles Warren',364),('Miles Warren Clones (New U)',281),('Min Wei',31),('Mister Negative',512),('Morlun',351),('Mysterio',65),('Nathan Lubensky',395),('Neon Dragon',515),('Nestor Rodriguez',467),('New U Technologies',180),('Nicholas Fury, Jr.',89),('Nicholas Katzenberg',392),('Norman Osborn',109),('Octobot',288),('Ogun (Santerians)',465),('Okiro',104),('Oksana Sytsevich',178),('Oshun (Santerians)',464),('Otto Octavius',262),('Otto Octavius (Duplicate)',37),('Oya (Santerians)',466),('Parker Industries',22),('Pavitr Prabhakar',2),('Peter Parker',7),('Peter Parker (Duplicate)',334),('Peter Porker',8),('Phillip Chang',23),('Phillip Coulson',102),('Pisces (Jacobs\' Zodiac)',55),('Quentin Beck',365),('Raymond Bloch',58),('Rhino',42),('Rita Clarkson',264),('Roderick Kingsley',441),('Rose (Blume)',383),('Roxxon Energy Corporation',440),('Sajani Jaffrey',35),('Sally Avril',387),('Samuel Alexander',242),('Samuel Wilson',243),('Sandman',43),('Sandwich',422),('Santerians',468),('Scarlet Spider',360),('Serpent',40),('Shannon Stillwell',9),('Shen Quinghao',130),('Silver Sablinova',443),('Sinister Sextet',63),('Solus',348),('Spider-Clone',357),('Spider-Man',4),('Spider-Man (Tsum Tsum)',406),('Stark Industries',196),('Steven Levins',390),('Strategic Homeland Intervention, Enforcement and Logistics Division',84),('Tandy Bowen',145),('The Living Brain',410),('The Other (Multiverse)',343),('Thor',424),('Tiberius Stone',201),('Tyrone Johnson',149),('Uncle Ben Foundation',28),('Vanessa Fisk',315),('Venom',54),('Venom (Symbiote)',458),('Vernon Fury',72),('Veronica Diaz',509),('Vision',241),('Vox Populi',444),('Vulture',51),('War Goblins',111),('Warriors of the Great Web',14),('Wayne Brady',516),('Wilbur Day',388),('William Braddock',5),('William Connors',177),('Wilson Fisk',299),('Yao Wu',20),('Zodiac (Jacobs\')',46);
/*!40000 ALTER TABLE `Characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CharactersEarth`
--

DROP TABLE IF EXISTS `CharactersEarth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CharactersEarth` (
  `earthID` varchar(100) DEFAULT NULL,
  `charID` int(11) DEFAULT NULL,
  UNIQUE KEY `charEarth_uq` (`charID`,`earthID`),
  CONSTRAINT `charEarth_fk` FOREIGN KEY (`charID`) REFERENCES `Characters` (`charID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CharactersEarth`
--

LOCK TABLES `CharactersEarth` WRITE;
/*!40000 ALTER TABLE `CharactersEarth` DISABLE KEYS */;
INSERT INTO `CharactersEarth` VALUES ('Earth-616',1),('Earth-50101',2),('Earth-616',3),('Earth-65',3),('',4),('Earth-833',5),('',6),('Earth-616',7),('Earth-90214',7),('Earth-8311',8),('Earth-616',9),('Earth-616',10),('Earth-616',11),('Earth-TRN588',12),('',14),('Earth-1610',15),('Earth-616',16),('Earth-616',17),('Earth-616',18),('Earth-616',19),('Earth-616',20),('',22),('Earth-616',23),('Earth-616',24),('Earth-616',25),('',26),('Earth-616',27),('',28),('',29),('Earth-616',30),('Earth-616',31),('Earth-616',32),('Earth-616',34),('Earth-616',35),('',36),('Earth-616',37),('Earth-616',38),('',39),('Earth-311',40),('',41),('',42),('',43),('Earth-616',44),('',45),('Earth-311',45),('',46),('Earth-311',47),('Earth-311',48),('Earth-616',49),('Earth-616',50),('',51),('Earth-616',52),('',53),('',54),('Earth-616',55),('',56),('Earth-311',56),('Earth-311',57),('Earth-616',58),('',60),('',61),('',62),('',63),('',64),('',65),('',67),('Earth-616',72),('Earth-616',78),('Earth-616',79),('Earth-616',82),('',84),('Earth-616',85),('Earth-616',87),('Earth-616',89),('Earth-616',91),('Earth-616',93),('Earth-616',94),('Earth-616',97),('Earth-616',98),('Earth-616',100),('Earth-616',102),('Earth-616',104),('Earth-616',107),('Earth-616',108),('Earth-616',109),('',111),('Earth-616',114),('Earth-616',127),('Earth-616',130),('Earth-616',145),('Earth-616',149),('',174),('Earth-616',175),('Earth-616',176),('Earth-616',177),('Earth-616',178),('',180),('Earth-616',182),('',183),('',184),('Earth-616',185),('',196),('Earth-616',198),('Earth-616',199),('',200),('Earth-616',201),('Earth-616',203),('Earth-616',204),('Earth-616',205),('Earth-616',207),('',208),('Earth-616',209),('Earth-616',211),('',215),('Earth-616',220),('Earth-616',225),('Earth-616',241),('Earth-616',242),('Earth-616',243),('Earth-616',244),('Earth-616',247),('Earth-616',254),('Earth-616',257),('Earth-616',259),('Earth-616',261),('Earth-616',262),('Earth-616',264),('Earth-616',266),('Earth-616',270),('Earth-616',271),('Earth-616',272),('',281),('',288),('Earth-TRN588',291),('Earth-616',299),('',305),('',307),('Earth-616',315),('',330),('Earth-616',334),('',335),('Earth-616',338),('Earth-001',341),('',343),('Earth-001',347),('Earth-001',348),('Earth-001',349),('Earth-001',351),('',352),('',353),('',357),('',360),('Earth-616',364),('Earth-616',365),('',367),('Earth-616',370),('Earth-616',371),('Earth-616',372),('Earth-616',374),('Earth-616',376),('Earth-616',377),('Earth-616',380),('Earth-616',381),('Earth-616',383),('Earth-616',385),('Earth-616',386),('Earth-616',387),('Earth-616',388),('Earth-616',390),('Earth-616',391),('Earth-616',392),('Earth-616',395),('Earth-616',398),('Earth-616',406),('',408),('',410),('',415),('Earth-616',422),('Earth-616',423),('',424),('',425),('',427),('Earth-616',429),('Earth-616',432),('',437),('',439),('',440),('',441),('Earth-616',443),('',444),('Earth-616',448),('Earth-616',450),('',452),('',454),('Earth-616',455),('',456),('',457),('',458),('Earth-616',460),('Earth-616',461),('Earth-616',463),('Earth-616',464),('Earth-616',465),('Earth-616',466),('Earth-616',467),('',468),('Earth-616',473),('Earth-616',474),('',484),('',505),('',509),('Earth-616',512),('',513),('',514),('',515),('',516),('',517);
/*!40000 ALTER TABLE `CharactersEarth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Issue`
--

DROP TABLE IF EXISTS `Issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Issue` (
  `issueName` varchar(100) DEFAULT NULL,
  `issueNum` decimal(10,0) DEFAULT NULL,
  `seriesID` int(11) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `imageURL` varchar(500) DEFAULT NULL,
  `issueID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`issueID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Issue`
--

LOCK TABLES `Issue` WRITE;
/*!40000 ALTER TABLE `Issue` DISABLE KEYS */;
INSERT INTO `Issue` VALUES ('Worldwide & The Last Time',1,1,'2015-10-07','http://vignette1.wikia.nocookie.net/marveldatabase/images/e/e9/Amazing_Spider-Man_Vol_4_1.jpg',1),('Water Proof',2,1,'2015-10-21','http://vignette4.wikia.nocookie.net/marveldatabase/images/d/d3/Amazing_Spider-Man_Vol_4_2.jpg',2),('Friendly Fire',3,1,'2015-11-04','http://vignette4.wikia.nocookie.net/marveldatabase/images/8/8b/Amazing_Spider-Man_Vol_4_3.jpg',3),('High Priority',4,1,'2015-12-09','https://vignette1.wikia.nocookie.net/marveldatabase/images/5/56/Amazing_Spider-Man_Vol_4_4.jpg',4),('Set in Stone',5,1,'2015-12-23','http://vignette2.wikia.nocookie.net/marveldatabase/images/5/51/Amazing_Spider-Man_Vol_4_5.jpg',5),('The Dark Kingdom - Part 1: Turnabout',6,1,'2015-12-30','http://vignette3.wikia.nocookie.net/marveldatabase/images/2/26/Amazing_Spider-Man_Vol_4_6.jpg',6),('The Dark Kingdom - Part 2: Opposing Forces',7,1,'2016-02-03','http://vignette2.wikia.nocookie.net/marveldatabase/images/3/3a/Amazing_Spider-Man_Vol_4_7.jpg',7),('The Dark Kingdom - Part 3: Black & White',8,1,'2016-02-17','https://vignette2.wikia.nocookie.net/marveldatabase/images/0/08/Amazing_Spider-Man_Vol_4_8.jpg',8),('Scorpio Rising - Part 1: One-Way Trip',9,1,'2016-03-09','http://vignette2.wikia.nocookie.net/marveldatabase/images/5/52/Amazing_Spider-Man_Vol_4_9.jpg',9),('Scorpio Rising - Part 2: Power Play',10,1,'2016-04-13','https://vignette3.wikia.nocookie.net/marveldatabase/images/e/e8/Amazing_Spider-Man_Vol_4_10.jpg',10),('Scorpio Rising - Part 3: Signs From Above',11,1,'2016-04-27','http://vignette2.wikia.nocookie.net/marveldatabase/images/8/86/Amazing_Spider-Man_Vol_4_11.jpg',11),('Power Play - Part 1: The Stark Contrast',12,1,'2016-05-04','http://vignette4.wikia.nocookie.net/marveldatabase/images/2/29/Amazing_Spider-Man_Vol_4_12.jpg',12),('Power Play - Part 2: Civil War Reenactment',13,1,'2016-06-01','http://vignette1.wikia.nocookie.net/marveldatabase/images/a/ae/Amazing_Spider-Man_Vol_4_13.jpg',13),('Power Play - Part 3: Avengers Assembled',14,1,'2016-06-15','http://vignette3.wikia.nocookie.net/marveldatabase/images/2/27/Amazing_Spider-Man_Vol_4_14.jpg',14),('Power Play - Conclusion: Suit Yourself',15,1,'2016-07-06','http://vignette2.wikia.nocookie.net/marveldatabase/images/6/62/Amazing_Spider-Man_Vol_4_15.jpg',15),('Before Dead No More - Part One: Whatever the Cost',16,1,'2016-08-10','https://vignette3.wikia.nocookie.net/marveldatabase/images/7/7f/Amazing_Spider-Man_Vol_4_16.jpg',16),('Before Dead No More - Part Two: Spark of Life',17,1,'2016-08-31','http://vignette2.wikia.nocookie.net/marveldatabase/images/d/d5/Amazing_Spider-Man_Vol_4_17.jpg',17),('Amazing Spider-Man Vol 4 Issue 18',18,1,'2016-09-21','http://vignette2.wikia.nocookie.net/marveldatabase/images/b/b8/Amazing_Spider-Man_Vol_4_18.jpg',18),('Amazing Spider-Man Vol 4 Issue 19',19,1,'2016-10-05','http://vignette2.wikia.nocookie.net/marveldatabase/images/0/02/Amazing_Spider-Man_Vol_4_19.jpg',19),('Amazing Spider-Man Vol 4 Issue 20',20,1,'2016-10-19','http://vignette1.wikia.nocookie.net/marveldatabase/images/f/f8/Amazing_Spider-Man_Vol_4_20.jpg',20),('Amazing Spider-Man Vol 4 Issue 21',21,1,'2016-11-16','https://vignette1.wikia.nocookie.net/marveldatabase/images/3/39/Amazing_Spider-Man_Vol_4_21.jpg',21),('Amazing Spider-Man Vol 4 Issue 22',22,1,'2016-12-21','http://vignette1.wikia.nocookie.net/marveldatabase/images/4/4d/Amazing_Spider-Man_Vol_4_22.jpg',22),('Amazing Spider-Man Vol 4 Issue 23',23,1,'2017-01-18','http://vignette3.wikia.nocookie.net/marveldatabase/images/f/f1/Amazing_Spider-Man_Vol_4_23.jpg',23),('Amazing Spider-Man Vol 4 Issue 24',24,1,'2017-02-22','http://vignette1.wikia.nocookie.net/marveldatabase/images/2/2e/Amazing_Spider-Man_Vol_4_24.jpg',24),('Amazing Spider-Man Vol 4 Issue 25',25,1,'2017-03-15','http://vignette3.wikia.nocookie.net/marveldatabase/images/d/d5/Amazing_Spider-Man_Vol_4_25.jpg',25),('Amazing Spider-Man Vol 4 Issue 26',26,1,'2017-04-12','https://vignette1.wikia.nocookie.net/marveldatabase/images/8/8d/Amazing_Spider-Man_Vol_4_26.jpg',26),('Amazing Spider-Man Vol 4 Issue 27',27,1,'2017-05-10','http://vignette4.wikia.nocookie.net/marveldatabase/images/0/0a/Amazing_Spider-Man_Vol_4_27_Textless.jpg',27),('Amazing Spider-Man Vol 4 Issue 28',28,1,'2017-06-07','https://vignette4.wikia.nocookie.net/marveldatabase/images/9/90/Amazing_Spider-Man_Vol_4_28_Textless.jpg',28),('Amazing Spider-Man Vol 4 Issue 29',29,1,'2017-06-28','https://vignette1.wikia.nocookie.net/marveldatabase/images/7/73/Amazing_Spider-Man_Vol_4_29_Textless.jpg',29),('Amazing Grace - Part One: A Wretch Like Me',1,1,'2015-12-16','https://vignette2.wikia.nocookie.net/marveldatabase/images/a/a1/Amazing_Spider-Man_Vol_4_1.1.jpg',30),('Amazing Grace - Part Two: My Heart to Fear',1,1,'2016-01-06','http://vignette3.wikia.nocookie.net/marveldatabase/images/e/e4/Amazing_Spider-Man_Vol_4_1.2.jpg',31),('Amazing Grace - Part Three: Dangers, Toils and Snares',1,1,'2016-02-24','http://vignette4.wikia.nocookie.net/marveldatabase/images/9/91/Amazing_Spider-Man_Vol_4_1.3.jpg',32),('Amazing Grace - Part Four: Within the Veil',1,1,'2016-03-30','https://vignette1.wikia.nocookie.net/marveldatabase/images/f/f9/Amazing_Spider-Man_Vol_4_1.4.jpg',33),('Amazing Grace - Part Five: Flesh and Heart Shall Fail',2,1,'2016-05-25','https://vignette3.wikia.nocookie.net/marveldatabase/images/2/22/Amazing_Spider-Man_Vol_4_1.5.jpg',34),('Amazing Grace - Part Six: Lead Me Home',2,1,'2016-07-27','http://vignette1.wikia.nocookie.net/marveldatabase/images/7/7a/Amazing_Spider-Man_Vol_4_1.6.jpg',35),('Amazing Spider-Man Annual Vol 3 Issue 1',1,2,'2016-11-23','http://vignette1.wikia.nocookie.net/marveldatabase/images/7/7f/Amazing_Spider-Man_Annual_Vol_3_1.jpg',36),('Peter Parker: The Spectacular Spider-Man Vol 1 Issue 1',1,3,'2017-06-21','https://vignette2.wikia.nocookie.net/marveldatabase/images/9/9a/Peter_Parker_The_Spectacular_Spider-Man_Vol_1_1.jpg',37);
/*!40000 ALTER TABLE `Issue` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER issueAfterInsert
	AFTER INSERT ON Issue
    FOR EACH ROW
    BEGIN
		UPDATE Series SET numOfIssues = numOfIssues+ 1
			WHERE NEW.seriesID=Series.seriesID;
                
		SET @sRD = (SELECT Series.releaseDate FROM Series
						INNER JOIN Issue 
						ON Series.seriesID=NEW.seriesID
						WHERE NEW.seriesID=Series.seriesID
						LIMIT 1);
            
		SET @sED = (SELECT Series.endDate FROM Series
						INNER JOIN Issue 
						ON Series.seriesID=NEW.seriesID
						WHERE NEW.seriesID=Series.seriesID
						LIMIT 1);
			
        IF @sRD > NEW.releaseDate THEN
			UPDATE Series
				SET Series.releaseDate = NEW.releaseDate
				WHERE NEW.releaseDate < @sRD AND NEW.seriesID=Series.seriesID;
                
		ELSEIF @sED < NEW.releaseDate THEN
			UPDATE Series
				SET Series.endDate = NEW.releaseDate
				WHERE NEW.releaseDate > @sED AND NEW.seriesID=Series.seriesID;
		END IF;
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER afterIssueDelete
AFTER DELETE ON Issue
FOR EACH ROW
BEGIN
	UPDATE Series SET numOfIssues = numOfIssues- 1
		WHERE OLD.seriesID=Series.seriesID;
	IF (SELECT numOfIssues FROM Series WHERE OLD.seriesID=Series.seriesID LIMIT 1) < 1 THEN
		DELETE FROM Series WHERE seriesID=OLD.seriesID ORDER BY seriesID LIMIT 1;
    END IF;    
	SET @sRD = (SELECT Series.releaseDate FROM Series
				INNER JOIN Issue 
				ON Series.seriesID=OLD.seriesID
				WHERE OLD.seriesID=Series.seriesID
				LIMIT 1);
            
	SET @sED = (SELECT Series.endDate FROM Series
				INNER JOIN Issue 
				ON Series.seriesID=OLD.seriesID
				WHERE OLD.seriesID=Series.seriesID
				LIMIT 1);
			
    IF @sRD < OLD.releaseDate THEN
		UPDATE Series
			SET Series.releaseDate = OLD.releaseDate
			WHERE OLD.releaseDate < @sRD AND OLD.seriesID=Series.seriesID;
                
	ELSEIF @sED > OLD.releaseDate THEN
		UPDATE Series
			SET Series.endDate = OLD.releaseDate
			WHERE OLD.releaseDate > @sED AND OLD.seriesID=Series.seriesID;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Series`
--

DROP TABLE IF EXISTS `Series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Series` (
  `seriesName` varchar(100) DEFAULT NULL,
  `numOfIssues` int(11) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `seriesID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`seriesID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Series`
--

LOCK TABLES `Series` WRITE;
/*!40000 ALTER TABLE `Series` DISABLE KEYS */;
INSERT INTO `Series` VALUES ('Amazing Spider-Man Vol 4',35,'2015-10-07','2017-06-28',1),('Amazing Spider-Man Annual Vol 3',1,'2016-11-23','2016-11-23',2),('Peter Parker: The Spectacular Spider-Man Vol 1',1,'2017-06-21','2017-06-21',3);
/*!40000 ALTER TABLE `Series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Timetable`
--

DROP TABLE IF EXISTS `Timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Timetable` (
  `seriesID` int(11) DEFAULT NULL,
  `charID` int(11) DEFAULT NULL,
  `typeOfChar` enum('Protagonist','Antagonist','Supporting') DEFAULT NULL,
  `issueID` int(11) DEFAULT NULL,
  `timeID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`timeID`),
  KEY `timetableSeries_fk` (`seriesID`),
  KEY `timetableChar_fk` (`charID`),
  KEY `timetableIssue_fk` (`issueID`),
  CONSTRAINT `timetableChar_fk` FOREIGN KEY (`charID`) REFERENCES `Characters` (`charID`) ON DELETE CASCADE,
  CONSTRAINT `timetableIssue_fk` FOREIGN KEY (`issueID`) REFERENCES `Issue` (`issueID`) ON DELETE CASCADE,
  CONSTRAINT `timetableSeries_fk` FOREIGN KEY (`seriesID`) REFERENCES `Series` (`seriesID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=518 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Timetable`
--

LOCK TABLES `Timetable` WRITE;
/*!40000 ALTER TABLE `Timetable` DISABLE KEYS */;
INSERT INTO `Timetable` VALUES (1,1,'Protagonist',1,1),(1,2,'Protagonist',1,2),(1,3,'Protagonist',1,3),(1,4,'Protagonist',1,4),(1,5,'Protagonist',1,5),(1,6,'Protagonist',1,6),(1,7,'Protagonist',1,7),(1,8,'Protagonist',1,8),(1,9,'Protagonist',1,9),(1,10,'Protagonist',1,10),(1,11,'Protagonist',1,11),(1,12,'Protagonist',1,12),(1,7,'Protagonist',1,13),(1,14,'Protagonist',1,14),(1,15,'Supporting',1,15),(1,16,'Supporting',1,16),(1,17,'Supporting',1,17),(1,18,'Supporting',1,18),(1,19,'Supporting',1,19),(1,20,'Supporting',1,20),(1,7,'Supporting',1,21),(1,22,'Supporting',1,22),(1,23,'Supporting',1,23),(1,24,'Supporting',1,24),(1,25,'Supporting',1,25),(1,26,'Supporting',1,26),(1,27,'Supporting',1,27),(1,28,'Supporting',1,28),(1,29,'Supporting',1,29),(1,30,'Supporting',1,30),(1,31,'Supporting',1,31),(1,32,'Supporting',1,32),(1,22,'Supporting',1,33),(1,34,'Supporting',1,34),(1,35,'Supporting',1,35),(1,36,'Supporting',1,36),(1,37,'Supporting',1,37),(1,38,'Supporting',1,38),(1,39,'Antagonist',1,39),(1,40,'Antagonist',1,40),(1,41,'Antagonist',1,41),(1,42,'Antagonist',1,42),(1,43,'Antagonist',1,43),(1,44,'Antagonist',1,44),(1,45,'Antagonist',1,45),(1,46,'Antagonist',1,46),(1,47,'Antagonist',1,47),(1,48,'Antagonist',1,48),(1,49,'Antagonist',1,49),(1,50,'Antagonist',1,50),(1,51,'Antagonist',1,51),(1,52,'Antagonist',1,52),(1,53,'Antagonist',1,53),(1,54,'Antagonist',1,54),(1,55,'Antagonist',1,55),(1,56,'Antagonist',1,56),(1,57,'Antagonist',1,57),(1,58,'Antagonist',1,58),(1,22,'Antagonist',1,59),(1,60,'Antagonist',1,60),(1,61,'Antagonist',1,61),(1,62,'Antagonist',1,62),(1,63,'Antagonist',1,63),(1,64,'Antagonist',1,64),(1,65,'Antagonist',1,65),(1,45,'Antagonist',1,66),(1,67,'Antagonist',1,67),(1,7,'Protagonist',2,68),(1,16,'Supporting',2,69),(1,32,'Supporting',2,70),(1,35,'Supporting',2,71),(1,72,'Supporting',2,72),(1,22,'Supporting',2,73),(1,37,'Supporting',2,74),(1,38,'Supporting',2,75),(1,55,'Antagonist',2,76),(1,46,'Antagonist',2,77),(1,78,'Antagonist',2,78),(1,79,'Antagonist',2,79),(1,52,'Antagonist',2,80),(1,7,'Protagonist',3,81),(1,82,'Supporting',3,82),(1,17,'Supporting',3,83),(1,84,'Supporting',3,84),(1,85,'Supporting',3,85),(1,22,'Supporting',3,86),(1,87,'Supporting',3,87),(1,22,'Supporting',3,88),(1,89,'Supporting',3,89),(1,7,'Protagonist',4,90),(1,91,'Supporting',4,91),(1,16,'Supporting',4,92),(1,93,'Supporting',4,93),(1,94,'Supporting',4,94),(1,28,'Supporting',4,95),(1,17,'Supporting',4,96),(1,97,'Supporting',4,97),(1,98,'Supporting',4,98),(1,84,'Supporting',4,99),(1,100,'Supporting',4,100),(1,85,'Supporting',4,101),(1,102,'Supporting',4,102),(1,22,'Supporting',4,103),(1,104,'Supporting',4,104),(1,89,'Supporting',4,105),(1,79,'Antagonist',4,106),(1,107,'Antagonist',4,107),(1,108,'Antagonist',4,108),(1,109,'Antagonist',4,109),(1,44,'Antagonist',4,110),(1,111,'Antagonist',4,111),(1,72,'Antagonist',4,112),(1,46,'Antagonist',4,113),(1,114,'Antagonist',4,114),(1,7,'Protagonist',5,115),(1,16,'Supporting',5,116),(1,94,'Supporting',5,117),(1,17,'Supporting',5,118),(1,84,'Supporting',5,119),(1,85,'Supporting',5,120),(1,32,'Supporting',5,121),(1,102,'Supporting',5,122),(1,35,'Supporting',5,123),(1,22,'Supporting',5,124),(1,89,'Supporting',5,125),(1,37,'Supporting',5,126),(1,127,'Supporting',5,127),(1,38,'Supporting',5,128),(1,7,'Protagonist',6,129),(1,130,'Supporting',6,130),(1,31,'Supporting',6,131),(1,34,'Supporting',6,132),(1,20,'Supporting',6,133),(1,22,'Supporting',6,134),(1,23,'Supporting',6,135),(1,7,'Protagonist',7,136),(1,82,'Supporting',7,137),(1,32,'Supporting',7,138),(1,31,'Supporting',7,139),(1,87,'Supporting',7,140),(1,20,'Supporting',7,141),(1,22,'Supporting',7,142),(1,23,'Supporting',7,143),(1,7,'Protagonist',8,144),(1,145,'Supporting',8,145),(1,130,'Supporting',8,146),(1,34,'Supporting',8,147),(1,20,'Supporting',8,148),(1,149,'Supporting',8,149),(1,22,'Supporting',8,150),(1,23,'Supporting',8,151),(1,7,'Protagonist',9,152),(1,84,'Supporting',9,153),(1,32,'Supporting',9,154),(1,22,'Supporting',9,155),(1,89,'Supporting',9,156),(1,37,'Supporting',9,157),(1,127,'Supporting',9,158),(1,38,'Supporting',9,159),(1,7,'Protagonist',10,160),(1,16,'Supporting',10,161),(1,82,'Supporting',10,162),(1,17,'Supporting',10,163),(1,19,'Supporting',10,164),(1,32,'Supporting',10,165),(1,31,'Supporting',10,166),(1,25,'Supporting',10,167),(1,87,'Supporting',10,168),(1,27,'Supporting',10,169),(1,22,'Supporting',10,170),(1,23,'Supporting',10,171),(1,37,'Supporting',10,172),(1,38,'Supporting',10,173),(1,174,'Antagonist',10,174),(1,175,'Antagonist',10,175),(1,176,'Antagonist',10,176),(1,177,'Antagonist',10,177),(1,178,'Antagonist',10,178),(1,44,'Antagonist',10,179),(1,180,'Antagonist',10,180),(1,72,'Antagonist',10,181),(1,182,'Antagonist',10,182),(1,183,'Antagonist',10,183),(1,184,'Antagonist',10,184),(1,185,'Antagonist',10,185),(1,46,'Antagonist',10,186),(1,7,'Protagonist',11,187),(1,17,'Supporting',11,188),(1,84,'Supporting',11,189),(1,32,'Supporting',11,190),(1,22,'Supporting',11,191),(1,89,'Supporting',11,192),(1,37,'Supporting',11,193),(1,38,'Supporting',11,194),(1,7,'Protagonist',12,195),(1,196,'Supporting',12,196),(1,82,'Supporting',12,197),(1,198,'Supporting',12,198),(1,199,'Supporting',12,199),(1,200,'Antagonist',12,200),(1,201,'Antagonist',12,201),(1,6,'Antagonist',12,202),(1,203,'Antagonist',12,203),(1,204,'Antagonist',12,204),(1,205,'Antagonist',12,205),(1,9,'Antagonist',12,206),(1,207,'Antagonist',12,207),(1,208,'Antagonist',12,208),(1,209,'Antagonist',12,209),(1,10,'Antagonist',12,210),(1,211,'Antagonist',12,211),(1,7,'Protagonist',13,212),(1,15,'Supporting',13,213),(1,82,'Supporting',13,214),(1,215,'Supporting',13,215),(1,199,'Supporting',13,216),(1,22,'Supporting',13,217),(1,198,'Supporting',13,218),(1,22,'Supporting',13,219),(1,220,'Supporting',13,220),(1,7,'Protagonist',14,221),(1,196,'Supporting',14,222),(1,199,'Supporting',14,223),(1,82,'Supporting',14,224),(1,225,'Supporting',14,225),(1,87,'Supporting',14,226),(1,198,'Supporting',14,227),(1,22,'Supporting',14,228),(1,109,'Antagonist',14,229),(1,9,'Antagonist',14,230),(1,10,'Antagonist',14,231),(1,6,'Antagonist',14,232),(1,7,'Protagonist',15,233),(1,15,'Supporting',15,234),(1,196,'Supporting',15,235),(1,199,'Supporting',15,236),(1,82,'Supporting',15,237),(1,16,'Supporting',15,238),(1,215,'Supporting',15,239),(1,17,'Supporting',15,240),(1,241,'Supporting',15,241),(1,242,'Supporting',15,242),(1,243,'Supporting',15,243),(1,244,'Supporting',15,244),(1,87,'Supporting',15,245),(1,198,'Supporting',15,246),(1,247,'Supporting',15,247),(1,22,'Supporting',15,248),(1,9,'Antagonist',15,249),(1,10,'Antagonist',15,250),(1,6,'Antagonist',15,251),(1,7,'Protagonist',16,252),(1,91,'Supporting',16,253),(1,254,'Supporting',16,254),(1,93,'Supporting',16,255),(1,28,'Supporting',16,256),(1,257,'Supporting',16,257),(1,32,'Supporting',16,258),(1,259,'Supporting',16,259),(1,22,'Supporting',16,260),(1,261,'Supporting',16,261),(1,262,'Supporting',16,262),(1,38,'Supporting',16,263),(1,264,'Antagonist',16,264),(1,176,'Antagonist',16,265),(1,266,'Antagonist',16,266),(1,180,'Antagonist',16,267),(1,175,'Antagonist',16,268),(1,185,'Antagonist',16,269),(1,270,'Antagonist',16,270),(1,271,'Antagonist',16,271),(1,272,'Protagonist',17,272),(1,16,'Protagonist',17,273),(1,180,'Protagonist',17,274),(1,7,'Protagonist',17,275),(1,22,'Supporting',17,276),(1,91,'Supporting',17,277),(1,259,'Supporting',17,278),(1,7,'Supporting',17,279),(1,176,'Antagonist',17,280),(1,281,'Antagonist',17,281),(1,266,'Antagonist',17,282),(1,182,'Antagonist',17,283),(1,180,'Antagonist',17,284),(1,175,'Antagonist',17,285),(1,185,'Antagonist',17,286),(1,271,'Antagonist',17,287),(1,288,'Protagonist',18,288),(1,37,'Protagonist',18,289),(1,38,'Protagonist',18,290),(1,291,'Supporting',18,291),(1,32,'Supporting',18,292),(1,35,'Supporting',18,293),(1,7,'Supporting',18,294),(1,22,'Supporting',18,295),(1,37,'Supporting',18,296),(1,127,'Supporting',18,297),(1,38,'Supporting',18,298),(1,299,'Protagonist',19,299),(1,7,'Protagonist',19,300),(1,91,'Supporting',19,301),(1,93,'Supporting',19,302),(1,257,'Supporting',19,303),(1,32,'Supporting',19,304),(1,305,'Supporting',19,305),(1,259,'Supporting',19,306),(1,307,'Supporting',19,307),(1,7,'Supporting',19,308),(1,22,'Supporting',19,309),(1,264,'Antagonist',19,310),(1,281,'Antagonist',19,311),(1,3,'Antagonist',19,312),(1,182,'Antagonist',19,313),(1,180,'Antagonist',19,314),(1,315,'Antagonist',19,315),(1,185,'Antagonist',19,316),(1,270,'Antagonist',19,317),(1,4,'Protagonist',20,318),(1,180,'Protagonist',20,319),(1,288,'Protagonist',20,320),(1,37,'Protagonist',20,321),(1,272,'Supporting',20,322),(1,176,'Supporting',20,323),(1,281,'Supporting',20,324),(1,291,'Supporting',20,325),(1,180,'Supporting',20,326),(1,175,'Supporting',20,327),(1,185,'Supporting',20,328),(1,270,'Supporting',20,329),(1,330,'Antagonist',20,330),(1,4,'Antagonist',20,331),(1,299,'Antagonist',20,332),(1,64,'Antagonist',20,333),(1,334,'Antagonist',20,334),(1,335,'Antagonist',20,335),(1,7,'Antagonist',20,336),(1,4,'Antagonist',20,337),(1,338,'Protagonist',21,338),(1,3,'Supporting',21,339),(1,2,'Supporting',21,340),(1,341,'Supporting',21,341),(1,7,'Supporting',21,342),(1,343,'Supporting',21,343),(1,14,'Supporting',21,344),(1,3,'Supporting',21,345),(1,330,'Antagonist',21,346),(1,347,'Antagonist',21,347),(1,348,'Antagonist',21,348),(1,349,'Antagonist',21,349),(1,264,'Antagonist',21,350),(1,351,'Antagonist',21,351),(1,352,'Antagonist',21,352),(1,353,'Antagonist',21,353),(1,180,'Antagonist',21,354),(1,185,'Antagonist',21,355),(1,3,'Antagonist',21,356),(1,357,'Protagonist',22,357),(1,185,'Protagonist',22,358),(1,4,'Protagonist',22,359),(1,360,'Protagonist',22,360),(1,7,'Protagonist',22,361),(1,281,'Supporting',22,362),(1,180,'Supporting',22,363),(1,364,'Antagonist',22,364),(1,365,'Antagonist',22,365),(1,281,'Antagonist',22,366),(1,367,'Antagonist',22,367),(1,3,'Protagonist',23,368),(1,7,'Protagonist',23,369),(1,370,'Supporting',23,370),(1,371,'Antagonist',23,371),(1,372,'Antagonist',23,372),(1,182,'Antagonist',23,373),(1,374,'Antagonist',23,374),(1,270,'Antagonist',23,375),(1,376,'Antagonist',23,376),(1,377,'Antagonist',23,377),(1,176,'Antagonist',23,378),(1,257,'Antagonist',23,379),(1,380,'Antagonist',23,380),(1,381,'Antagonist',23,381),(1,180,'Antagonist',23,382),(1,383,'Antagonist',23,383),(1,185,'Antagonist',23,384),(1,385,'Antagonist',23,385),(1,386,'Antagonist',23,386),(1,387,'Antagonist',23,387),(1,388,'Antagonist',23,388),(1,175,'Antagonist',23,389),(1,390,'Antagonist',23,390),(1,391,'Antagonist',23,391),(1,392,'Antagonist',23,392),(1,272,'Antagonist',23,393),(1,177,'Antagonist',23,394),(1,395,'Antagonist',23,395),(1,178,'Antagonist',23,396),(1,65,'Antagonist',23,397),(1,398,'Antagonist',23,398),(1,56,'Antagonist',23,399),(1,4,'Protagonist',24,400),(1,185,'Protagonist',24,401),(1,360,'Protagonist',24,402),(1,364,'Antagonist',24,403),(1,180,'Antagonist',24,404),(1,37,'Antagonist',24,405),(1,406,'Protagonist',25,406),(1,29,'Protagonist',25,407),(1,408,'Protagonist',25,408),(1,7,'Protagonist',25,409),(1,410,'Protagonist',25,410),(1,37,'Protagonist',25,411),(1,93,'Supporting',25,412),(1,330,'Supporting',25,413),(1,17,'Supporting',25,414),(1,415,'Supporting',25,415),(1,84,'Supporting',25,416),(1,408,'Supporting',25,417),(1,215,'Supporting',25,418),(1,7,'Supporting',25,419),(1,22,'Supporting',25,420),(1,23,'Supporting',25,421),(1,422,'Supporting',25,422),(1,423,'Supporting',25,423),(1,424,'Supporting',25,424),(1,425,'Supporting',25,425),(1,89,'Supporting',25,426),(1,427,'Supporting',25,427),(1,91,'Supporting',25,428),(1,429,'Supporting',25,429),(1,28,'Supporting',25,430),(1,4,'Supporting',25,431),(1,432,'Supporting',25,432),(1,220,'Supporting',25,433),(1,272,'Supporting',25,434),(1,82,'Supporting',25,435),(1,31,'Supporting',25,436),(1,437,'Supporting',25,437),(1,34,'Supporting',25,438),(1,439,'Supporting',25,439),(1,440,'Antagonist',25,440),(1,441,'Antagonist',25,441),(1,330,'Antagonist',25,442),(1,443,'Antagonist',25,443),(1,444,'Antagonist',25,444),(1,64,'Antagonist',25,445),(1,50,'Antagonist',25,446),(1,87,'Antagonist',25,447),(1,448,'Antagonist',25,448),(1,109,'Antagonist',25,449),(1,450,'Antagonist',25,450),(1,43,'Antagonist',25,451),(1,452,'Antagonist',25,452),(1,111,'Antagonist',25,453),(1,454,'Antagonist',25,454),(1,455,'Antagonist',25,455),(1,456,'Antagonist',25,456),(1,457,'Antagonist',25,457),(1,458,'Antagonist',25,458),(1,7,'Protagonist',30,459),(1,460,'Supporting',30,460),(1,461,'Supporting',30,461),(1,7,'Protagonist',31,462),(1,463,'Supporting',31,463),(1,464,'Supporting',31,464),(1,465,'Supporting',31,465),(1,466,'Supporting',31,466),(1,467,'Supporting',31,467),(1,468,'Supporting',31,468),(1,7,'Protagonist',32,469),(1,463,'Supporting',32,470),(1,464,'Supporting',32,471),(1,465,'Supporting',32,472),(1,473,'Supporting',32,473),(1,474,'Supporting',32,474),(1,466,'Supporting',32,475),(1,467,'Supporting',32,476),(1,468,'Supporting',32,477),(1,7,'Protagonist',33,478),(1,22,'Supporting',33,479),(1,32,'Supporting',33,480),(1,7,'Protagonist',34,481),(1,463,'Supporting',34,482),(1,199,'Supporting',34,483),(1,484,'Supporting',34,484),(1,464,'Supporting',34,485),(1,465,'Supporting',34,486),(1,466,'Supporting',34,487),(1,467,'Supporting',34,488),(1,468,'Supporting',34,489),(1,7,'Protagonist',35,490),(1,463,'Supporting',35,491),(1,199,'Supporting',35,492),(1,464,'Supporting',35,493),(1,465,'Supporting',35,494),(1,474,'Supporting',35,495),(1,466,'Supporting',35,496),(1,467,'Supporting',35,497),(1,468,'Supporting',35,498),(2,145,'Protagonist',36,499),(2,149,'Protagonist',36,500),(2,7,'Protagonist',36,501),(2,330,'Supporting',36,502),(2,28,'Supporting',36,503),(2,31,'Supporting',36,504),(2,505,'Supporting',36,505),(2,20,'Supporting',36,506),(2,7,'Supporting',36,507),(2,22,'Supporting',36,508),(2,509,'Supporting',36,509),(2,23,'Supporting',36,510),(2,330,'Antagonist',36,511),(2,512,'Antagonist',36,512),(2,513,'Antagonist',36,513),(2,514,'Antagonist',36,514),(2,515,'Antagonist',36,515),(2,516,'Antagonist',36,516),(2,517,'Antagonist',36,517);
/*!40000 ALTER TABLE `Timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'spidermanComics'
--

--
-- Dumping routines for database 'spidermanComics'
--
/*!50003 DROP PROCEDURE IF EXISTS `UpdateIssue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateIssue`(IN issID INT, IN issName VARCHAR(100), IN issNum DECIMAL, IN relDate DATE, IN URL VARCHAR(100))
BEGIN
		UPDATE Issue
			SET issueName = issName
            WHERE issueID=issID;
		UPDATE Issue
			SET issueNum = issNum
            WHERE issueID=issID;
		UPDATE Issue
			SET releaseDate = relDate
            WHERE issueID=issID;
		UPDATE Issue
			SET imageURL = URL
            WHERE issueID=issID;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateSeries` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateSeries`(IN serID INT, IN serName VARCHAR(100), IN relDate DATE, IN endDa DATE)
BEGIN
		UPDATE Series
			SET Series.seriesName = serName
            WHERE Series.seriesID=serID;
		UPDATE Series
			SET Series.releaseDate = relDate
            WHERE Series.seriesID=serID;
		UPDATE Series
			SET Series.endDate = endDa
            WHERE Series.seriesID=serID;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-18  2:08:21
