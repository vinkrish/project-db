-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2016 at 03:28 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `newprojectdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `sms_queue_low_priority`
--

CREATE TABLE IF NOT EXISTS `sms_queue_low_priority` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SchoolId` bigint(20) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Message` varchar(10000) NOT NULL,
  `DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(10) NOT NULL,
  `UserId` bigint(20) DEFAULT NULL,
  `Role` varchar(20) NOT NULL,
  `MessageId` bigint(20) NOT NULL,
  `TransactionId` bigint(20) NOT NULL,
  `DeliveredTimeStamp` varchar(25) NOT NULL,
  `Response` varchar(25) NOT NULL,
  `Cause` varchar(25) NOT NULL,
  `ErrorCode` int(3) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
