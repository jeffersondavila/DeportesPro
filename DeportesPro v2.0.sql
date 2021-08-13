CREATE DATABASE MasterPro2;

USE MasterPro2;

-- -----------------------------------------------------
-- Table `MasterPro`.`Maestras`
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Table `MasterPro`.`Deportes`
-- -----------------------------------------------------
CREATE TABLE deportes (
  PK_codigo_deporte VARCHAR(5) NOT NULL,
  nombre_deporte VARCHAR(60) NOT NULL,
  cantidad_min_jugadores INT(2) NOT NULL,
  estatus_deporte TINYINT(1) NOT NULL,
  PRIMARY KEY (PK_codigo_deporte)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Formato`
-- -----------------------------------------------------
CREATE TABLE formatos (
  PK_codigo_formato VARCHAR(5) NOT NULL,
  nombre_formato VARCHAR(60) NOT NULL,
  cantidad_min_equipos INT(2) NOT NULL,
  cantidad_max_equipos INT(2) NOT NULL,
  estatus_deporte TINYINT(1) NOT NULL,
  PRIMARY KEY (PK_codigo_deporte)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro2`.`Categorias`
-- -----------------------------------------------------
CREATE TABLE categorias (
  PK_codigo_categorias VARCHAR(5) NOT NULL,
  genero_categoria VARCHAR(60) NOT NULL,
  estatus_categoria TINYINT(1) NOT NULL,
  PRIMARY KEY (PK_codigo_categorias)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Division`
-- -----------------------------------------------------
CREATE TABLE divisiones (
  PK_codigo_division VARCHAR(5) NOT NULL,
  nombre_division VARCHAR(60) NOT NULL,
  edad_min_jugador INT(2) NOT NULL,
  edad_max_jugador INT(2) NOT NULL,
  estatus_division TINYINT(1) NOT NULL,
  PRIMARY KEY (PK_codigo_division)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Torneos`
-- -----------------------------------------------------
CREATE TABLE torneos (
  PK_codigo_torneo VARCHAR(5) NOT NULL,
  PK_codigo_deporte VARCHAR(5) NOT NULL,
  PK_codigo_categorias VARCHAR(5) NOT NULL,
  PK_codigo_division VARCHAR(5) NOT NULL,
  PK_codigo_formato VARCHAR(5) NOT NULL,
  nombre_torneo VARCHAR(60) NOT NULL,
  estatus_torneo TINYINT(1) NOT NULL,
  PRIMARY KEY (
    PK_codigo_torneo,
    PK_codigo_deporte,
    PK_codigo_categorias,
    PK_codigo_division
  ),
  FOREIGN KEY (PK_codigo_deporte) REFERENCES deportes(PK_codigo_deporte),
  FOREIGN KEY (PK_codigo_categorias) REFERENCES categorias(PK_codigo_categorias),
  FOREIGN KEY (PK_codigo_division) REFERENCES divisiones(PK_codigo_division),
  FOREIGN KEY (PK_codigo_formato) REFERENCES formatos(PK_codigo_formato),
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Equipo`
-- -----------------------------------------------------
CREATE TABLE equipos (
  PK_codigo_equipo VARCHAR(5) NOT NULL,
  PK_codigo_deporte VARCHAR(5) NOT NULL,
  PK_codigo_torneo VARCHAR(5) NOT NULL nombre_equipo VARCHAR(60) NOT NULL,
  fecha_fundacion DATE NOT NULL,
  cantidad_jugadores INT(2) NULL,
  estatus_equipo TINYINT(1) NOT NULL,
  PRIMARY KEY (
    PK_codigo_equipo,
    PK_codigo_deporte,
    PK_codigo_torneo
  ),
  FOREIGN KEY (PK_codigo_deporte) REFERENCES deportes(PK_codigo_deporte),
  FOREIGN KEY (PK_codigo_torneo) REFERENCES torneo(PK_codigo_torneo)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Rol`
-- -----------------------------------------------------
CREATE TABLE roles(
  PK_codigo_rol VARCHAR(5) NOT NULL,
  PK_codigo_deporte VARCHAR(5) NOT NULL,
  nombre_rol VARCHAR(60) NOT NULL,
  estatus_rol TINYINT(1) NOT NULL,
  PRIMARY KEY (PK_codigo_rol, PK_codigo_deporte),
  FOREIGN KEY (PK_codigo_deporte) REFERENCES deportes(PK_codigo_deporte)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Jugadores`
-- -----------------------------------------------------
CREATE TABLE jugadores (
  PK_codigo_jugador VARCHAR(5) NOT NULL,
  PK_codigo_rol VARCHAR(5) NOT NULL,
  PK_codigo_deporte VARCHAR(5) NOT NULL,
  PK_codigo_equipo VARCHAR(5) NOT NULL,
  edad_jugador INT(2) NOT NULL,
  nombre_jugador VARCHAR(60) NOT NULL,
  estatus_jugador TINYINT(1) NOT NULL,
  PRIMARY KEY (
    PK_codigo_jugador,
    PK_codigo_rol,
    PK_codigo_deporte
  ),
  FOREIGN KEY (PK_codigo_rol) REFERENCES rol(PK_codigo_rol),
  FOREIGN KEY (PK_codigo_deporte) REFERENCES deportes(PK_codigo_deporte)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Arbitros`
-- -----------------------------------------------------
CREATE TABLE arbitros (
  PK_codigo_arbitro VARCHAR(5) NOT NULL,
  PK_codigo_deporte VARCHAR(5) NOT NULL,
  nombre_arbitro VARCHAR(60) NOT NULL,
  organizacion_arbitro VARCHAR(60) NOT NULL,
  estatus_arbitros TINYINT(1) NOT NULL,
  PRIMARY KEY (
    PK_codigo_arbitro,
    PK_codigo_deporte,
  ),
  FOREIGN KEY (PK_codigo_deporte) REFERENCES deportes(PK_codigo_deporte),
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Jornada`
-- -----------------------------------------------------
CREATE TABLE jornadas(
  PK_codigo_jornada VARCHAR(5) NOT NULL,
  PK_codigo_categorias VARCHAR(5) NOT NULL,
  nombre_jornada VARCHAR(60) NOT NULL,
  fecha_inicio DATE NOT NULL,
  fecha_fin DATE NOT NULL,
  estatus_jornada TINYINT(1) NOT NULL,
  PRIMARY KEY (PK_codigo_jornada, PK_codigo_categorias),
  FOREIGN KEY (PK_codigo_categorias) REFERENCES categorias(PK_codigo_categorias)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Campo`
-- -----------------------------------------------------
CREATE TABLE campos(
  PK_codigo_campo VARCHAR(5) NOT NULL,
  PK_codigo_deporte VARCHAR(5) NOT NULL,
  nombre_campo VARCHAR(60) NOT NULL,
  estatus_campo TINYINT(1) NOT NULL,
  PRIMARY KEY (PK_codigo_jornada, PK_codigo_deporte),
  FOREIGN KEY (PK_codigo_deporte) REFERENCES deportes(PK_codigo_deporte)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Calendario`
-- -----------------------------------------------------
CREATE TABLE calendario (
  PK_codigo_calendario VARCHAR(5) NOT NULL,
  PK_codigo_deporte VARCHAR(5) NOT NULL,
  PK_codigo_jornada VARCHAR(5) NOT NULL,
  fecha DATE NOT NULL,
  estatus_calendario TINYINT(1) NOT NULL,
  PRIMARY KEY (
    PK_codigo_calendario,
    PK_codigo_deporte,
    PK_codigo_jornada
  ),
  FOREIGN KEY (PK_codigo_deporte) REFERENCES deportes(PK_codigo_deporte),
  FOREIGN KEY (PK_codigo_jornada) REFERENCES jornadas(PK_codigo_jornada)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Accion`
-- -----------------------------------------------------
CREATE TABLE acciones (
  PK_codigo_accion VARCHAR(5) NOT NULL,
  PK_codigo_deporte VARCHAR(5) NOT NULL,
  nombre_accion VARCHAR(60) NOT NULL,
  estatus_accion TINYINT(1) NOT NULL,
  PRIMARY KEY (PK_codigo_accion),
  FOREIGN KEY (PK_codigo_deporte) REFERENCES deportes(PK_codigo_deporte)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Sanciones`
-- -----------------------------------------------------
CREATE TABLE sanciones (
  PK_codigo_sancion VARCHAR(5) NOT NULL,
  PK_codigo_accion VARCHAR(5) NOT NULL,
  nombre_sancion VARCHAR(60) NOT NULL,
  partidos_sancion INT(2) NOT NULL,
  estatus_accion TINYINT(1) NOT NULL,
  PRIMARY KEY (PK_codigo_sancion, PK_codigo_accion),
  FOREIGN KEY (PK_codigo_accion) REFERENCES accion(PK_codigo_accion),
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Login`
-- -----------------------------------------------------
CREATE TABLE login (
  PK_codigo_login VARCHAR(5) NOT NULL,
  nombre_usuario VARCHAR(60) NOT NULL,
  username VARCHAR(60) NOT NULL,
  password VARCHAR(100) NOT NULL,
  estatus_usuario TINYINT(1) NOT NULL,
  PRIMARY KEY (PK_codigo_login)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Permisos`
-- -----------------------------------------------------
CREATE TABLE permisos (
  PK_codigo_permiso VARCHAR(5) NOT NULL,
  nombre_permiso VARCHAR(60) NOT NULL,
  estatus_permiso TINYINT(1) NOT NULL,
  PRIMARY KEY (PK_codigo_permiso)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Aplicaciones`
-- -----------------------------------------------------
CREATE TABLE aplicaciones (
  PK_codigo_aplicacion VARCHAR(5) NOT NULL,
  nombre_aplicacion VARCHAR(60) NOT NULL,
  estatus_aplicacion TINYINT(1) NOT NULL,
  PRIMARY KEY (PK_codigo_aplicacion)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`Autorizacion`
-- -----------------------------------------------------
CREATE TABLE autorizaciones (
  PK_codigo_autorizacion VARCHAR(5) NOT NULL,
  PK_codigo_permiso VARCHAR(5) NOT NULL,
  PK_codigo_aplicacion VARCHAR(5) NOT NULL,
  username VARCHAR(60) NOT NULL,
  PRIMARY KEY (
    PK_codigo_autorizacion,
    PK_codigo_permiso,
    PK_codigo_aplicacion
  ),
  FOREIGN KEY (PK_codigo_permiso) REFERENCES permisos(PK_codigo_permiso),
  FOREIGN KEY (PK_codigo_aplicacion) REFERENCES aplicaciones(PK_codigo_aplicacion)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

-- -----------------------------------------------------
-- Table `MasterPro`.`TRANSACCIONALES`
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Table `MasterPro`.`Partido`
-- -----------------------------------------------------
CREATE TABLE partido (
  PK_codigo_partido VARCHAR(5) NOT NULL,
  PK_codigo_torneo VARCHAR(5) NOT NULL,
  PK_codigo_jornada VARCHAR(5) NOT NULL,
  PK_codigo_arbitro VARCHAR(5) NOT NULL,
  PK_codigo_campo VARCHAR(5) NOT NULL,
  hora_ini_partido TIME NOT NULL,
  PK_codigo_equipo_local VARCHAR(60) NOT NULL,
  marcador_local INT(3) NOT NULL,
  PK_codigo_equipo VARCHAR(60) NOT NULL,
  marcador_visitante_visitante INT(3) NULL,
  PRIMARY KEY (PK_codigo_partido),
  FOREIGN KEY (PK_codigo_calendario) REFERENCES calendario(PK_codigo_calendario),
  FOREIGN KEY (PK_codigo_torneo) REFERENCES torneo(PK_codigo_torneo),
  FOREIGN KEY (PK_codigo_equipo_local) REFERENCES equipo(PK_codigo_equipo_local),
  FOREIGN KEY (marcador_visitante_visitante) REFERENCES equipo(marcador_visitante_visitante),
) ENGINE = InnoDB DEFAULT CHARSET = latin1;