-- Base de datos Colegio
CREATE DATABASE IF NOT EXISTS `bdcolegio`; 
USE `bdcolegio`;


-- talumno
CREATE TABLE IF NOT EXISTS `talumno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL DEFAULT '0',
  `Apellido` varchar(50) NOT NULL DEFAULT '0',
  `Sexo` tinyint(4) NOT NULL DEFAULT '0',
  `FechaNacimiento` varchar(20) DEFAULT NULL,
  `FechaRegistro` varchar(20) DEFAULT NULL,
  `Correo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- tcurso
CREATE TABLE IF NOT EXISTS `tcurso` (
  `id` int(11) NOT NULL AUTO_INCREMENT ,
  `Nombre` varchar(500) COLLATE utf8_spanish_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- talumnocurso
CREATE TABLE IF NOT EXISTS `talumnocurso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Curso_id` int(11) NOT NULL,
  `Alumno_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY(Curso_id) REFERENCES talumno(id), 
  FOREIGN KEY(Alumno_id) REFERENCES tcurso(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


