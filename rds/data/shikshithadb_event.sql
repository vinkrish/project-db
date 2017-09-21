-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: shikshithadb
-- ------------------------------------------------------
-- Server version	5.6.35-log

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
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (2,1,'Cultural Event','Description of activities','2017-08-01','2017-08-03',1501558200,0,3,1,1,0,'admin','2017-07-31',0),(3,1,'Fee Reminder','Please pay the quarterly fee before 15th of August','2017-08-10',NULL,0,0,0,0,0,0,'admin','2017-07-31',0),(4,1,'Multiple Events',NULL,'2017-08-02',NULL,0,0,1,0,1,0,'admin','2017-08-01',0),(5,1,'Day Met',NULL,'2017-12-25','2017-12-25',1514178000,0,1,0,1,1,'admin','2017-08-29',0),(6,2,'Teacher\'s Day',NULL,'2017-09-05','2017-09-05',0,0,1,0,0,0,'admin','2017-09-04',0),(7,2,'Gandhi Jayanthi',NULL,'2017-10-04','2017-09-04',0,0,1,0,0,0,'admin','2017-09-04',0),(8,2,'Children\'s Day',NULL,'2017-11-14','2017-11-14',0,0,1,0,0,0,'admin','2017-09-04',0),(9,2,'Kannada Rajyotsava',NULL,'2017-11-24','2017-11-24',0,0,1,0,0,0,'admin','2017-09-04',0),(10,2,'Republic Day',NULL,'2018-01-25','2018-01-25',0,0,-4,0,0,0,'admin','2017-09-04',0),(11,2,'National Science Day',NULL,'2018-02-26','2018-02-28',0,0,1,0,0,0,'admin','2017-09-04',0),(12,2,'Christmas',NULL,'2017-09-22','2017-09-18',0,0,1,0,0,0,'admin','2017-09-04',0),(13,2,'Dasara Vacation',NULL,'2017-09-15','2017-10-02',0,0,15,1,0,0,'admin','2017-09-04',0),(14,2,'Valmiki Jayanthi',NULL,'2017-10-05','2017-10-05',0,0,1,0,0,0,'admin','2017-09-04',0),(15,2,'Deepavali Holidays',NULL,'2017-10-18','2017-10-20',0,0,3,1,0,0,'admin','2017-09-04',0),(16,2,'Kannada Rajyotsava',NULL,'2017-11-01','2017-11-01',0,0,1,0,0,0,'admin','2017-09-04',0),(17,2,'Christmas Holidays',NULL,'2017-12-25','2017-12-29',0,0,5,1,0,0,'admin','2017-09-04',0),(18,2,'Mahashivaratri',NULL,'2018-02-13','2018-02-13',0,0,2,0,0,0,'admin','2017-09-04',0),(19,2,'Chandramana Ugadi',NULL,'2018-03-20','2018-03-20',0,0,1,0,0,0,'admin','2017-09-04',0);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-14  9:53:56
