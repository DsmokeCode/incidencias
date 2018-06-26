-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2018 a las 13:38:51
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
-- Base de datos: `incidencias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dashboard`
--

CREATE TABLE `dashboard` (
  `id_dashboard` int(11) NOT NULL,
  `id_incidencia` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_atencion` date NOT NULL,
  `observacion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dashboard`
--

INSERT INTO `dashboard` (`id_dashboard`, `id_incidencia`, `id_usuario`, `fecha_atencion`, `observacion`) VALUES
(1, 1, 1, '2018-05-13', ''),
(2, 2, 2, '2018-06-24', '1'),
(3, 3, 3, '2018-06-14', '1'),
(4, 4, 4, '2018-06-17', '1'),
(5, 5, 5, '2018-06-26', '1'),
(6, 6, 6, '2018-05-30', '1'),
(7, 7, 7, '2018-05-06', '1'),
(8, 8, 8, '2018-06-07', '1'),
(9, 9, 9, '2018-06-19', '1'),
(10, 10, 10, '2018-06-18', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_dashboard`
--

CREATE TABLE `historial_dashboard` (
  `id_historial` int(11) NOT NULL,
  `id_dashboard` int(11) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `fecha_reg` date NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `historial_dashboard`
--

INSERT INTO `historial_dashboard` (`id_historial`, `id_dashboard`, `descripcion`, `fecha_reg`, `estado`) VALUES
(1, 1, 'se realizo con exito se probaron las funcionalidades de la red', '2018-05-13', 3),
(2, 2, 'se realizo con exito se limpiaron del polvo aderido en las placas', '2018-06-14', 3),
(3, 3, 'se realizo con exito los respaldos de backups del sistema', '2018-06-14', 2),
(4, 4, 'quedo pendiente por tema de cableado sin especificaciones', '2018-06-17', 2),
(5, 5, 'se realizo con exito pendiente la inhabilitacion de los puertos', '2018-06-26', 3),
(6, 6, 'se realizo con exito las actualizaciones de los antivirus', '2018-06-14', 3),
(7, 7, 'se realizo con exito el mantenimiento de la impresora', '2018-05-06', 3),
(8, 8, 'se realizo con exito la revision de los conectores de red', '2018-06-07', 3),
(9, 9, 'se realizo con exito la revision de los equipos de coputo', '2018-05-19', 3),
(10, 10, 'se realizo con exito ', '2018-06-18', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencia`
--

CREATE TABLE `incidencia` (
  `id_incidencia` int(11) NOT NULL,
  `id_tipo_incidencia` int(11) NOT NULL,
  `severidad` varchar(100) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `fecha_reg` date NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `incidencia`
--

INSERT INTO `incidencia` (`id_incidencia`, `id_tipo_incidencia`, `severidad`, `titulo`, `descripcion`, `fecha_reg`, `estado`) VALUES
(1, 1, 'media', 'revisar cableado', 'se presentaron informes de que existen conflictos de conectividad dentro de la red', '2018-05-13', 3),
(2, 2, 'media', 'limpiar pc', 'Limpiar las pc, presentan mucho polvo los equipos del area de analisis y diseño', '2018-06-24', 3),
(3, 3, 'baja', 'realizar las copias de respaldo', 'realizar los backups del sistema', '2018-06-14', 3),
(4, 4, 'alta', 'ordenar cableado', 'se encontraron cables de red desconectados', '2018-06-17', 2),
(5, 5, 'alta', 'proteccion de puertos', 'se encontraron puertos funcionando se deben de desabilitar los puertos de informacion por piliticas ', '2018-06-26', 2),
(6, 6, 'baja', 'actualizar antivirus', 'se adquirieron nuevos antivirus, se deben de instalarlos', '2018-05-30', 3),
(7, 7, 'baja', 'impresora', 'cambiar cartichos de tinta y agregar mas hojas', '2018-05-06', 3),
(8, 8, 'baja', 'revisar conexiones de redes', 'los cableados no tiene orden y existen cables sin coneccion', '2018-06-07', 3),
(9, 9, 'media', 'revisar equipos de computo', 'revisar equipos de trabajo ', '2018-05-19', 3),
(10, 10, 'media', 'revisar teclados de area de computo', 'se presentaron problemas con el teclado', '2018-06-18', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_incidencia`
--

CREATE TABLE `tipo_incidencia` (
  `id_tipo_incidencia` int(11) NOT NULL,
  `descripcion` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_incidencia`
--

INSERT INTO `tipo_incidencia` (`id_tipo_incidencia`, `descripcion`) VALUES
(1, 'Soporte redes'),
(2, 'mantenimiento hardware'),
(3, 'mantenimiento software'),
(4, 'seguridad de redes'),
(5, 'seguridad de hardware'),
(6, 'actualizacion de antivirus'),
(7, 'impresoras'),
(8, 'conexiones de redes'),
(9, 'mantenimiento correctivo'),
(10, 'accesorios de computo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_persona`
--

CREATE TABLE `tipo_persona` (
  `id_tipo_persona` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_persona`
--

INSERT INTO `tipo_persona` (`id_tipo_persona`, `descripcion`) VALUES
(1, 'Administrador'),
(2, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `ape_p` varchar(100) NOT NULL,
  `ape_m` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `id_tipo_persona` int(11) NOT NULL,
  `dni` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `email`, `nombres`, `ape_p`, `ape_m`, `pass`, `id_tipo_persona`, `dni`) VALUES
(1, 'cabezasgac@gmail.com', 'Josseph', 'Cabezas', 'Porras', '123456', 1, '46950267'),
(2, 'rkcabezas@gmail.com', 'Reyner', 'Cabezas', 'Porras', '654321', 1, '72618634'),
(3, 'rcalderona@gmail.com', 'Arnold', 'Ramos', 'Calderon', '987654', 1, '56912384'),
(4, 'cesquenc@gmail.com', 'Katherine', 'Esquen', 'Chung', '123456', 1, '42518637'),
(5, 'montenegrop@gmail.com', 'Brayand', 'Montenegro', 'Pozo', '147852', 2, '43157284'),
(6, 'rmusayon@gmail.com', 'Harumy', 'Ramirez', 'Musayon', '123456', 1, '42183697'),
(7, 'crisloayza@gmail.com', 'Cristopher', 'Loayza', 'Palomino', '123456', 1, '46582145'),
(8, 'dportocarrero@gmail.com', 'Dreizer', 'Prtocarrero', 'Ramirez', '987654', 2, '46271546'),
(9, 'egarrido@gmail.com', 'Eder', 'Garrido', 'Mestanza', '123456', 1, '34560267'),
(10, 'penadelrosario@gmail.com', 'Pierina', 'Pena', 'Del Rosario', '987456', 2, '45126872');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dashboard`
--
ALTER TABLE `dashboard`
  ADD PRIMARY KEY (`id_dashboard`),
  ADD KEY `id_incidencia` (`id_incidencia`,`id_usuario`);

--
-- Indices de la tabla `historial_dashboard`
--
ALTER TABLE `historial_dashboard`
  ADD PRIMARY KEY (`id_historial`),
  ADD KEY `id_dashboard` (`id_dashboard`);

--
-- Indices de la tabla `incidencia`
--
ALTER TABLE `incidencia`
  ADD PRIMARY KEY (`id_incidencia`),
  ADD KEY `id_tipo_incidencia` (`id_tipo_incidencia`);

--
-- Indices de la tabla `tipo_incidencia`
--
ALTER TABLE `tipo_incidencia`
  ADD PRIMARY KEY (`id_tipo_incidencia`);

--
-- Indices de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  ADD PRIMARY KEY (`id_tipo_persona`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_tipo_persona` (`id_tipo_persona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dashboard`
--
ALTER TABLE `dashboard`
  MODIFY `id_dashboard` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `historial_dashboard`
--
ALTER TABLE `historial_dashboard`
  MODIFY `id_historial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `incidencia`
--
ALTER TABLE `incidencia`
  MODIFY `id_incidencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tipo_incidencia`
--
ALTER TABLE `tipo_incidencia`
  MODIFY `id_tipo_incidencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tipo_persona`
--
ALTER TABLE `tipo_persona`
  MODIFY `id_tipo_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `dashboard`
--
ALTER TABLE `dashboard`
  ADD CONSTRAINT `dashboard_ibfk_1` FOREIGN KEY (`id_incidencia`) REFERENCES `incidencia` (`id_incidencia`);

--
-- Filtros para la tabla `historial_dashboard`
--
ALTER TABLE `historial_dashboard`
  ADD CONSTRAINT `historial_dashboard_ibfk_1` FOREIGN KEY (`id_dashboard`) REFERENCES `dashboard` (`id_dashboard`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
