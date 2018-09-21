mysql> use tp;
Database changed
mysql> new table module(id,name,year);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'new table module(id,name,year)' at line 1
mysql> create table module(id,name,year);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'name,year)' at line 1
mysql> create table module(id,name,year);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'name,year)' at line 1
mysql> create table module(id,name,year)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'name,year)' at line 1
mysql> create table module(
    -> id int(10),
    -> name varchar(255),
    -> year int(4);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 4
mysql> create table module(
    -> id int(10) unsigned auto-increment,
    -> id int(10) unsigned auto-increment,
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'auto-increment,
id int(10) unsigned auto-increment,' at line 2
mysql> create table module(
    -> id int primary key not null unsigned auto-increment,
    -> name varchar(255),
    -> year int)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'unsigned auto-increment,
name varchar(255),
year int)' at line 2
mysql> create table module(
    -> id int primary key auto-increment,
    -> name varchar(255),
    -> year int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'auto-increment,
name varchar(255),
year int)' at line 2
mysql> create table module(
    -> id int unsigned auto_increment,
    -> name varchar(255),
    -> year int,
    -> primary key (id));
Query OK, 0 rows affected (0.05 sec)

mysql> create table year(
    -> id int primary key unsigned auto_increment,
    -> label varchar(255));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'unsigned auto_increment,
label varchar(255))' at line 2
mysql> create table year(
    -> id int unsigned auto_increment,
    -> label varchar(255),
    -> primary key (id));
Query OK, 0 rows affected (0.06 sec)

mysql> create table enrolment(
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table enrolment(
    -> from datetime,
    -> to datetime);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from datetime,
to datetime)' at line 2
mysql> create table enrolment(
    -> from datetime(),
    -> to datetime());
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from datetime(),
to datetime())' at line 2
mysql> create table enrolment(
    -> from datetime not null,
    -> to datetime not null);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from datetime not null,
to datetime not null)' at line 2
mysql> create table enrolment(
    -> id_student int,
    -> id_year int,
    -> from datetime,
    -> to datetime;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from datetime,
to datetime' at line 4
mysql> create table enrolment(
    -> `from` datetime,
    -> `to` datetime);
Query OK, 0 rows affected (0.07 sec)

mysql> create table assessment(
    -> attempted datetime,
    -> passed datetime,
    -> ^Q;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 4
mysql> create table assessment(
    -> attempted datetime unsigned auto_increment,
    -> passed datetime,
    -> grade int,
    -> primary key (attempted));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'unsigned auto_increment,
passed datetime,
grade int,
primary key (attempted))' at line 2
mysql> create table assessment(
    -> attempted datetime auto_increment,
    -> passed datetime,
    -> grade int,
    -> primary keybedgberf z;
ERROR 1063 (42000): Incorrect column specifier for column 'attempted'
mysql> create table assessment(
    -> attempted datetime,
    -> passed datetime,
    -> grade int,
    -> primary key (attempted));
Query OK, 0 rows affected (0.06 sec)

mysql> create table student(
    -> id int unsigned auto_increment,
    -> firstname varchar(255),
    -> lastname varchar(255),
    -> primary key (id));
Query OK, 0 rows affected (0.05 sec)

mysql> show tables;
+--------------+
| Tables_in_tp |
+--------------+
| assessment   |
| enrolment    |
| module       |
| student      |
| year         |
+--------------+
5 rows in set (0.00 sec)

mysql> update table drop year;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table drop year' at line 1
mysql> alter table module drop year;
Query OK, 0 rows affected (0.11 sec)
Records: 0  Duplicates: 0  Warnings: 0

    
    
-- MySQL Script generated by MySQL Workbench
-- Fri Sep 21 17:19:23 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema tp
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tp
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tp` DEFAULT CHARACTER SET latin1 ;
USE `tp` ;

-- -----------------------------------------------------
-- Table `tp`.`year`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp`.`year` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `label` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `tp`.`module`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp`.`module` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `year` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_year_idx` (`year` ASC) VISIBLE,
  CONSTRAINT `fk_year`
    FOREIGN KEY (`year`)
    REFERENCES `tp`.`year` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `tp`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp`.`student` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(255) NULL DEFAULT NULL,
  `lastname` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `tp`.`assessment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp`.`assessment` (
  `attempted` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `passed` DATETIME NULL DEFAULT NULL,
  `grade` INT(11) NULL DEFAULT NULL,
  `student_id` INT(10) UNSIGNED NOT NULL,
  `module_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`attempted`, `student_id`, `module_id`),
  INDEX `fk_assessment_student1_idx` (`student_id` ASC) VISIBLE,
  INDEX `fk_assessment_module1_idx` (`module_id` ASC) VISIBLE,
  CONSTRAINT `fk_assessment_module1`
    FOREIGN KEY (`module_id`)
    REFERENCES `tp`.`module` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_assessment_student1`
    FOREIGN KEY (`student_id`)
    REFERENCES `tp`.`student` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `tp`.`enrolment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp`.`enrolment` (
  `from` DATETIME NULL DEFAULT NULL,
  `to` DATETIME NULL DEFAULT NULL,
  `student_id` INT(10) UNSIGNED NOT NULL,
  `year_id` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`student_id`, `year_id`),
  INDEX `fk_enrolment_year1_idx` (`year_id` ASC) VISIBLE,
  CONSTRAINT `fk_enrolment_student1`
    FOREIGN KEY (`student_id`)
    REFERENCES `tp`.`student` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_enrolment_year1`
    FOREIGN KEY (`year_id`)
    REFERENCES `tp`.`year` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

    
    
    
    
mysql>  ALTER TABLE `tp`.`assessment`
    ->         ADD COLUMN `student_id` INT(10) UNSIGNED NOT NULL AFTER `grade`,
    ->         ADD COLUMN `module_id` INT(10) UNSIGNED NOT NULL AFTER `student_id`,
    ->         DROP PRIMARY KEY,
    ->         ADD PRIMARY KEY (`attempted`, `student_id`, `module_id`),
    ->         ADD INDEX `fk_assessment_student1_idx` (`student_id` ASC),
    ->         ADD INDEX `fk_assessment_module1_idx` (`module_id` ASC);
Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE `tp`.`assessment` ADD INDEX `fk_assessment_student1_idx` (`student_id` ASC) VISIBLE,ADD INDEX `fk_assessment_module1_idx` (`module_id` ASC) VISIBLE,DROP INDEX `fk_assessment_module1_idx` ,DROP INDEX `fk_assessment_student1_idx` ;;ALTER TABLE `tp`.`enrolment` ADD COLUMN `student_id` INT(10) UNSIGNED NOT NULL AFTER `to`,ADD COLUMN `year_id` INT(10) UNSIGNED NOT NULL AFTER `student_id`,ADD PRIMARY KEY (`student_id`, `year_id`),ADD INDEX `fk_enrolment_year1_idx` (`year_id` ASC) VISIBLE;;ALTER TABLE `tp`.`module` DROP INDEX `fk_year_idx` ,ADD INDEX `fk_year_idx` (`year` ASC) INVISIBLE;;ALTER TABLE `tp`.`assessment` ADD CONSTRAINT `fk_assessment_student1`  FOREIGN KEY (`student_id`)  REFERENCES `tp`.`student` (`id`)  ON DELETE NO ACTION  ON UPDATE NO ACTION,ADD CONSTRAINT `fk_assessment_module1`  FOREIGN KEY (`module_id`)  REFERENCES `tp`.`module` (`id`)  ON DELETE NO ACTION  ON UPDATE NO ACTION;ALTER TABLE `tp`.`enrolment` ADD CONSTRAINT `fk_enrolment_student1`  FOREIGN KEY (`student_id`)  REFERENCES `tp`.`student` (`id`)  ON DELETE NO ACTION  ON UPDATE NO ACTION,ADD CONSTRAINT `fk_enrolment_year1`  FOREIGN KEY (`year_id`)  REFERENCES `tp`.`year` (`id`)  ON DELETE NO ACTION  ON UPDATE NO ACTION;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'VISIBLE,ADD INDEX `fk_assessment_module1_idx` (`module_id` ASC) VISIBLE,DROP IND' at line 1
ERROR:
No query specified

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'VISIBLE' at line 1
ERROR:
No query specified

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'INVISIBLE' at line 1
ERROR:
No query specified

Query OK, 0 rows affected (0.14 sec)
Records: 0  Duplicates: 0  Warnings: 0

ERROR 1072 (42000): Key column 'student_id' doesn't exist in table
mysql> insert into module(1,linux,1);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1,linux,1)' at line 1
mysql> insert into module values (1,'linux',1);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`tp`.`module`, CONSTRAINT `fk_year` FOREIGN KEY (`year`) REFERENCES `year` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION)
mysql> insert into module values ('linux',1);
ERROR 1136 (21S01): Column count doesn't match value count at row 1


















