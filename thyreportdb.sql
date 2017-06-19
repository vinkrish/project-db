-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2017 at 04:17 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thyreportdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `Id` bigint(20) NOT NULL,
  `SectionId` bigint(20) NOT NULL,
  `ExamId` bigint(20) NOT NULL,
  `SubjectId` bigint(20) NOT NULL,
  `ActivityName` varchar(100) NOT NULL,
  `Type` varchar(10) NOT NULL DEFAULT 'Mark',
  `MaximumMark` float NOT NULL,
  `Weightage` float NOT NULL,
  `Calculation` int(11) NOT NULL,
  `ActivityAvg` float NOT NULL DEFAULT '0',
  `Orders` int(11) NOT NULL DEFAULT '0',
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `activity_score`
--

CREATE TABLE `activity_score` (
  `Id` bigint(20) NOT NULL,
  `ActivityId` bigint(20) NOT NULL,
  `StudentId` bigint(20) NOT NULL,
  `Mark` float NOT NULL DEFAULT '0',
  `Grade` varchar(10) NOT NULL DEFAULT '',
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `Id` bigint(20) NOT NULL,
  `SectionId` bigint(20) NOT NULL,
  `StudentId` bigint(20) NOT NULL DEFAULT '0',
  `StudentName` varchar(100) DEFAULT '-',
  `SubjectId` bigint(20) NOT NULL DEFAULT '0',
  `Type` varchar(10) NOT NULL DEFAULT 'Daily',
  `Session` int(11) NOT NULL DEFAULT '0',
  `DateAttendance` date NOT NULL,
  `TypeOfLeave` varchar(10) NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `authorization`
--

CREATE TABLE `authorization` (
  `Id` bigint(20) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Token` varchar(100) NOT NULL,
  `FcmToken` varchar(512) NOT NULL DEFAULT '""'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cce_aspect_grade`
--

CREATE TABLE `cce_aspect_grade` (
  `Id` bigint(20) NOT NULL,
  `SectionId` bigint(20) NOT NULL,
  `StudentId` bigint(20) NOT NULL,
  `AspectId` bigint(20) NOT NULL,
  `Type` int(11) NOT NULL,
  `Term` int(11) NOT NULL,
  `Grade` varchar(20) NOT NULL,
  `Value` int(11) NOT NULL,
  `Description` varchar(200) NOT NULL DEFAULT '',
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cce_aspect_primary`
--

CREATE TABLE `cce_aspect_primary` (
  `Id` bigint(20) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `TopicId` bigint(20) NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cce_coscholastic`
--

CREATE TABLE `cce_coscholastic` (
  `Id` bigint(20) NOT NULL,
  `SchoolId` bigint(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cce_coscholastic_class`
--

CREATE TABLE `cce_coscholastic_class` (
  `Id` bigint(20) NOT NULL,
  `CoScholasticId` bigint(20) NOT NULL,
  `ClassId` bigint(20) NOT NULL,
  `ClassName` varchar(100) NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cce_section_heading`
--

CREATE TABLE `cce_section_heading` (
  `Id` bigint(20) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `CoScholasticId` bigint(20) NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cce_student_profile`
--

CREATE TABLE `cce_student_profile` (
  `Id` bigint(20) NOT NULL,
  `SectionId` bigint(20) NOT NULL,
  `StudentId` bigint(20) NOT NULL,
  `Term` int(11) NOT NULL DEFAULT '1',
  `FromDate` date NOT NULL,
  `ToDate` date NOT NULL,
  `TotalDays` int(11) NOT NULL,
  `DaysAttended` float NOT NULL,
  `Height` float NOT NULL,
  `Weight` float NOT NULL,
  `BloodGroup` varchar(20) NOT NULL,
  `HealthStatus` varchar(100) NOT NULL,
  `VisionLeft` varchar(100) NOT NULL,
  `VisionRight` varchar(100) NOT NULL,
  `Ailment` varchar(100) NOT NULL,
  `OralHygiene` varchar(100) NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cce_topic_grade`
--

CREATE TABLE `cce_topic_grade` (
  `Id` bigint(20) NOT NULL,
  `TopicId` bigint(20) NOT NULL,
  `Grade` varchar(20) NOT NULL,
  `Value` int(11) NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cce_topic_primary`
--

CREATE TABLE `cce_topic_primary` (
  `Id` bigint(20) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `SectionHeadingId` bigint(20) NOT NULL,
  `Evaluation` int(11) NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `Id` bigint(20) NOT NULL,
  `StudentId` bigint(20) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `ClassName` varchar(100) DEFAULT NULL,
  `SectionName` varchar(100) DEFAULT NULL,
  `TeacherId` bigint(20) NOT NULL,
  `TeacherName` varchar(100) NOT NULL,
  `CreatedBy` bigint(20) NOT NULL,
  `CreatorRole` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `Id` bigint(20) NOT NULL,
  `ClassName` varchar(100) NOT NULL,
  `SchoolId` bigint(20) NOT NULL,
  `TeacherId` bigint(20) DEFAULT '0',
  `AttendanceType` varchar(10) NOT NULL DEFAULT 'Daily',
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_group`
--

CREATE TABLE `class_subject_group` (
  `Id` bigint(20) NOT NULL,
  `ClassId` bigint(20) NOT NULL,
  `SubjectGroupId` bigint(20) NOT NULL,
  `SubjectGroupName` varchar(100) DEFAULT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deleted_message`
--

CREATE TABLE `deleted_message` (
  `Id` bigint(20) NOT NULL,
  `MessageId` bigint(20) NOT NULL,
  `UserId` bigint(20) NOT NULL,
  `DeletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `Id` bigint(20) NOT NULL,
  `ExamName` varchar(100) NOT NULL,
  `ClassId` bigint(20) NOT NULL,
  `Term` int(11) NOT NULL DEFAULT '1',
  `Type` varchar(10) NOT NULL DEFAULT 'Mark',
  `Percentage` float NOT NULL DEFAULT '100',
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_subject`
--

CREATE TABLE `exam_subject` (
  `Id` bigint(20) NOT NULL,
  `ExamId` bigint(20) NOT NULL,
  `SubjectId` bigint(20) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `Type` varchar(10) NOT NULL DEFAULT 'Mark',
  `MaximumMark` float NOT NULL,
  `FailMark` float NOT NULL,
  `Percentage` float NOT NULL,
  `Orders` int(11) NOT NULL DEFAULT '0',
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_subject_group`
--

CREATE TABLE `exam_subject_group` (
  `Id` bigint(20) NOT NULL,
  `ExamId` bigint(20) NOT NULL,
  `SubjectGroupId` bigint(20) NOT NULL,
  `SubjectGroupName` varchar(100) DEFAULT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grade_class_wise`
--

CREATE TABLE `grade_class_wise` (
  `Id` bigint(20) NOT NULL,
  `ClassId` bigint(20) NOT NULL,
  `Grade` varchar(20) NOT NULL DEFAULT '',
  `MarkFrom` int(11) NOT NULL,
  `MarkTo` int(11) NOT NULL,
  `GradePoint` int(11) NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `Id` bigint(20) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `SectionId` bigint(20) DEFAULT NULL,
  `IsSection` tinyint(1) DEFAULT NULL,
  `ClassId` bigint(20) DEFAULT NULL,
  `IsClass` tinyint(1) DEFAULT NULL,
  `CreatedBy` bigint(20) NOT NULL,
  `CreatedDate` date NOT NULL,
  `IsActive` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `Id` bigint(20) NOT NULL,
  `SectionId` bigint(20) NOT NULL,
  `SubjectId` bigint(20) NOT NULL,
  `SubjectName` varchar(100) DEFAULT NULL,
  `HomeworkMessage` longtext NOT NULL,
  `HomeworkDate` date NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `Id` bigint(20) NOT NULL,
  `ExamId` bigint(20) NOT NULL,
  `SubjectId` bigint(20) NOT NULL,
  `SectionId` bigint(20) NOT NULL,
  `StudentId` bigint(20) NOT NULL,
  `Mark` float NOT NULL DEFAULT '0',
  `Grade` varchar(10) NOT NULL DEFAULT '',
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `Id` bigint(20) NOT NULL,
  `SenderId` bigint(20) NOT NULL,
  `SenderRole` varchar(25) NOT NULL,
  `RecipientId` bigint(20) NOT NULL DEFAULT '0',
  `RecipientRole` varchar(25) NOT NULL,
  `GroupId` bigint(20) NOT NULL,
  `MessageType` enum('text','image') DEFAULT NULL,
  `MessageBody` varchar(1000) DEFAULT NULL,
  `ImageUrl` varchar(255) DEFAULT NULL,
  `CreatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message_recipient`
--

CREATE TABLE `message_recipient` (
  `Id` bigint(20) NOT NULL,
  `RecipientId` bigint(20) NOT NULL,
  `Role` enum('admin','teacher','student') NOT NULL,
  `GroupId` bigint(20) NOT NULL DEFAULT '0',
  `MessageId` bigint(20) NOT NULL,
  `IsRead` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `move_student`
--

CREATE TABLE `move_student` (
  `Id` bigint(20) NOT NULL,
  `StudentId` bigint(20) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `SecIdFrom` bigint(20) NOT NULL,
  `SecIdTo` bigint(20) NOT NULL,
  `SectionFrom` varchar(100) DEFAULT NULL,
  `SectionTo` varchar(100) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `portion`
--

CREATE TABLE `portion` (
  `Id` bigint(20) NOT NULL,
  `ClassId` bigint(20) NOT NULL,
  `SubjectId` bigint(20) NOT NULL,
  `PortionName` text NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `Id` bigint(20) NOT NULL,
  `SchoolName` varchar(100) NOT NULL,
  `Website` varchar(100) NOT NULL,
  `ShortenedSchoolName` varchar(100) NOT NULL,
  `ContactPersonName` varchar(200) NOT NULL,
  `AdminUsername` varchar(100) NOT NULL,
  `AdminPassword` varchar(100) NOT NULL,
  `Landline` varchar(30) NOT NULL,
  `Mobile1` varchar(20) NOT NULL,
  `Mobile2` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Street` varchar(1000) NOT NULL,
  `City` varchar(100) NOT NULL,
  `District` varchar(50) NOT NULL,
  `State` varchar(100) NOT NULL,
  `Pincode` varchar(10) NOT NULL,
  `PrincipalId` bigint(20) NOT NULL,
  `NumberOfStudents` int(11) NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `Id` bigint(20) NOT NULL,
  `SectionName` varchar(100) NOT NULL,
  `ClassId` bigint(20) NOT NULL,
  `TeacherId` bigint(20) NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `Id` bigint(20) NOT NULL,
  `SchoolId` bigint(20) NOT NULL,
  `IsMessage` tinyint(1) DEFAULT '1',
  `IsSms` tinyint(1) DEFAULT '0',
  `IsChat` tinyint(1) DEFAULT '1',
  `IsAttendance` tinyint(1) DEFAULT '0',
  `IsAttendanceSms` tinyint(1) DEFAULT '0',
  `IsHomework` tinyint(1) DEFAULT '0',
  `IsHomeworkSms` tinyint(1) DEFAULT '0',
  `IsTimetable` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sliptest`
--

CREATE TABLE `sliptest` (
  `Id` bigint(20) NOT NULL,
  `SectionId` bigint(20) NOT NULL,
  `SubjectId` bigint(20) NOT NULL,
  `SliptestName` varchar(100) NOT NULL,
  `PortionIds` varchar(500) NOT NULL,
  `ExtraPortion` text NOT NULL,
  `MaximumMark` float NOT NULL,
  `Average` float NOT NULL,
  `TestDate` date NOT NULL,
  `SubmissionDate` date NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sliptest_portion`
--

CREATE TABLE `sliptest_portion` (
  `Id` bigint(20) NOT NULL,
  `SliptestId` bigint(20) NOT NULL,
  `PortionId` bigint(20) NOT NULL,
  `PortionName` text NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sliptest_score`
--

CREATE TABLE `sliptest_score` (
  `Id` bigint(20) NOT NULL,
  `SliptestId` bigint(20) NOT NULL,
  `StudentId` bigint(20) NOT NULL,
  `Mark` float NOT NULL DEFAULT '0',
  `Grade` varchar(10) NOT NULL DEFAULT '',
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_api`
--

CREATE TABLE `sms_api` (
  `id` int(11) NOT NULL,
  `send_sms_api` varchar(2000) NOT NULL,
  `response_variable` varchar(200) NOT NULL,
  `sms_delivery_api` varchar(2000) NOT NULL,
  `sms_delivery_variable` varchar(200) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `unicode_api` text NOT NULL,
  `sms_sent_variable` varchar(20) NOT NULL,
  `vendor_name` varchar(200) NOT NULL,
  `success_label` varchar(200) NOT NULL,
  `require_country_code` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_queue`
--

CREATE TABLE `sms_queue` (
  `Id` bigint(20) NOT NULL,
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
  `ErrorCode` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_queue_low_priority`
--

CREATE TABLE `sms_queue_low_priority` (
  `Id` bigint(20) NOT NULL,
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
  `ErrorCode` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_queue_transaction`
--

CREATE TABLE `sms_queue_transaction` (
  `Id` bigint(20) NOT NULL,
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
  `ErrorCode` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Id` bigint(20) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `SchoolId` bigint(20) NOT NULL,
  `ClassId` bigint(20) NOT NULL,
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
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subactivity`
--

CREATE TABLE `subactivity` (
  `Id` bigint(20) NOT NULL,
  `ActivityId` bigint(20) NOT NULL,
  `SubActivityName` varchar(100) NOT NULL,
  `Type` varchar(10) NOT NULL DEFAULT 'Mark',
  `MaximumMark` float NOT NULL,
  `Weightage` float NOT NULL,
  `Calculation` int(11) NOT NULL,
  `SubActivityAvg` float NOT NULL DEFAULT '0',
  `Orders` int(11) NOT NULL DEFAULT '0',
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subactivity_score`
--

CREATE TABLE `subactivity_score` (
  `Id` bigint(20) NOT NULL,
  `SubActivityId` bigint(20) NOT NULL,
  `StudentId` bigint(20) NOT NULL,
  `Mark` float NOT NULL DEFAULT '0',
  `Grade` varchar(10) NOT NULL DEFAULT '',
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Id` bigint(20) NOT NULL,
  `SchoolId` bigint(20) DEFAULT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `PartitionType` int(11) NOT NULL,
  `TheorySubjectId` bigint(20) NOT NULL,
  `PracticalSubjectId` bigint(20) NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject_group`
--

CREATE TABLE `subject_group` (
  `Id` bigint(20) NOT NULL,
  `SchoolId` bigint(20) DEFAULT NULL,
  `SubjectGroupName` varchar(100) NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject_group_subject`
--

CREATE TABLE `subject_group_subject` (
  `Id` bigint(20) NOT NULL,
  `SubjectGroupId` bigint(20) NOT NULL,
  `SubjectId` bigint(20) NOT NULL,
  `SubjectName` varchar(100) DEFAULT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject_student`
--

CREATE TABLE `subject_student` (
  `Id` bigint(20) NOT NULL,
  `SectionId` bigint(20) NOT NULL,
  `SubjectId` bigint(20) NOT NULL,
  `StudentIds` varchar(30000) NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject_teacher`
--

CREATE TABLE `subject_teacher` (
  `Id` bigint(20) NOT NULL,
  `SectionId` bigint(20) NOT NULL,
  `SubjectId` bigint(20) NOT NULL,
  `SubjectName` varchar(100) DEFAULT NULL,
  `TeacherId` bigint(20) DEFAULT '0',
  `TeacherName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Id` bigint(20) NOT NULL,
  `TeacherName` varchar(100) NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `SchoolId` bigint(20) NOT NULL,
  `DateOfBirth` varchar(20) NOT NULL,
  `Mobile` varchar(12) NOT NULL,
  `Qualification` varchar(100) NOT NULL,
  `DateOfJoining` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `term_remark`
--

CREATE TABLE `term_remark` (
  `Id` bigint(20) NOT NULL,
  `SectionId` bigint(20) NOT NULL,
  `StudentId` bigint(20) DEFAULT NULL,
  `Term` int(11) NOT NULL,
  `Remark` text NOT NULL,
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `Id` bigint(20) NOT NULL,
  `SectionId` bigint(20) NOT NULL,
  `DayOfWeek` varchar(10) NOT NULL,
  `PeriodNo` int(11) NOT NULL,
  `SubjectId` bigint(20) DEFAULT NULL,
  `TimingFrom` time DEFAULT '00:00:00',
  `TimingTo` time DEFAULT '00:00:00',
  `DateTimeRecordInserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `Id` bigint(20) NOT NULL,
  `UserId` bigint(20) NOT NULL,
  `Role` enum('admin','teacher','student') NOT NULL,
  `GroupId` bigint(20) NOT NULL,
  `IsActive` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `activity_score`
--
ALTER TABLE `activity_score`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `authorization`
--
ALTER TABLE `authorization`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `cce_aspect_grade`
--
ALTER TABLE `cce_aspect_grade`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `cce_aspect_primary`
--
ALTER TABLE `cce_aspect_primary`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `cce_coscholastic`
--
ALTER TABLE `cce_coscholastic`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `cce_coscholastic_class`
--
ALTER TABLE `cce_coscholastic_class`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `cce_section_heading`
--
ALTER TABLE `cce_section_heading`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `cce_student_profile`
--
ALTER TABLE `cce_student_profile`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `cce_topic_grade`
--
ALTER TABLE `cce_topic_grade`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `cce_topic_primary`
--
ALTER TABLE `cce_topic_primary`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `class_subject_group`
--
ALTER TABLE `class_subject_group`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `deleted_message`
--
ALTER TABLE `deleted_message`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `exam_subject`
--
ALTER TABLE `exam_subject`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `exam_subject_group`
--
ALTER TABLE `exam_subject_group`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `grade_class_wise`
--
ALTER TABLE `grade_class_wise`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `message_recipient`
--
ALTER TABLE `message_recipient`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `move_student`
--
ALTER TABLE `move_student`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `portion`
--
ALTER TABLE `portion`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sliptest`
--
ALTER TABLE `sliptest`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sliptest_portion`
--
ALTER TABLE `sliptest_portion`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sliptest_score`
--
ALTER TABLE `sliptest_score`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sms_api`
--
ALTER TABLE `sms_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_queue`
--
ALTER TABLE `sms_queue`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sms_queue_low_priority`
--
ALTER TABLE `sms_queue_low_priority`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sms_queue_transaction`
--
ALTER TABLE `sms_queue_transaction`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `subactivity`
--
ALTER TABLE `subactivity`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `subactivity_score`
--
ALTER TABLE `subactivity_score`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `subject_group`
--
ALTER TABLE `subject_group`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `subject_group_subject`
--
ALTER TABLE `subject_group_subject`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `subject_student`
--
ALTER TABLE `subject_student`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `subject_teacher`
--
ALTER TABLE `subject_teacher`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `SectionId` (`SectionId`,`SubjectId`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `term_remark`
--
ALTER TABLE `term_remark`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `activity_score`
--
ALTER TABLE `activity_score`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `authorization`
--
ALTER TABLE `authorization`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cce_aspect_grade`
--
ALTER TABLE `cce_aspect_grade`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `cce_aspect_primary`
--
ALTER TABLE `cce_aspect_primary`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cce_coscholastic`
--
ALTER TABLE `cce_coscholastic`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cce_coscholastic_class`
--
ALTER TABLE `cce_coscholastic_class`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cce_section_heading`
--
ALTER TABLE `cce_section_heading`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cce_student_profile`
--
ALTER TABLE `cce_student_profile`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `cce_topic_grade`
--
ALTER TABLE `cce_topic_grade`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cce_topic_primary`
--
ALTER TABLE `cce_topic_primary`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1683;
--
-- AUTO_INCREMENT for table `class_subject_group`
--
ALTER TABLE `class_subject_group`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `deleted_message`
--
ALTER TABLE `deleted_message`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `exam_subject`
--
ALTER TABLE `exam_subject`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `exam_subject_group`
--
ALTER TABLE `exam_subject_group`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `grade_class_wise`
--
ALTER TABLE `grade_class_wise`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `message_recipient`
--
ALTER TABLE `message_recipient`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `move_student`
--
ALTER TABLE `move_student`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `portion`
--
ALTER TABLE `portion`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5756;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sliptest`
--
ALTER TABLE `sliptest`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sliptest_portion`
--
ALTER TABLE `sliptest_portion`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sliptest_score`
--
ALTER TABLE `sliptest_score`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `sms_api`
--
ALTER TABLE `sms_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sms_queue`
--
ALTER TABLE `sms_queue`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sms_queue_low_priority`
--
ALTER TABLE `sms_queue_low_priority`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sms_queue_transaction`
--
ALTER TABLE `sms_queue_transaction`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=496701;
--
-- AUTO_INCREMENT for table `subactivity`
--
ALTER TABLE `subactivity`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `subactivity_score`
--
ALTER TABLE `subactivity_score`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6024;
--
-- AUTO_INCREMENT for table `subject_group`
--
ALTER TABLE `subject_group`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1298;
--
-- AUTO_INCREMENT for table `subject_group_subject`
--
ALTER TABLE `subject_group_subject`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `subject_student`
--
ALTER TABLE `subject_student`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `subject_teacher`
--
ALTER TABLE `subject_teacher`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18693;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15691;
--
-- AUTO_INCREMENT for table `term_remark`
--
ALTER TABLE `term_remark`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
