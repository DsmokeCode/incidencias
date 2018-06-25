-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2018 a las 10:43:39
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `citasclinicor`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_area`
--

CREATE TABLE `tb_area` (
  `cod_area` int(8) NOT NULL,
  `descri` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_area`
--

INSERT INTO `tb_area` (`cod_area`, `descri`) VALUES
(1, '101'),
(2, '102'),
(3, '103'),
(4, '104'),
(5, '105'),
(6, '106'),
(7, '201'),
(8, '202'),
(9, '203'),
(10, '204'),
(11, '205'),
(12, '206'),
(13, '301'),
(14, '302'),
(15, '303'),
(16, '304'),
(17, '305'),
(18, '306'),
(19, '401'),
(20, '402'),
(21, '403'),
(22, '404'),
(23, '405'),
(24, '406');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_cita`
--

CREATE TABLE `tb_cita` (
  `cod_cita` int(8) NOT NULL,
  `cod_pac` int(8) NOT NULL,
  `cod_doc` int(8) NOT NULL,
  `cod_espe` int(8) NOT NULL,
  `cod_area` int(8) NOT NULL,
  `cod_hor` int(8) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_cita`
--

INSERT INTO `tb_cita` (`cod_cita`, `cod_pac`, `cod_doc`, `cod_espe`, `cod_area`, `cod_hor`, `fecha`) VALUES
(1, 1, 1, 1, 7, 1, '2018-06-29'),
(2, 1, 1, 7, 19, 1, '2018-06-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detalle_area`
--

CREATE TABLE `tb_detalle_area` (
  `cod_det_area` int(8) NOT NULL,
  `cod_doc` int(8) NOT NULL,
  `cod_area` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_detalle_area`
--

INSERT INTO `tb_detalle_area` (`cod_det_area`, `cod_doc`, `cod_area`) VALUES
(1, 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detalle_especialidad`
--

CREATE TABLE `tb_detalle_especialidad` (
  `cod_det_espe` int(8) NOT NULL,
  `cod_doc` int(8) NOT NULL,
  `cod_espe` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_detalle_especialidad`
--

INSERT INTO `tb_detalle_especialidad` (`cod_det_espe`, `cod_doc`, `cod_espe`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detalle_horario`
--

CREATE TABLE `tb_detalle_horario` (
  `cod_det_hor` int(8) NOT NULL,
  `cod_doc` int(8) NOT NULL,
  `cod_hor` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_detalle_horario`
--

INSERT INTO `tb_detalle_horario` (`cod_det_hor`, `cod_doc`, `cod_hor`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_dia`
--

CREATE TABLE `tb_dia` (
  `cod_dia` int(8) NOT NULL,
  `dia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_dia`
--

INSERT INTO `tb_dia` (`cod_dia`, `dia`) VALUES
(1, 'LUNES'),
(2, 'MARTES'),
(3, 'MIERCOLES'),
(4, 'JUEVES'),
(5, 'VIERNES'),
(6, 'SABADO'),
(7, 'DOMINGO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_doctor`
--

CREATE TABLE `tb_doctor` (
  `cod_doc` int(8) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `ape_p` varchar(100) NOT NULL,
  `ape_m` varchar(100) NOT NULL,
  `fec_nac` date NOT NULL,
  `telefono` int(10) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contra` varchar(100) NOT NULL,
  `docum` varchar(100) NOT NULL,
  `cod_sex` int(1) NOT NULL,
  `cod_docum` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_doctor`
--

INSERT INTO `tb_doctor` (`cod_doc`, `nom`, `ape_p`, `ape_m`, `fec_nac`, `telefono`, `correo`, `contra`, `docum`, `cod_sex`, `cod_docum`) VALUES
(1, 'max', 'martines', 'oliva', '1994-02-28', 987654321, 'max1994@gmail.com', '123456', '12345678', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_docum`
--

CREATE TABLE `tb_docum` (
  `cod_docum` int(8) NOT NULL,
  `descri` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_docum`
--

INSERT INTO `tb_docum` (`cod_docum`, `descri`) VALUES
(1, 'DNI'),
(2, 'CARNET EXTRANJERÍA'),
(3, 'PASAPORTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_especialidad`
--

CREATE TABLE `tb_especialidad` (
  `cod_espe` int(8) NOT NULL,
  `descri` varchar(100) NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_especialidad`
--

INSERT INTO `tb_especialidad` (`cod_espe`, `descri`, `estado`) VALUES
(1, 'CARDIOLOGIA', 1),
(2, 'CARDIOLOGIA CLINICA HEMODINAMI', 1),
(3, 'CIRUG.CABEZA-CUELLO MAXIMO FAC', 1),
(4, 'CIRUGIA CARDIOVASCULAR', 1),
(5, 'CIRUGIA DE MANO', 1),
(6, 'CIRUGIA GENERAL', 1),
(7, 'CIRUGIA ONCOLOGICA', 1),
(8, 'CIRUGIA PEDIATRICA', 1),
(9, 'CIRUGIA TORACICA Y CARDIOVASCULAR', 1),
(10, 'CIRUG.PLASTICA ESTET.QUEMADOS', 1),
(11, 'DERMATOLOGIA', 1),
(12, 'ENDOCRINOLOGIA', 1),
(13, 'GASTROENTEROLOGIA', 1),
(14, 'GINECO-OBSTETRICIA', 1),
(15, 'HEMATOLOGIA CLINICA', 1),
(16, 'INFECTOLOGIA', 1),
(17, 'MASTOLOGIA', 1),
(18, 'MEDICINA FISICA-REHABILITACION', 1),
(19, 'MEDICINA INTERNA', 1),
(20, 'NEUMOLOGIA', 1),
(21, 'NEUROCIRUGIA', 1),
(22, 'NEUROLOGIA', 1),
(23, 'NUTRICION HUMANA', 1),
(24, 'NUTRICIONISTA', 1),
(25, 'OFTALMOLOGIA', 1),
(26, 'ONCOLOGIA MEDICA', 1),
(27, 'ORTODONCIA Y ORTOPEDIA MAXILAR', 1),
(28, 'OTORRINO LARINGOLOGIA', 1),
(29, 'PEDIATRIA Y NEONATOLOGIA', 1),
(30, 'PSICOLOGIA', 1),
(31, 'PSIQUIATRIA', 1),
(32, 'REHABILITACION ORAL Y PROT.DEN', 1),
(33, 'REUMATOLOGIA', 1),
(34, 'TERAPIA DEL LENGUAJE Y APRENDIZAJE', 1),
(35, 'TRAUMATOLOGIA Y CIR.ARTROSCOP.', 1),
(36, 'UROLOGIA', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_hora`
--

CREATE TABLE `tb_hora` (
  `cod_hora` int(8) NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_hora`
--

INSERT INTO `tb_hora` (`cod_hora`, `hora`) VALUES
(1, '07:00:00'),
(2, '07:30:00'),
(3, '08:00:00'),
(4, '08:30:00'),
(5, '09:00:00'),
(6, '09:30:00'),
(7, '10:00:00'),
(8, '10:30:00'),
(9, '11:00:00'),
(10, '11:30:00'),
(11, '12:00:00'),
(12, '12:30:00'),
(13, '13:00:00'),
(14, '13:30:00'),
(15, '14:00:00'),
(16, '14:30:00'),
(17, '15:00:00'),
(18, '15:30:00'),
(19, '16:00:00'),
(20, '16:30:00'),
(21, '17:00:00'),
(22, '17:30:00'),
(23, '18:00:00'),
(24, '18:30:00'),
(25, '19:00:00'),
(26, '19:30:00'),
(27, '20:00:00'),
(28, '20:30:00'),
(29, '21:00:00'),
(30, '21:30:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_horario`
--

CREATE TABLE `tb_horario` (
  `cod_hor` int(8) NOT NULL,
  `cod_hora` int(8) NOT NULL,
  `cod_dia` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_horario`
--

INSERT INTO `tb_horario` (`cod_hor`, `cod_hora`, `cod_dia`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 22, 1),
(23, 23, 1),
(24, 24, 1),
(25, 25, 1),
(26, 26, 1),
(27, 27, 1),
(28, 28, 1),
(29, 29, 1),
(30, 30, 1),
(31, 1, 2),
(32, 2, 2),
(33, 3, 2),
(34, 4, 2),
(35, 5, 2),
(36, 6, 2),
(37, 7, 2),
(38, 8, 2),
(39, 9, 2),
(40, 10, 2),
(41, 11, 2),
(42, 12, 2),
(43, 13, 2),
(44, 14, 2),
(45, 15, 2),
(46, 16, 2),
(47, 17, 2),
(48, 18, 2),
(49, 19, 2),
(50, 20, 2),
(51, 21, 2),
(52, 22, 2),
(53, 23, 2),
(54, 24, 2),
(55, 25, 2),
(56, 26, 2),
(57, 27, 2),
(58, 28, 2),
(59, 29, 2),
(60, 30, 2),
(61, 1, 3),
(62, 2, 3),
(63, 3, 3),
(64, 4, 3),
(65, 5, 3),
(66, 6, 3),
(67, 7, 3),
(68, 8, 3),
(69, 9, 3),
(70, 10, 3),
(71, 11, 3),
(72, 12, 3),
(73, 13, 3),
(74, 14, 3),
(75, 15, 3),
(76, 16, 3),
(77, 17, 3),
(78, 18, 3),
(79, 19, 3),
(80, 20, 3),
(81, 21, 3),
(82, 22, 3),
(83, 23, 3),
(84, 24, 3),
(85, 25, 3),
(86, 26, 3),
(87, 27, 3),
(88, 28, 3),
(89, 29, 3),
(90, 30, 3),
(91, 1, 4),
(92, 2, 4),
(93, 3, 4),
(94, 4, 4),
(95, 5, 4),
(96, 6, 4),
(97, 7, 4),
(98, 8, 4),
(99, 9, 4),
(100, 10, 4),
(101, 11, 4),
(102, 12, 4),
(103, 13, 4),
(104, 14, 4),
(105, 15, 4),
(106, 16, 4),
(107, 17, 4),
(108, 18, 4),
(109, 19, 4),
(110, 20, 4),
(111, 21, 4),
(112, 22, 4),
(113, 23, 4),
(114, 24, 4),
(115, 25, 4),
(116, 26, 4),
(117, 27, 4),
(118, 28, 4),
(119, 29, 4),
(120, 30, 4),
(121, 1, 5),
(122, 2, 5),
(123, 3, 5),
(124, 4, 5),
(125, 5, 5),
(126, 6, 5),
(127, 7, 5),
(128, 8, 5),
(129, 9, 5),
(130, 10, 5),
(131, 11, 5),
(132, 12, 5),
(133, 13, 5),
(134, 14, 5),
(135, 15, 5),
(136, 16, 5),
(137, 17, 5),
(138, 18, 5),
(139, 19, 5),
(140, 20, 5),
(141, 21, 5),
(142, 22, 5),
(143, 23, 5),
(144, 24, 5),
(145, 25, 5),
(146, 26, 5),
(147, 27, 5),
(148, 28, 5),
(149, 29, 5),
(150, 30, 5),
(151, 1, 6),
(152, 2, 6),
(153, 3, 6),
(154, 4, 6),
(155, 5, 6),
(156, 6, 6),
(157, 7, 6),
(158, 8, 6),
(159, 9, 6),
(160, 10, 6),
(161, 11, 6),
(162, 12, 6),
(163, 13, 6),
(164, 14, 6),
(165, 15, 6),
(166, 16, 6),
(167, 17, 6),
(168, 18, 6),
(169, 19, 6),
(170, 20, 6),
(171, 21, 6),
(172, 22, 6),
(173, 23, 6),
(174, 24, 6),
(175, 25, 6),
(176, 26, 6),
(177, 27, 6),
(178, 28, 6),
(179, 29, 6),
(180, 30, 6),
(181, 1, 7),
(182, 2, 7),
(183, 3, 7),
(184, 4, 7),
(185, 5, 7),
(186, 6, 7),
(187, 7, 7),
(188, 8, 7),
(189, 9, 7),
(190, 10, 7),
(191, 11, 7),
(192, 12, 7),
(193, 13, 7),
(194, 14, 7),
(195, 15, 7),
(196, 16, 7),
(197, 17, 7),
(198, 18, 7),
(199, 19, 7),
(200, 20, 7),
(201, 21, 7),
(202, 22, 7),
(203, 23, 7),
(204, 24, 7),
(205, 25, 7),
(206, 26, 7),
(207, 27, 7),
(208, 28, 7),
(209, 29, 7),
(210, 30, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_paciente`
--

CREATE TABLE `tb_paciente` (
  `cod_pac` int(8) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `ape_p` varchar(100) NOT NULL,
  `ape_m` varchar(100) NOT NULL,
  `fec_nac` date NOT NULL,
  `telefono` int(10) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contra` varchar(100) NOT NULL,
  `docum` varchar(100) NOT NULL,
  `cod_sex` int(1) NOT NULL,
  `cod_docum` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_paciente`
--

INSERT INTO `tb_paciente` (`cod_pac`, `nom`, `ape_p`, `ape_m`, `fec_nac`, `telefono`, `correo`, `contra`, `docum`, `cod_sex`, `cod_docum`) VALUES
(1, 'arnold', 'ramos', 'calderon', '1993-10-16', 987428011, 'aramosc.16@gmail.com', '123456', '70208532', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_sexo`
--

CREATE TABLE `tb_sexo` (
  `cod_sex` int(1) NOT NULL,
  `descri` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_sexo`
--

INSERT INTO `tb_sexo` (`cod_sex`, `descri`) VALUES
(0, 'Masculino'),
(1, 'Femenino');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_area`
--
ALTER TABLE `tb_area`
  ADD PRIMARY KEY (`cod_area`);

--
-- Indices de la tabla `tb_cita`
--
ALTER TABLE `tb_cita`
  ADD PRIMARY KEY (`cod_cita`),
  ADD KEY `cod_pac` (`cod_pac`),
  ADD KEY `cod_doc` (`cod_doc`,`cod_espe`,`cod_area`,`cod_hor`),
  ADD KEY `cod_espe` (`cod_espe`),
  ADD KEY `cod_area` (`cod_area`),
  ADD KEY `cod_hor` (`cod_hor`);

--
-- Indices de la tabla `tb_detalle_area`
--
ALTER TABLE `tb_detalle_area`
  ADD PRIMARY KEY (`cod_det_area`),
  ADD KEY `cod_area` (`cod_area`),
  ADD KEY `cod_doc` (`cod_doc`);

--
-- Indices de la tabla `tb_detalle_especialidad`
--
ALTER TABLE `tb_detalle_especialidad`
  ADD PRIMARY KEY (`cod_det_espe`),
  ADD KEY `cod_doc` (`cod_doc`),
  ADD KEY `cod_espe` (`cod_espe`);

--
-- Indices de la tabla `tb_detalle_horario`
--
ALTER TABLE `tb_detalle_horario`
  ADD PRIMARY KEY (`cod_det_hor`),
  ADD KEY `cod_doc` (`cod_doc`),
  ADD KEY `cod_hor` (`cod_hor`);

--
-- Indices de la tabla `tb_dia`
--
ALTER TABLE `tb_dia`
  ADD PRIMARY KEY (`cod_dia`);

--
-- Indices de la tabla `tb_doctor`
--
ALTER TABLE `tb_doctor`
  ADD PRIMARY KEY (`cod_doc`),
  ADD KEY `cod_sex` (`cod_sex`),
  ADD KEY `cod_docum` (`cod_docum`);

--
-- Indices de la tabla `tb_docum`
--
ALTER TABLE `tb_docum`
  ADD PRIMARY KEY (`cod_docum`);

--
-- Indices de la tabla `tb_especialidad`
--
ALTER TABLE `tb_especialidad`
  ADD PRIMARY KEY (`cod_espe`);

--
-- Indices de la tabla `tb_hora`
--
ALTER TABLE `tb_hora`
  ADD PRIMARY KEY (`cod_hora`);

--
-- Indices de la tabla `tb_horario`
--
ALTER TABLE `tb_horario`
  ADD PRIMARY KEY (`cod_hor`),
  ADD KEY `cod_hora` (`cod_hora`),
  ADD KEY `cod_dia` (`cod_dia`);

--
-- Indices de la tabla `tb_paciente`
--
ALTER TABLE `tb_paciente`
  ADD PRIMARY KEY (`cod_pac`),
  ADD KEY `cod_sex` (`cod_sex`),
  ADD KEY `cod_docum` (`cod_docum`);

--
-- Indices de la tabla `tb_sexo`
--
ALTER TABLE `tb_sexo`
  ADD PRIMARY KEY (`cod_sex`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_area`
--
ALTER TABLE `tb_area`
  MODIFY `cod_area` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `tb_cita`
--
ALTER TABLE `tb_cita`
  MODIFY `cod_cita` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tb_detalle_area`
--
ALTER TABLE `tb_detalle_area`
  MODIFY `cod_det_area` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tb_detalle_especialidad`
--
ALTER TABLE `tb_detalle_especialidad`
  MODIFY `cod_det_espe` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tb_detalle_horario`
--
ALTER TABLE `tb_detalle_horario`
  MODIFY `cod_det_hor` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tb_dia`
--
ALTER TABLE `tb_dia`
  MODIFY `cod_dia` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tb_doctor`
--
ALTER TABLE `tb_doctor`
  MODIFY `cod_doc` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tb_especialidad`
--
ALTER TABLE `tb_especialidad`
  MODIFY `cod_espe` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `tb_hora`
--
ALTER TABLE `tb_hora`
  MODIFY `cod_hora` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `tb_horario`
--
ALTER TABLE `tb_horario`
  MODIFY `cod_hor` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT de la tabla `tb_paciente`
--
ALTER TABLE `tb_paciente`
  MODIFY `cod_pac` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_cita`
--
ALTER TABLE `tb_cita`
  ADD CONSTRAINT `tb_cita_ibfk_1` FOREIGN KEY (`cod_pac`) REFERENCES `tb_paciente` (`cod_pac`),
  ADD CONSTRAINT `tb_cita_ibfk_2` FOREIGN KEY (`cod_doc`) REFERENCES `tb_doctor` (`cod_doc`),
  ADD CONSTRAINT `tb_cita_ibfk_3` FOREIGN KEY (`cod_espe`) REFERENCES `tb_especialidad` (`cod_espe`),
  ADD CONSTRAINT `tb_cita_ibfk_4` FOREIGN KEY (`cod_area`) REFERENCES `tb_area` (`cod_area`),
  ADD CONSTRAINT `tb_cita_ibfk_5` FOREIGN KEY (`cod_hor`) REFERENCES `tb_horario` (`cod_hor`);

--
-- Filtros para la tabla `tb_detalle_area`
--
ALTER TABLE `tb_detalle_area`
  ADD CONSTRAINT `tb_detalle_area_ibfk_1` FOREIGN KEY (`cod_area`) REFERENCES `tb_area` (`cod_area`),
  ADD CONSTRAINT `tb_detalle_area_ibfk_2` FOREIGN KEY (`cod_doc`) REFERENCES `tb_doctor` (`cod_doc`);

--
-- Filtros para la tabla `tb_detalle_especialidad`
--
ALTER TABLE `tb_detalle_especialidad`
  ADD CONSTRAINT `tb_detalle_especialidad_ibfk_1` FOREIGN KEY (`cod_doc`) REFERENCES `tb_doctor` (`cod_doc`),
  ADD CONSTRAINT `tb_detalle_especialidad_ibfk_2` FOREIGN KEY (`cod_espe`) REFERENCES `tb_especialidad` (`cod_espe`);

--
-- Filtros para la tabla `tb_detalle_horario`
--
ALTER TABLE `tb_detalle_horario`
  ADD CONSTRAINT `tb_detalle_horario_ibfk_1` FOREIGN KEY (`cod_doc`) REFERENCES `tb_doctor` (`cod_doc`),
  ADD CONSTRAINT `tb_detalle_horario_ibfk_2` FOREIGN KEY (`cod_hor`) REFERENCES `tb_horario` (`cod_hor`);

--
-- Filtros para la tabla `tb_doctor`
--
ALTER TABLE `tb_doctor`
  ADD CONSTRAINT `tb_doctor_ibfk_1` FOREIGN KEY (`cod_sex`) REFERENCES `tb_sexo` (`cod_sex`),
  ADD CONSTRAINT `tb_doctor_ibfk_2` FOREIGN KEY (`cod_docum`) REFERENCES `tb_docum` (`cod_docum`);

--
-- Filtros para la tabla `tb_horario`
--
ALTER TABLE `tb_horario`
  ADD CONSTRAINT `tb_horario_ibfk_1` FOREIGN KEY (`cod_dia`) REFERENCES `tb_dia` (`cod_dia`),
  ADD CONSTRAINT `tb_horario_ibfk_2` FOREIGN KEY (`cod_hora`) REFERENCES `tb_hora` (`cod_hora`);

--
-- Filtros para la tabla `tb_paciente`
--
ALTER TABLE `tb_paciente`
  ADD CONSTRAINT `tb_paciente_ibfk_1` FOREIGN KEY (`cod_sex`) REFERENCES `tb_sexo` (`cod_sex`),
  ADD CONSTRAINT `tb_paciente_ibfk_2` FOREIGN KEY (`cod_docum`) REFERENCES `tb_docum` (`cod_docum`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
