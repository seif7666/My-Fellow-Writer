-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema MYFELLOWWRITER
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema MYFELLOWWRITER
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `MYFELLOWWRITER` ;
USE `MYFELLOWWRITER` ;

-- -----------------------------------------------------
-- Table `MYFELLOWWRITER`.`USER_DETAILS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MYFELLOWWRITER`.`USER_DETAILS` (
  `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `EMAIL` VARCHAR(45) NOT NULL,
  `PASSWORD` VARCHAR(64) NOT NULL,
  `USERNAME` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  UNIQUE INDEX `EMAIL_UNIQUE` (`EMAIL` ASC) VISIBLE,
  UNIQUE INDEX `USERNAME_UNIQUE` (`USERNAME` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MYFELLOWWRITER`.`ARTICLE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MYFELLOWWRITER`.`ARTICLE` (
  `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `HEADING` VARCHAR(45) NOT NULL,
  `DAY` DATE NOT NULL,
  `USER_ID` INT UNSIGNED NULL,
  PRIMARY KEY (`ID`),
  INDEX `WRITTEN_BY_INDEX` (`USER_ID` ASC) VISIBLE,
  INDEX `DAY_INDEX` USING BTREE (`DAY`) VISIBLE,
  CONSTRAINT `WRITTEN_BY`
    FOREIGN KEY (`USER_ID`)
    REFERENCES `MYFELLOWWRITER`.`USER_DETAILS` (`ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MYFELLOWWRITER`.`ARTICLE_BODY`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MYFELLOWWRITER`.`ARTICLE_BODY` (
  `ARTICLE_ID` INT UNSIGNED NOT NULL,
  `TEXT` VARCHAR(1000) NULL,
  INDEX `BODY_OF_ARTICLE_idx` (`ARTICLE_ID` ASC) VISIBLE,
  CONSTRAINT `BODY_OF_ARTICLE`
    FOREIGN KEY (`ARTICLE_ID`)
    REFERENCES `MYFELLOWWRITER`.`ARTICLE` (`ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MYFELLOWWRITER`.`ARTICLE_IMG`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MYFELLOWWRITER`.`ARTICLE_IMG` (
  `ARTICLE_ID` INT UNSIGNED NOT NULL,
  `FILENAME` VARCHAR(45) NOT NULL,
  `CURRENT_FILENAME` VARCHAR(45) NOT NULL,
  INDEX `IMG_IN_ARTICLE_idx` (`ARTICLE_ID` ASC) VISIBLE,
  CONSTRAINT `IMG_IN_ARTICLE`
    FOREIGN KEY (`ARTICLE_ID`)
    REFERENCES `MYFELLOWWRITER`.`ARTICLE` (`ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MYFELLOWWRITER`.`EXPENSE_AND_EARNING`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MYFELLOWWRITER`.`EXPENSE_AND_EARNING` (
  `ARTICLE_ID` INT UNSIGNED NOT NULL,
  `AMOUNT` DECIMAL(2) UNSIGNED NOT NULL,
  `CAPTION` VARCHAR(45) NULL,
  `TIME` TIMESTAMP(1) NULL,
  INDEX `ARTICLE_EXPENSE_idx` (`ARTICLE_ID` ASC) VISIBLE,
  CONSTRAINT `ARTICLE_EXPENSE`
    FOREIGN KEY (`ARTICLE_ID`)
    REFERENCES `MYFELLOWWRITER`.`ARTICLE` (`ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `MYFELLOWWRITER`.`SESSION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MYFELLOWWRITER`.`SESSION` (
  `ID` INT UNSIGNED NOT NULL,
  `SESSION` VARCHAR(45) NOT NULL,
  `CREATED_BY` TIMESTAMP(1) NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  UNIQUE INDEX `SESSION_UNIQUE` (`SESSION` ASC) VISIBLE,
  CONSTRAINT `USER_SESSION`
    FOREIGN KEY (`ID`)
    REFERENCES `MYFELLOWWRITER`.`USER_DETAILS` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
