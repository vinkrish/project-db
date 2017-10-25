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
-- Dumping data for table `app_version`
--

LOCK TABLES `app_version` WRITE;
/*!40000 ALTER TABLE `app_version` DISABLE KEYS */;
INSERT INTO `app_version` VALUES (59,27,'2.7','teacher','obsolete'),(61,27,'2.7','principal','obsolete'),(62,21,'2.1','admin','obsolete'),(64,22,'2.2','admin','obsolete'),(66,28,'2.8','principal','obsolete'),(67,28,'2.8','teacher','obsolete'),(68,26,'2.6','principal','obsolete'),(69,20,'2.0','admin','obsolete'),(70,26,'2.6','teacher','obsolete'),(71,23,'2.3','admin','obsolete'),(72,26,'2.6','parent','update'),(73,29,'2.9','principal','obsolete'),(74,29,'2.9','teacher','obsolete'),(77,1,'0.1','sms','obsolete'),(78,24,'2.4','admin','obsolete'),(79,30,'3.0','principal','obsolete'),(80,30,'3.0','teacher','update'),(81,27,'27','parent','update'),(82,25,'2.5','admin','obsolete'),(83,28,'2.8','parent','update'),(84,31,'3.1','principal','obsolete'),(85,31,'3.1','teacher','update'),(86,26,'2.6','admin','obsolete'),(87,2,'0.2','sms','obsolete'),(88,3,'0.3','sms','live'),(89,27,'2.7','admin','live'),(90,29,'2.9','parent','live'),(91,32,'3.2','principal','live'),(92,32,'3.2','teacher','live');
/*!40000 ALTER TABLE `app_version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-25 20:34:15
