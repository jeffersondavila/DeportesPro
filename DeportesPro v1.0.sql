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

-- -----------------------------------------------------
-- Table `MasterPro`.`Aplicaciones`
-- -----------------------------------------------------
CREATE TABLE aplicaciones (
  PK_codigo_aplicacion VARCHAR(5) NOT NULL,
  PRIMARY KEY (PK_codigo_aplicacion)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Login`
-- -----------------------------------------------------
CREATE TABLE login (
  PK_codigo_login VARCHAR(5) NOT NULL,
  PRIMARY KEY (PK_codigo_login)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Permisos`
-- -----------------------------------------------------
CREATE TABLE permisos (
  PK_codigo_permiso VARCHAR(5) NOT NULL,
  PRIMARY KEY (PK_codigo_permiso)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Bitacora`
-- -----------------------------------------------------
CREATE TABLE bitacora (
  PK_codigo_bitacora INT AUTO_INCREMENT,
  PRIMARY KEY (PK_codigo_bitacora)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Accion`
-- -----------------------------------------------------
CREATE TABLE accion (
  PK_codigo_accion VARCHAR(5) NOT NULL,
  PRIMARY KEY (PK_codigo_accion)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;


-- -----------------------------------------------------
-- Table `MasterPro`.`Jugadores`
-- -----------------------------------------------------
CREATE TABLE jugadores (
  PK_codigo_jugador  VARCHAR(5) NOT NULL,
  PRIMARY KEY (PK_codigo_jugador)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;


-- -----------------------------------------------------
-- Table `MasterPro`.`Eventos_de_partido`
-- -----------------------------------------------------
CREATE TABLE eventos_de_partido (
 PK_codigo_partido  VARCHAR(5) NOT NULL,
PRIMARY KEY (PK_codigo_partido)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Jornada`
-- -----------------------------------------------------
CREATE TABLE jornada(
  PK_codigo_jornada  VARCHAR(5) NOT NULL,
PRIMARY KEY (PK_codigo_jornada)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

