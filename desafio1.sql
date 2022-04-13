
/*
Confirma se existe bd
*/
DROP DATABASE IF EXISTS `SpotifyClone`;

/*
Cria db e usa o mesmo
*/
CREATE DATABASE `SpotifyClone`;
USE `SpotifyClone`;

/*
Cria tabela dos planos
*/
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`subscription_plans`(
    `plans_id` INT NOT NULL AUTO_INCREMENT,
	`plans_type` VARCHAR(50) NULL,
	`plans_price` DECIMAL(5,2) NOT NULL,
	PRIMARY KEY (`plans_id`)
) engine = InnoDB;

/*
Cria tabela dos usuários
*/
CREATE TABLE `SpotifyClone`.`user`(
    `user_id` INT NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(50) NOT NULL,
    `age` INT NOT NULL,
    `signature_date` DATE NOT NULL,
    `plans_id` INT NOT NULL,
    PRIMARY KEY (`user_id`),
    FOREIGN KEY (`plans_id` ) REFERENCES `SpotifyClone`.`plans`(`plans_id`)
) engine = InnoDB;

