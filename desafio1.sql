
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

/*
Cria tabela dos artistas
*/
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`artist`(
	`artist_id` INT NOT NULL AUTO_INCREMENT,
    `artist_name` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`artist_id`)
) ENGINE = InnoDB;

/*
Cria tabela dos álbuns
*/
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`album`(
	`album_id` INT NOT NULL AUTO_INCREMENT,
    `album_name` VARCHAR(45) NOT NULL,
	`artist_id` INT NOT NULL,
    `release_year` INT NOT NULL,
    PRIMARY KEY (`album_id`),
    FOREIGN KEY (`artist_id`) REFERENCES `SpotifyClone`.`artist` (`artist_id`)
) ENGINE = InnoDB;
