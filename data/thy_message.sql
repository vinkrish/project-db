CREATE TABLE IF NOT EXISTS `message` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `SenderId` bigint(20) NOT NULL,
  `RecipientId` bigint(20) NOT NULL,
  `MessageType` ENUM('text', 'image') NULL,
  `MessageBody` VARCHAR(1000) NULL,
  `ImageUrl` VARCHAR(255) NULL,
  `CreatedAt` DATETIME NULL,
  PRIMARY KEY (`id`));
  
 CREATE TABLE IF NOT EXISTS `message_recipient` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `RecipientId` bigint(20) NOT NULL,
  `RecipientGroupId` bigint(20) NOT NULL,
  `MessageId` bigint(20) NOT NULL,
  `IsRead` CHAR NOT NULL,
  PRIMARY KEY (`id`));
  
 CREATE TABLE IF NOT EXISTS `group` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(255) NOT NULL,
  `CreateDate` DATE NULL,
  `IsActive` CHAR NOT NULL,
  PRIMARY KEY (`id`));
  
   CREATE TABLE IF NOT EXISTS `user_group` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `UserId` bigint(20) NOT NULL,
  `GroupId` bigint(20) NOT NULL,
  `CreateDate` DATE NULL,
  `IsActive` CHAR NOT NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE IF NOT EXISTS `deleted_message` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `MessageId` bigint(20) NOT NULL,
  `UserId` bigint(20) NOT NULL,
  `DeletedAt` DATETIME NULL,
  PRIMARY KEY (`id`));