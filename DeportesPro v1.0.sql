CREATE DATABASE MasterPro;

USE MasterPro;

-- -----------------------------------------------------
-- Table `MasterPro`.`Torneos`
-- -----------------------------------------------------
CREATE TABLE torneos (
  PK_codigo_torneo VARCHAR(5) NOT NULL,
  PRIMARY KEY (PK_codigo_torneo)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Deportes`
-- -----------------------------------------------------
CREATE TABLE deportes (
  PK_codigo_deporte VARCHAR(5) NOT NULL,
  PRIMARY KEY (PK_codigo_deporte)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Estadisticas de Equipo`
-- -----------------------------------------------------
CREATE TABLE estats_Equipos (
  PK_codigo_equipo VARCHAR(5) NOT NULL,
  PRIMARY KEY (PK_codigo_equipo)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Arbitros`
-- -----------------------------------------------------
CREATE TABLE arbitros (
  PK_codigo_arbitros VARCHAR(5) NOT NULL,
  PRIMARY KEY (PK_codigo_arbitros)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Clasificaciones de Equipo`
-- -----------------------------------------------------
CREATE TABLE clasificaciones_Equipo (
  PK_codigo_equipo VARCHAR(5) NOT NULL,
  PRIMARY KEY (PK_codigo_equipo)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
