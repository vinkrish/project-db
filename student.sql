-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2016 at 07:50 AM
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
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(100) NOT NULL,
  `SchoolId` bigint(20) NOT NULL,
  `SectionId` bigint(20) NOT NULL,
  `AdmissionNo` varchar(100) NOT NULL,
  `RollNo` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `FatherName` varchar(100) NOT NULL,
  `MotherName` varchar(100) NOT NULL,
  `DateOfBirth` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Mobile1` varchar(100) NOT NULL,
  `Mobile2` varchar(100) NOT NULL,
  `Street` varchar(1000) NOT NULL,
  `City` varchar(100) NOT NULL,
  `District` varchar(50) NOT NULL,
  `State` varchar(100) NOT NULL,
  `Pincode` varchar(10) NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=496701 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
