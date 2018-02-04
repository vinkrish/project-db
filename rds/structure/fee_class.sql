CREATE TABLE `fee_class` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ClassId` bigint(20) NOT NULL,
  `ClassName` varchar(100) NOT NULL,
  `SchoolId` bigint(20) NOT NULL,
  `Amount` int(11) NOT NULL DEFAULT 0,
  `Type` varchar(20) NOT NULL DEFAULT 'yearly',
  PRIMARY KEY (`Id`)
);