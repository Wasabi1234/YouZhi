DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `userId` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `content` TEXT NULL,
  `user_id` INT NOT NULL,
  `created_date` DATETIME NOT NULL,
  `comment_count` INT NOT NULL,
  PRIMARY KEY (`userId`),
  INDEX `date_index` (`created_date` ASC));

  DROP TABLE IF EXISTS `user`;
  CREATE TABLE `user` (
    `userId` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `name` varchar(64) NOT NULL DEFAULT '',
    `password` varchar(128) NOT NULL DEFAULT '',
    `salt` varchar(32) NOT NULL DEFAULT '',
    `head_url` varchar(256) NOT NULL DEFAULT '',
    PRIMARY KEY (`userId`),
    UNIQUE KEY `name` (`name`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `login_ticket`;
CREATE TABLE `login_ticket` (
  `userId` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `ticket` VARCHAR(45) NOT NULL,
  `expired` DATETIME NOT NULL,
  `status` INT NULL DEFAULT 0,
  PRIMARY KEY (`userId`),
  UNIQUE INDEX `ticket_UNIQUE` (`ticket` ASC)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;