CREATE TABLE `activity` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

CREATE TABLE `activity_score` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ActivityId` bigint(20) NOT NULL,
  `StudentId` bigint(20) NOT NULL,
  `Mark` float NOT NULL DEFAULT '0',
  `Grade` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `attendance` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SectionId` bigint(20) NOT NULL,
  `StudentId` bigint(20) NOT NULL DEFAULT '0',
  `StudentName` varchar(100) DEFAULT '-',
  `SubjectId` bigint(20) NOT NULL DEFAULT '0',
  `Type` varchar(10) NOT NULL DEFAULT 'Daily',
  `Session` int(11) NOT NULL DEFAULT '0',
  `DateAttendance` date NOT NULL,
  `TypeOfLeave` varchar(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

CREATE TABLE `authorization` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `User` varchar(50) NOT NULL,
  `Token` varchar(100) NOT NULL,
  `FcmToken` varchar(512) NOT NULL DEFAULT '""',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

CREATE TABLE `cce_aspect_grade` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SectionId` bigint(20) NOT NULL,
  `StudentId` bigint(20) NOT NULL,
  `AspectId` bigint(20) NOT NULL,
  `Type` int(11) NOT NULL,
  `Term` int(11) NOT NULL,
  `Grade` varchar(20) NOT NULL,
  `Value` int(11) NOT NULL,
  `Description` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `cce_aspect_primary` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `TopicId` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `cce_coscholastic` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SchoolId` bigint(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `cce_coscholastic_class` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `CoScholasticId` bigint(20) NOT NULL,
  `ClassId` bigint(20) NOT NULL,
  `ClassName` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `cce_section_heading` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `CoScholasticId` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `cce_student_profile` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `cce_topic_grade` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `TopicId` bigint(20) NOT NULL,
  `Grade` varchar(20) NOT NULL,
  `Value` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `cce_topic_primary` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `SectionHeadingId` bigint(20) NOT NULL,
  `Evaluation` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `chat` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `StudentId` bigint(20) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `ClassName` varchar(100) DEFAULT NULL,
  `SectionName` varchar(100) DEFAULT NULL,
  `TeacherId` bigint(20) NOT NULL,
  `TeacherName` varchar(100) NOT NULL,
  `CreatedBy` bigint(20) NOT NULL,
  `CreatorRole` varchar(15) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

CREATE TABLE `class` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(100) NOT NULL,
  `SchoolId` bigint(20) NOT NULL,
  `TeacherId` bigint(20) DEFAULT '0',
  `AttendanceType` varchar(10) NOT NULL DEFAULT 'Daily',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

CREATE TABLE `class_subject_group` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ClassId` bigint(20) NOT NULL,
  `SubjectGroupId` bigint(20) NOT NULL,
  `SubjectGroupName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;

CREATE TABLE `deleted_message` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `MessageId` bigint(20) NOT NULL,
  `UserId` bigint(20) NOT NULL,
  `DeletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `exam` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ExamName` varchar(100) NOT NULL,
  `ClassId` bigint(20) NOT NULL,
  `Term` int(11) NOT NULL DEFAULT '1',
  `Type` varchar(10) NOT NULL DEFAULT 'Mark',
  `Calculation` int(11) DEFAULT '0',
  `Percentage` float NOT NULL DEFAULT '100',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `exam_subject` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ExamId` bigint(20) NOT NULL,
  `SubjectId` bigint(20) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `Type` varchar(10) NOT NULL DEFAULT 'Mark',
  `MaximumMark` float NOT NULL,
  `FailMark` float NOT NULL,
  `Calculation` int(11) NOT NULL DEFAULT '0',
  `Percentage` float NOT NULL,
  `Orders` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

CREATE TABLE `exam_subject_group` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ExamId` bigint(20) NOT NULL,
  `SubjectGroupId` bigint(20) NOT NULL,
  `SubjectGroupName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

CREATE TABLE `grade_class_wise` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ClassId` bigint(20) NOT NULL,
  `Grade` varchar(20) NOT NULL DEFAULT '',
  `MarkFrom` int(11) NOT NULL,
  `MarkTo` int(11) NOT NULL,
  `GradePoint` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

CREATE TABLE `groups` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `IsSchool` tinyint(1) NOT NULL DEFAULT '0',
  `SectionId` bigint(20) DEFAULT NULL,
  `IsSection` tinyint(1) DEFAULT NULL,
  `ClassId` bigint(20) DEFAULT NULL,
  `IsClass` tinyint(1) DEFAULT NULL,
  `CreatedBy` bigint(20) NOT NULL,
  `CreatorName` varchar(100) NOT NULL DEFAULT '',
  `CreatorRole` varchar(20) NOT NULL DEFAULT '',
  `CreatedDate` date NOT NULL,
  `IsActive` char(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `homework` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SectionId` bigint(20) NOT NULL,
  `SubjectId` bigint(20) NOT NULL,
  `SubjectName` varchar(100) DEFAULT NULL,
  `HomeworkMessage` longtext NOT NULL,
  `HomeworkDate` date NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

CREATE TABLE `mark` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ExamId` bigint(20) NOT NULL,
  `SubjectId` bigint(20) NOT NULL,
  `SectionId` bigint(20) NOT NULL,
  `StudentId` bigint(20) NOT NULL,
  `Mark` float NOT NULL DEFAULT '0',
  `Grade` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `message` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SenderId` bigint(20) NOT NULL,
  `SenderRole` varchar(25) NOT NULL,
  `RecipientId` bigint(20) NOT NULL DEFAULT '0',
  `RecipientRole` varchar(25) NOT NULL,
  `GroupId` bigint(20) NOT NULL,
  `MessageType` enum('text','image') DEFAULT NULL,
  `MessageBody` varchar(1000) DEFAULT NULL,
  `ImageUrl` varchar(255) DEFAULT NULL,
  `CreatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

CREATE TABLE `message_recipient` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `RecipientId` bigint(20) NOT NULL,
  `Role` enum('admin','teacher','student') NOT NULL,
  `GroupId` bigint(20) NOT NULL DEFAULT '0',
  `MessageId` bigint(20) NOT NULL,
  `IsRead` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `move_student` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `StudentId` bigint(20) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `SecIdFrom` bigint(20) NOT NULL,
  `SecIdTo` bigint(20) NOT NULL,
  `SectionFrom` varchar(100) DEFAULT NULL,
  `SectionTo` varchar(100) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `portion` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ClassId` bigint(20) NOT NULL,
  `SubjectId` bigint(20) NOT NULL,
  `PortionName` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `school` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `section` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SectionName` varchar(100) NOT NULL,
  `ClassId` bigint(20) NOT NULL,
  `TeacherId` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

CREATE TABLE `service` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SchoolId` bigint(20) NOT NULL,
  `IsMessage` tinyint(1) DEFAULT '1',
  `IsSms` tinyint(1) DEFAULT '0',
  `IsChat` tinyint(1) DEFAULT '1',
  `IsAttendance` tinyint(1) DEFAULT '0',
  `IsAttendanceSms` tinyint(1) DEFAULT '0',
  `IsHomework` tinyint(1) DEFAULT '0',
  `IsHomeworkSms` tinyint(1) DEFAULT '0',
  `IsTimetable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

CREATE TABLE `sliptest` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SectionId` bigint(20) NOT NULL,
  `SubjectId` bigint(20) NOT NULL,
  `SliptestName` varchar(100) NOT NULL,
  `PortionIds` varchar(500) NOT NULL,
  `ExtraPortion` text NOT NULL,
  `MaximumMark` float NOT NULL,
  `Average` float NOT NULL,
  `TestDate` date NOT NULL,
  `SubmissionDate` date NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `sliptest_portion` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SliptestId` bigint(20) NOT NULL,
  `PortionId` bigint(20) NOT NULL,
  `PortionName` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `sliptest_score` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SliptestId` bigint(20) NOT NULL,
  `StudentId` bigint(20) NOT NULL,
  `Mark` float NOT NULL DEFAULT '0',
  `Grade` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `student` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `SchoolId` bigint(20) NOT NULL,
  `ClassId` bigint(20) NOT NULL,
  `SectionId` bigint(20) NOT NULL,
  `AdmissionNo` varchar(100) NOT NULL,
  `RollNo` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `IsLogged` tinyint(1) NOT NULL DEFAULT '0',
  `Image` varchar(256) NOT NULL,
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
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2680 DEFAULT CHARSET=latin1;

CREATE TABLE `subactivity` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ActivityId` bigint(20) NOT NULL,
  `SubActivityName` varchar(100) NOT NULL,
  `Type` varchar(10) NOT NULL DEFAULT 'Mark',
  `MaximumMark` float NOT NULL,
  `Weightage` float NOT NULL,
  `SubActivityAvg` float NOT NULL DEFAULT '0',
  `Orders` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

CREATE TABLE `subactivity_score` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SubActivityId` bigint(20) NOT NULL,
  `StudentId` bigint(20) NOT NULL,
  `Mark` float NOT NULL DEFAULT '0',
  `Grade` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `subject` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SchoolId` bigint(20) DEFAULT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `PartitionType` int(11) NOT NULL,
  `TheorySubjectId` bigint(20) NOT NULL,
  `PracticalSubjectId` bigint(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

CREATE TABLE `subject_group` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SchoolId` bigint(20) DEFAULT NULL,
  `SubjectGroupName` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

CREATE TABLE `subject_group_subject` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SubjectGroupId` bigint(20) NOT NULL,
  `SubjectId` bigint(20) NOT NULL,
  `SubjectName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

CREATE TABLE `subject_student` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SectionId` bigint(20) NOT NULL,
  `SubjectId` bigint(20) NOT NULL,
  `StudentIds` varchar(30000) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

CREATE TABLE `subject_teacher` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SectionId` bigint(20) NOT NULL,
  `SubjectId` bigint(20) NOT NULL,
  `SubjectName` varchar(100) DEFAULT NULL,
  `TeacherId` bigint(20) DEFAULT '0',
  `TeacherName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `SectionId` (`SectionId`,`SubjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=727 DEFAULT CHARSET=latin1;

CREATE TABLE `teacher` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Image` varchar(256) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `SchoolId` bigint(20) NOT NULL,
  `DateOfBirth` varchar(20) NOT NULL,
  `Mobile` varchar(12) NOT NULL,
  `Qualification` varchar(100) NOT NULL,
  `DateOfJoining` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;

CREATE TABLE `term_remark` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SectionId` bigint(20) NOT NULL,
  `StudentId` bigint(20) DEFAULT NULL,
  `Term` int(11) NOT NULL,
  `Remark` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `timetable` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SectionId` bigint(20) NOT NULL,
  `DayOfWeek` varchar(10) NOT NULL,
  `PeriodNo` int(11) NOT NULL,
  `SubjectId` bigint(20) DEFAULT NULL,
  `TimingFrom` time DEFAULT '00:00:00',
  `TimingTo` time DEFAULT '00:00:00',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

CREATE TABLE `user_group` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `UserId` bigint(20) NOT NULL,
  `Role` enum('admin','teacher','student','principal') NOT NULL,
  `GroupId` bigint(20) NOT NULL,
  `IsActive` char(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2723 DEFAULT CHARSET=latin1;
