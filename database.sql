--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `genres` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(45) NOT NULL,
  `sort_order` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Comedy',0),(2,'Drama',1),(3,'Action',2),(4,'Mystery',3);
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `movies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `director` varchar(45) DEFAULT NULL,
  `released` date DEFAULT NULL,
  `genre` tinyint(3) unsigned DEFAULT NULL,
  `tagline` varchar(45) DEFAULT NULL,
  `coverthumb` varchar(45) DEFAULT NULL,
  `price` float(6,2) NOT NULL DEFAULT '0.00',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Office Space','Mike Judge','1999-02-19',1,'Work Sucks','84m.jpg',19.95,1),(3,'Super Troopers','Jay Chandrasekhar','2002-02-15',1,'Altered State Police','42m.jpg',14.95,1),(4,'American Beauty','Sam Mendes','1999-10-01',2,'... Look Closer','12m.jpg',19.95,1),(5,'The Big Lebowski','Joel Coen','1998-03-06',1,'The \"Dude\"','49m.jpg',21.90,1),(6,'Fight Club','David Fincher','1999-10-15',3,'How much can you know about yourself...','94m.jpg',19.95,1);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;