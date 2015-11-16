-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-11-2015 a las 17:35:07
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `movil`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendaconferencia`
--

CREATE TABLE IF NOT EXISTS `agendaconferencia` (
  `ID_agendaConferencia` int(11) NOT NULL AUTO_INCREMENT,
  `id_conferencia` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`ID_agendaConferencia`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `agendaconferencia`
--

INSERT INTO `agendaconferencia` (`ID_agendaConferencia`, `id_conferencia`, `id_usuario`) VALUES
(3, 5, 3),
(4, 3, 4),
(5, 5, 4),
(6, 2, 3),
(7, 5, 3),
(9, 6, 5),
(10, 12, 5),
(11, 17, 5),
(13, 8, 3),
(14, 31, 3),
(15, 10, 4),
(16, 10, 5),
(17, 34, 5),
(18, 7, 5),
(19, 7, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendarvuelo`
--

CREATE TABLE IF NOT EXISTS `agendarvuelo` (
  `idAgendarVuelos` int(5) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(5) NOT NULL,
  `origen` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `destino` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `horaSalidaOrigen` time NOT NULL,
  `horaLlegadaDestino` time NOT NULL,
  `fechaSalidaOrigen` date NOT NULL,
  `fechaLlegadaDestino` date NOT NULL,
  PRIMARY KEY (`idAgendarVuelos`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `agendarvuelo`
--

INSERT INTO `agendarvuelo` (`idAgendarVuelos`, `idUsuario`, `origen`, `destino`, `horaSalidaOrigen`, `horaLlegadaDestino`, `fechaSalidaOrigen`, `fechaLlegadaDestino`) VALUES
(2, 4, 'Madrid', 'Chetumal', '14:01:00', '22:58:00', '2015-11-15', '2015-11-16'),
(3, 6, 'Mexico', 'Chetumal', '16:01:00', '14:01:00', '2015-11-11', '2015-11-10'),
(4, 6, 'Merida', 'Chetumal', '13:01:00', '13:59:00', '2015-11-11', '2015-11-15'),
(5, 3, 'Chetumal', 'Mexico', '02:30:00', '15:35:00', '2015-11-15', '2015-11-16'),
(6, 3, 'Cancun', 'Madrid', '14:50:00', '12:30:00', '2015-11-13', '2015-11-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areaconferencia`
--

CREATE TABLE IF NOT EXISTS `areaconferencia` (
  `IdArea` int(5) NOT NULL AUTO_INCREMENT,
  `NombreArea` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`IdArea`),
  KEY `NombreArea` (`NombreArea`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `areaconferencia`
--

INSERT INTO `areaconferencia` (`IdArea`, `NombreArea`) VALUES
(5, 'Biologia '),
(2, 'Ciencias de la Tierra'),
(1, 'Economico-Administrativo'),
(4, 'Eléctrica'),
(6, 'Magistral'),
(3, 'Sistemas y Computación ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conferencias`
--

CREATE TABLE IF NOT EXISTS `conferencias` (
  `IdConferencias` int(5) NOT NULL AUTO_INCREMENT,
  `IdArea` int(5) NOT NULL,
  `NombreConferencia` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NombrePonente` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_conferencia` date DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_fin` time DEFAULT NULL,
  `sala` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`IdConferencias`),
  KEY `area` (`IdArea`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=36 ;

--
-- Volcado de datos para la tabla `conferencias`
--

INSERT INTO `conferencias` (`IdConferencias`, `IdArea`, `NombreConferencia`, `NombrePonente`, `fecha_conferencia`, `hora_inicio`, `hora_fin`, `sala`) VALUES
(1, 1, 'Como ser feliz en mi trabajo ', 'Ing. Arturo Villegas Gonzales', '2015-10-28', '11:00:00', '12:30:00', '1'),
(2, 1, 'Planes de Negocios: Herramienta para la generalización de Negocios Competitivos', 'Dr. Luis Felipe Gomez Jacinto', '2015-10-28', '12:30:00', '14:00:00', '1'),
(3, 1, 'Negocios Sustentables: Estrategias Exitosas que se construyen de manera colectiva', 'Dra. María Griselda Lassaga ', '2015-10-28', '17:00:00', '18:30:00', '1'),
(4, 1, 'Creer, Crear y Croar (Breve Guía para Emprendedores)', 'L.A. Jaime Neftali Martínez Hernández ', '2015-10-29', '09:00:00', '11:00:00', '1'),
(5, 1, 'Redes Sociales y los Profesionistas', 'M. I. Miguel Chamlaty Toledo ', '2015-10-29', '11:30:00', '13:00:00', '1'),
(6, 1, 'Productividad y Competitividad  en la Relación del Capital Humano en las Organizaciones Inteligentes ', 'M. en R.H Iselda Muños  Banda', '2015-10-29', '17:00:00', '18:30:00', '1'),
(7, 1, 'Innovación y Creatividad para crecer en México', 'Mtra. Alejandra Maciel', '2015-10-30', '19:00:00', '20:30:00', '1'),
(8, 1, 'E-Lerning como una Competencia Efectiva Para emprender e Innovar', 'Ing. Paulo Cesar Ramírez', '2015-10-30', '11:30:00', '13:30:00', '1'),
(9, 6, 'Sueña Proyéctate y Hazlo Realidad', 'José Grimaldo', '2015-10-30', '17:00:00', '19:00:00', '6'),
(10, 3, 'Innovación de Gestión de Modelos Aplicadas a Empresas de Tecnologías ', 'Ing. José Luis Álvares Pérez ', '2015-10-28', '11:00:00', '12:30:00', '3'),
(11, 3, 'Programación Heterogénea ', 'Dr. Juan Manuel Álvarez', '2015-10-28', '12:30:00', '14:00:00', '3'),
(12, 3, 'Ciencias Basadas en Centro de datos para las Empresas', 'Ing. Roberto Martínez Saavedra ', '2015-10-28', '17:00:00', '18:30:00', '3'),
(13, 4, 'La Industria Eléctrica Mexicana: Reformas y Situación Actual', 'Rodrigo Amadeus Santa Rita ', '2015-10-28', '19:00:00', '20:30:00', '4'),
(14, 3, 'COMP: SuperEscalar Optimización y Asignación de los Recursos para Reducir el consumo energético para el desarrollo de aplicaciones científicas ', 'Dr. Freddy Juarez Pérez ', '2015-10-29', '09:00:00', '11:00:00', '3'),
(15, 4, 'El mercado de Electricidad en México', 'Dr. José Horacio Tobar Hernández ', '2015-10-29', '11:30:00', '13:00:00', '4'),
(16, 3, 'Creando tu propia marca: Rumbo al éxito', 'M. I. Pablo Ayala Hernández ', '2015-10-29', '17:00:00', '18:30:00', '3'),
(17, 4, 'Filtros adaptativos para estimulación de sincrofasores ', 'José Antonio de la O Serna ', '2015-10-29', '19:00:00', '20:30:00', '4'),
(18, 4, 'Nanomaterias para sistemas de conversión electroquimicas de energía ', 'Dr. Diana Morales ', '2015-10-30', '09:00:00', '10:30:00', '4'),
(19, 3, 'Programación Segura ', 'Dr. Mario Farias Elinos ', '2015-10-30', '10:30:00', '12:00:00', '3'),
(20, 4, 'Desarrollo de electrocatalizadores eficientes para su aplicación en fotosíntesis Artificial  ', 'Dr. Juan Carlos Ballesteros ', '2015-10-30', '12:30:00', '14:30:00', '4'),
(21, 5, 'Arrecifes de Veracruz  y su relación con los arrecifes de Caribe ', 'Dr. Horacio Pérez España', '2015-10-28', '11:00:00', '12:30:00', '5'),
(22, 5, 'Riqueza y biodiversidad de la familia opiliocaridae en México', 'Dr. María Magdalena Vázquez ', '2015-10-28', '12:30:00', '13:00:00', '5'),
(23, 5, 'Colección Nacional de Acaros: una alternativa para estudios de la diversidad  de Acaros en México', 'M. en C. Griselda Montiel Parra ', '2015-10-28', '17:00:00', '18:30:00', '5'),
(24, 5, 'Consecuencias Ecológicas de la sobrepesca del pepino de mar ', 'Dr. Luis Eduardo Calderon Aguilera ', '2015-10-28', '19:00:00', '20:30:00', '5'),
(25, 5, 'Uso del análisis de productividad como método alternativo ', 'Dr. Emmanuel Furing Estrada ', '2015-10-29', '09:00:00', '11:00:00', '5'),
(26, 5, 'Uso de los estractos de las algas marinas como Bioestimulantes ', 'Dra. Rosalba RMireya Hernández ', '2015-10-29', '11:30:00', '13:00:00', '5'),
(27, 5, 'La Biotecnologia Vegetal como una estrategia para combatir enfermedades respiratorias ', 'Dr. Angel Gabriel Alpuche ', '2015-10-29', '19:00:00', '20:30:00', '5'),
(28, 2, 'Avance de modelado computacional en inundaciones', 'Dr. Juan Carlos Ballesteros ', '2015-10-30', '12:30:00', '14:30:00', '4'),
(29, 2, 'Una aproximación de los componentes del paisaje urbano', 'Dr. Horacio Pérez España', '2015-10-28', '11:00:00', '12:30:00', '2'),
(30, 2, 'Analisis del ciclo de vida de los edificios', 'Dr. María Magdalena Vázquez ', '2015-10-28', '12:30:00', '13:00:00', '2'),
(31, 2, 'Arquitectura de altura', 'M. en C. Griselda Montiel Parra ', '2015-10-28', '17:00:00', '18:30:00', '2'),
(32, 2, 'Riesgos climaticos y al abastecimiento de agua de Monterrey ', 'Dr. Luis Eduardo Calderon Aguilera ', '2015-10-28', '19:00:00', '20:30:00', '2'),
(33, 2, 'Las aguas subterraneas, su uso y su protección', 'Dr. Emmanuel Furing Estrada ', '2015-10-29', '09:00:00', '11:00:00', '2'),
(34, 2, 'Proyectos de Proceso ', 'Dra. Rosalba RMireya Hernández ', '2015-10-29', '11:30:00', '13:00:00', '2'),
(35, 2, 'Herramientas del futuro para paisajes del futuro ', 'Dr. Angel Gabriel Alpuche ', '2015-10-29', '19:00:00', '20:30:00', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE IF NOT EXISTS `tipousuario` (
  `idTipoUsuario` int(5) NOT NULL AUTO_INCREMENT,
  `TipoUsuario` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`idTipoUsuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`idTipoUsuario`, `TipoUsuario`) VALUES
(1, 'Ponente'),
(2, 'Asistente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `IdUsuario` int(5) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `correoElectronico` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `idTipoUsuario` int(5) NOT NULL,
  `ciudad` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `pais` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `twitter` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `instagram` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`IdUsuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`IdUsuario`, `Username`, `correoElectronico`, `password`, `idTipoUsuario`, `ciudad`, `pais`, `telefono`, `facebook`, `twitter`, `instagram`) VALUES
(3, 'jose', 'enrique_92@hotmail.com', '123', 1, 'chetumal', 'mexico', '9831331902', 'andres', 'andres', 'andres'),
(4, 'yari', 'yaritza_92@hotmail.com', '123', 2, 'chetumal ', 'mexico', '9831112555', 'yari', 'yari', 'yari'),
(5, 'Andres', 'andres_93x1@hotmail.com', '123', 1, 'y', 'y', '9831331902', 'y', 'y', '2'),
(6, 'dd', 'andres_93x1@hotmail.com', '123', 1, '3', '3', '3', 'e', 'e', 'e'),
(7, 'ii', 'andres1dt@hotmail.com', '123', 1, '1', '1', '4', '', '', ''),
(8, 'ww', 'andresin@hotmail.com', '123', 2, 'w', 'w', '222', 'w', '', ''),
(9, 'yaritza', 'yarit_@hotmail.com', '123', 2, 'w', 'w', '3', 'w', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
