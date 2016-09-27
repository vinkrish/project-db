-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2016 at 01:23 PM
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
-- Table structure for table `sms_api`
--

CREATE TABLE IF NOT EXISTS `sms_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_sms_api` varchar(2000) NOT NULL,
  `response_variable` varchar(200) NOT NULL,
  `sms_delivery_api` varchar(2000) NOT NULL,
  `sms_delivery_variable` varchar(200) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `unicode_api` text NOT NULL,
  `sms_sent_variable` varchar(20) NOT NULL,
  `vendor_name` varchar(200) NOT NULL,
  `success_label` varchar(200) NOT NULL,
  `require_country_code` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
