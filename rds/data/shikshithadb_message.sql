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
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (2,17,'teacher',0,'group',1,'image','Happy Independence day','1504677600749.jpg','','2017-09-06 11:30:05'),(3,17,'teacher',0,'group',1,'video','','','https://youtu.be/quOdF1CAPXs','2017-09-06 11:31:06'),(6,17,'teacher',591,'student',0,'text','Goodnight','','','2017-09-07 23:25:47'),(7,591,'student',17,'teacher',0,'text','Thank you','','','2017-09-07 23:26:04'),(8,17,'teacher',591,'student',0,'text','Test fcm log','','','2017-09-07 23:28:43'),(9,17,'teacher',591,'student',0,'text','Log added now','','','2017-09-07 23:31:05'),(18,591,'student',17,'teacher',0,'text','Reply','','','2017-09-11 12:32:29'),(20,1,'principal',0,'group',4,'image','','1505197593898.jpg','','2017-09-12 11:56:38'),(23,17,'teacher',0,'group',2,'image','Happy Independence day to all.','1505704155826.jpg','','2017-09-18 08:39:19'),(24,17,'teacher',0,'group',2,'video','','','https://youtu.be/quOdF1CAPXs','2017-09-18 08:40:17'),(27,184,'teacher',0,'group',5,'image','Young scientists','1507715272582.jpg','','2017-10-11 15:18:02'),(28,184,'teacher',0,'group',5,'image','','1507715312226.jpg','','2017-10-11 15:18:34'),(29,184,'teacher',0,'group',5,'image','','1507715337698.jpg','','2017-10-11 15:18:59'),(30,184,'teacher',0,'group',5,'image','','1507715369946.jpg','','2017-10-11 15:19:31'),(31,184,'teacher',0,'group',5,'image','','1507715395387.jpg','','2017-10-11 15:19:58'),(32,184,'teacher',0,'group',5,'image','','1507715443711.jpg','','2017-10-11 15:20:45'),(33,184,'teacher',0,'group',5,'image','','1507715463974.jpg','','2017-10-11 15:21:05'),(34,184,'teacher',0,'group',5,'image','','1507715480158.jpg','','2017-10-11 15:21:21'),(35,184,'teacher',0,'group',5,'image','','1507715515243.jpg','','2017-10-11 15:21:56'),(36,184,'admin',0,'group',9,'image','','1507716043521.jpg','','2017-10-11 15:30:47'),(37,184,'admin',0,'group',9,'image','','1507716073336.jpg','','2017-10-11 15:31:15'),(38,184,'admin',0,'group',9,'image','','1507716104919.jpg','','2017-10-11 15:31:46'),(39,184,'admin',0,'group',9,'text','Life for Swathi and Gangalakshmi has been like a fairytale! \nThe two girls were two of nine students at MIS, living in the Juvenile Home for girls, run by the Government of Karnataka. They both were outstanding in their academic performance at school. Swathi is very good at art work too. They are very fortunate to be adopted by the family of Mr. Harpreet and Mrs. Sukprit Bhan, New Delhi.\n','','','2017-10-11 15:33:45'),(40,199,'teacher',0,'group',14,'text','Piu','','','2017-10-12 10:48:10'),(41,199,'teacher',0,'group',24,'text','Full class tomorrow. Pack your lunch','','','2017-10-12 10:51:49'),(43,184,'admin',0,'group',5,'image','','1507787869650.jpg','','2017-10-12 11:27:53'),(44,184,'admin',0,'group',5,'text','Young scientists!','','','2017-10-12 11:28:21'),(46,163,'admin',0,'group',27,'text','Hello all','','','2017-10-12 17:46:02'),(48,17,'teacher',0,'group',2,'both','Share Image + Video + Text in single message','1507882224537.jpg','https://youtu.be/h2rR77VsF5c','2017-10-13 13:40:29'),(49,163,'admin',0,'group',28,'text','Welcome to the group, here you will receive announcement from school.','','','2017-10-13 16:48:04'),(52,163,'admin',0,'group',12,'text','Share something','','','2017-10-15 11:54:07'),(53,17,'teacher',0,'group',12,'text','Will do now','','','2017-10-15 11:56:39'),(54,163,'admin',0,'group',12,'text','Thank you','','','2017-10-15 11:56:55'),(55,17,'teacher',0,'group',28,'text','But parents can\'t reply here!','','','2017-10-15 12:12:14'),(58,17,'teacher',0,'group',12,'image','','1508386268558.jpg','','2017-10-19 09:41:10'),(59,17,'teacher',0,'group',2,'image','','1508386445455.jpg','','2017-10-19 09:44:07'),(60,17,'teacher',0,'group',12,'image','','1508386617215.jpg','','2017-10-19 09:46:58'),(62,591,'student',17,'teacher',0,'text','Redesigned layout','','','2017-10-22 15:57:52'),(63,163,'admin',1460,'student',0,'text','Hi','','','2017-10-22 23:45:16'),(64,1460,'student',163,'admin',0,'text','Hello','','','2017-10-22 23:45:24'),(66,163,'admin',0,'group',39,'text','All the teachers in this group can share their thoughts and memo here.','','','2017-10-23 07:12:35'),(67,1,'principal',0,'group',4,'text','Welcome back to school','','','2017-10-23 16:50:11'),(68,1,'principal',0,'group',4,'text','No more holidays','','','2017-10-23 16:51:22');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-25 20:33:30
