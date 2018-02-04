CREATE TABLE `fee_transaction` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `StudentId` bigint(20) NOT NULL,
  `Paid` int(11) NOT NULL,
  `PaidOn` date NOT NULL,
  `Type` varchar(10) DEFAULT 'cash',
  `Description` varchar(256) DEFAULT ' ',
  PRIMARY KEY (`Id`)
);