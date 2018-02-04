CREATE TABLE `fee_student` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `StudentId` bigint(20) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `SchoolId` bigint(20) NOT NULL,
  `ClassId` bigint(20) NOT NULL,
  `SectionId` bigint(20) NOT NULL,
  `RollNo` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Discount` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
);