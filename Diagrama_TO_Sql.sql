-- MySQL Script generated by MySQL Workbench
-- 12/13/16 12:31:21
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema DBTecnotiv
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `DBTecnotiv` ;

-- -----------------------------------------------------
-- Schema DBTecnotiv
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DBTecnotiv` DEFAULT CHARACTER SET utf8 ;
USE `DBTecnotiv` ;

-- -----------------------------------------------------
-- Table `DBTecnotiv`.`Texto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBTecnotiv`.`Texto` ;

CREATE TABLE IF NOT EXISTS `DBTecnotiv`.`Texto` (
  `idTexto` INT NOT NULL AUTO_INCREMENT,
  `lblNombre` VARCHAR(45) NULL,
  `lblEspañol` VARCHAR(45) NULL,
  `lblEnglish` VARCHAR(45) NULL,
  `bActivo` TINYINT(1) NULL DEFAULT 1,
  PRIMARY KEY (`idTexto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DBTecnotiv`.`Bebidas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBTecnotiv`.`Bebidas` ;

CREATE TABLE IF NOT EXISTS `DBTecnotiv`.`Bebidas` (
  `idBebidas` INT NOT NULL AUTO_INCREMENT,
  `lbl_Nombre` VARCHAR(45) NULL,
  `lbl_Descripcion` VARCHAR(45) NULL,
  `lbl_Receta` VARCHAR(45) NULL,
  `img_Ruta` VARCHAR(145) NULL,
  `bactivo` TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idBebidas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DBTecnotiv`.`Comidas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBTecnotiv`.`Comidas` ;

CREATE TABLE IF NOT EXISTS `DBTecnotiv`.`Comidas` (
  `idComidas` INT NOT NULL AUTO_INCREMENT,
  `lbl_Nombre` VARCHAR(45) NULL,
  `lbl_Descripcion` VARCHAR(45) NULL,
  `lbl_Receta` VARCHAR(45) NULL,
  `img_Ruta` VARCHAR(145) NULL,
  `bactivo` TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idComidas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DBTecnotiv`.`Contacto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBTecnotiv`.`Contacto` ;

CREATE TABLE IF NOT EXISTS `DBTecnotiv`.`Contacto` (
  `idUrgencia` INT NOT NULL AUTO_INCREMENT,
  `lbl_NombrePersona` VARCHAR(45) NULL,
  `lbl_NumeroCelular` VARCHAR(45) NULL,
  `lbl_ NumeroCasa` VARCHAR(45) NULL,
  `bactivo` TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idUrgencia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DBTecnotiv`.`televisiones`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBTecnotiv`.`televisiones` ;

CREATE TABLE IF NOT EXISTS `DBTecnotiv`.`televisiones` (
  `idtelevisiones` INT NOT NULL AUTO_INCREMENT,
  `lbl_Marca` VARCHAR(45) NULL,
  `codigo_Television` VARCHAR(200) NULL,
  `bactivo` TINYINT(1) NULL DEFAULT 1,
  PRIMARY KEY (`idtelevisiones`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DBTecnotiv`.`Actitidades`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBTecnotiv`.`Actitidades` ;

CREATE TABLE IF NOT EXISTS `DBTecnotiv`.`Actitidades` (
  `idActitidades` INT NOT NULL AUTO_INCREMENT,
  `lbl_NombreActividad` VARCHAR(45) NULL,
  `bactivo` TINYINT(1) NULL DEFAULT 1,
  PRIMARY KEY (`idActitidades`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DBTecnotiv`.`Postres`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBTecnotiv`.`Postres` ;

CREATE TABLE IF NOT EXISTS `DBTecnotiv`.`Postres` (
  `idPostres` INT NOT NULL AUTO_INCREMENT,
  `lbl_Nombre` VARCHAR(45) NULL,
  `lbl_Descripcion` VARCHAR(45) NULL,
  `lbl_Receta` VARCHAR(45) NULL,
  `img_Ruta` VARCHAR(145) NULL,
  `bactivo` TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idPostres`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DBTecnotiv`.`Dolores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBTecnotiv`.`Dolores` ;

CREATE TABLE IF NOT EXISTS `DBTecnotiv`.`Dolores` (
  `idDolores` INT NOT NULL AUTO_INCREMENT,
  `lbl_Lugar` VARCHAR(45) NULL,
  `lbl_SolucionIntenso` VARCHAR(150) NULL,
  `lbl_SolucionModerado` VARCHAR(150) NULL,
  `lbl_SolucionLeve` VARCHAR(150) NULL,
  `bactivo` TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idDolores`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DBTecnotiv`.`Internet`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBTecnotiv`.`Internet` ;

CREATE TABLE IF NOT EXISTS `DBTecnotiv`.`Internet` (
  `idInternet` INT NOT NULL AUTO_INCREMENT,
  `lbl_Nombre` VARCHAR(45) NULL,
  `lbl_Url` VARCHAR(145) NULL,
  `img_Ruta` VARCHAR(145) NULL,
  PRIMARY KEY (`idInternet`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DBTecnotiv`.`Acondicionado`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBTecnotiv`.`Acondicionado` ;

CREATE TABLE IF NOT EXISTS `DBTecnotiv`.`Acondicionado` (
  `idtelevisiones` INT NOT NULL AUTO_INCREMENT,
  `lbl_Marca` VARCHAR(45) NULL,
  `codigo_Television` VARCHAR(200) NULL,
  `bactivo` TINYINT(1) NULL DEFAULT 1,
  PRIMARY KEY (`idtelevisiones`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DBTecnotiv`.`Configuracion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `DBTecnotiv`.`Configuracion` ;

CREATE TABLE IF NOT EXISTS `DBTecnotiv`.`Configuracion` (
  `idConfiguracion` INT NOT NULL AUTO_INCREMENT,
  `lbl_idioma` INT NULL DEFAULT 1,
  `uso_silla` TINYINT(1) NULL DEFAULT 0,
  `uso_diadema` TINYINT(1) NULL DEFAULT 0,
  `uso_Mause` TINYINT(1) NULL DEFAULT 1,
  `uso_Sensor` TINYINT(1) NULL DEFAULT 0,
  `lbl_Usuario` VARCHAR(45) NULL,
  `txtContraseña` VARCHAR(200) NULL,
  PRIMARY KEY (`idConfiguracion`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `DBTecnotiv`.`Configuracion`
-- -----------------------------------------------------
START TRANSACTION;
USE `DBTecnotiv`;
INSERT INTO `DBTecnotiv`.`Configuracion` (`idConfiguracion`, `lbl_idioma`, `uso_silla`, `uso_diadema`, `uso_Mause`, `uso_Sensor`, `lbl_Usuario`, `txtContraseña`) VALUES (1, 1, 0, 0, 1, 0, 'Desarrolladores :)', NULL);

COMMIT;

