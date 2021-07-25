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
  nombre_aplicacion VARCHAR(5) NOT NULL,
  descripcion_aplicacion VARCHAR(5) NOT NULL,
  no_reporte_aplicacion VARCHAR(5) NOT NULL,
  estado_aplicacion VARCHAR(5) NOT NULL,
  PRIMARY KEY (PK_codigo_aplicacion)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Login`
-- -----------------------------------------------------
CREATE TABLE login (
  PK_codigo_login VARCHAR(5) NOT NULL,
  nombre_login VARCHAR(50) DEFAULT NULL,
  apellido_login VARCHAR(50) DEFAULT NULL,
  username_login VARCHAR(50) DEFAULT NULL,
  email_login VARCHAR(50) DEFAULT NULL,
  password_login VARCHAR(50) DEFAULT NULL,
  estado_login TINYINT(1) DEFAULT NULL,
  PRIMARY KEY (PK_codigo_login)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Permisos`
-- -----------------------------------------------------
CREATE TABLE permisos (
  PK_codigo_permiso VARCHAR(5) NOT NULL,
  nombre_permiso VARCHAR(50) DEFAULT NULL,
  descripcion_permiso VARCHAR(60) DEFAULT NULL,
  estado_permiso TINYINT(1) DEFAULT NULL,
  PRIMARY KEY (PK_codigo_permiso)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Bitacora`
-- -----------------------------------------------------
CREATE TABLE bitacora (
  PK_codigo_bitacora INT AUTO_INCREMENT,
  PK_codigo_login VARCHAR(5) NOT NULL,
  fecha_bitacora VARCHAR(20) DEFAULT NULL,
  hora_bitacora VARCHAR(20) DEFAULT NULL,
  ip_bitacora VARCHAR(20) DEFAULT NULL,
  accion_bitacora VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (PK_codigo_bitacora),
  FOREIGN KEY (PK_codigo_login) REFERENCES  login(PK_codigo_login)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;