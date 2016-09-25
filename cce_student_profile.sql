-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2016 at 04:56 PM
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
-- Table structure for table `cce_student_profile`
--

CREATE TABLE IF NOT EXISTS `cce_student_profile` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SectionId` bigint(20) NOT NULL,
  `StudentId` bigint(20) NOT NULL,
  `Height` float NOT NULL,
  `Weight` float NOT NULL,
  `BloodGroup` varchar(20) NOT NULL,
  `VisionL` varchar(100) NOT NULL,
  `VisionR` varchar(100) NOT NULL,
  `Ailment` varchar(100) NOT NULL,
  `OralHygiene` varchar(100) NOT NULL,
  `TotalDays` float NOT NULL,
  `DaysAttended` float NOT NULL,
  `HealthStatus` varchar(100) NOT NULL,
  `Term` int(11) NOT NULL DEFAULT '1',
  `FromDate` date NOT NULL,
  `ToDate` date NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
