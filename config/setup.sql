CREATE DATABASE IF NOT EXISTS `db`;

CREATE TABLE IF NOT EXISTS `db`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(255) NULL,
  `created_at` timestamp default now(), 
  `updated_at` timestamp default now() on update now(),
  PRIMARY KEY (`id`)); 

INSERT INTO `db`.`users` (`username`, `password`) VALUES ('pedrom', '1212123');
INSERT INTO `db`.`users` (`username`, `password`) VALUES ('coco', '1212123');
INSERT INTO `db`.`users` (`username`, `password`) VALUES ('alex', '1212123');
