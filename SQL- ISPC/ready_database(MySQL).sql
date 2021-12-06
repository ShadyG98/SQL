-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ready_database
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ready_database
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ready_database` DEFAULT CHARACTER SET utf8 ;
USE `ready_database` ;

-- -----------------------------------------------------
-- Table `ready_database`.`Pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ready_database`.`Pais` (
  `idPais` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idPais`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ready_database`.`Telefono`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ready_database`.`Telefono` (
  `idTelefono` INT NOT NULL AUTO_INCREMENT,
  `Numero_Telefono` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idTelefono`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ready_database`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ready_database`.`Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `Correo` VARCHAR(45) NOT NULL,
  `Provincia` VARCHAR(45) NOT NULL,
  `Fecha_Nacimiento` VARCHAR(45) NOT NULL,
  `Codigo_Postal` VARCHAR(45) NOT NULL,
  `Contraseña` VARCHAR(45) NOT NULL,
  `idPais` INT NOT NULL,
  `idTelefono` INT NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE INDEX `idUsuario_UNIQUE` (`idUsuario` ASC) VISIBLE,
  UNIQUE INDEX `Correo_UNIQUE` (`Correo` ASC) VISIBLE,
  INDEX `fk_Usuario_Pais1_idx` (`idPais` ASC) VISIBLE,
  INDEX `fk_Usuario_Telefono1_idx` (`idTelefono` ASC) VISIBLE,
  CONSTRAINT `fk_Usuario_Pais1`
    FOREIGN KEY (`idPais`)
    REFERENCES `ready_database`.`Pais` (`idPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_Telefono1`
    FOREIGN KEY (`idTelefono`)
    REFERENCES `ready_database`.`Telefono` (`idTelefono`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ready_database`.`Tarea`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ready_database`.`Tarea` (
  `idTarea` INT NOT NULL AUTO_INCREMENT,
  `Descripcion` VARCHAR(45) NOT NULL,
  `Prioritario` BIT(1) NOT NULL,
  `idUsuario` INT NOT NULL,
  PRIMARY KEY (`idTarea`),
  INDEX `fk_Tarea_Usuario_idx` (`idUsuario` ASC) VISIBLE,
  CONSTRAINT `fk_Tarea_Usuario`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `ready_database`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ready_database`.`Equipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ready_database`.`Equipo` (
  `idEquipo` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEquipo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ready_database`.`Equipo_has_Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ready_database`.`Equipo_has_Usuario` (
  `Equipo_idEquipo` INT NOT NULL,
  `Usuario_idUsuario` INT NOT NULL,
  PRIMARY KEY (`Equipo_idEquipo`, `Usuario_idUsuario`),
  INDEX `fk_Equipo_has_Usuario_Usuario1_idx` (`Usuario_idUsuario` ASC) VISIBLE,
  INDEX `fk_Equipo_has_Usuario_Equipo1_idx` (`Equipo_idEquipo` ASC) VISIBLE,
  CONSTRAINT `fk_Equipo_has_Usuario_Equipo1`
    FOREIGN KEY (`Equipo_idEquipo`)
    REFERENCES `ready_database`.`Equipo` (`idEquipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Equipo_has_Usuario_Usuario1`
    FOREIGN KEY (`Usuario_idUsuario`)
    REFERENCES `ready_database`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
