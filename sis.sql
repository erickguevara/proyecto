-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-09-2022 a las 01:50:05
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sis`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `ProcedimientoInsertar` (IN `nom_persona` VARCHAR(50), IN `ape_pate_pers` VARCHAR(50), IN `ape_mate_pers` VARCHAR(50), IN `nid_grado` INT(11), IN `fecha_naci` DATE, IN `foto_ruta` VARCHAR(250), IN `dni` VARCHAR(20), IN `tipo` INT(11))   BEGIN
DECLARE id_persona,precio int(11);
insert into persona(nom_persona,ape_pate_pers,ape_mate_pers,nid_grado,fecha_naci,foto_ruta,dni,tipo,user,contrasena) values(nom_persona,ape_pate_pers,ape_mate_pers,nid_grado,fecha_naci,foto_ruta,dni,tipo,dni,dni);
select * from persona as p inner join grado as g on p.nid_grado=g.nid_grado order by nid_persona DESC LIMIT 1;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id_clases` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `clase` varchar(300) NOT NULL,
  `tema` varchar(300) NOT NULL,
  `contenido` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id_clases`, `id_curso`, `clase`, `tema`, `contenido`) VALUES
(1, 9, 'tema 4', 'tilo 2', 'contenido'),
(2, 9, 'sdf', 'sdf', 'sdf'),
(3, 11, 'sdf', 'sdf', 'sdf'),
(4, 11, 'dsf', 'sdf', 'sdf'),
(5, 9, 'erick', 'erick2 ', 'erikc3'),
(6, 11, 'dsf', 'sdf', 'sdf'),
(7, 11, 'sad', 'asd', 'asd'),
(8, 13, 'dfg', 'dfg', 'dfg'),
(9, 12, 'clase de conectar el disco duro ', 'conectado disco duro', 'en esta clase se buscara aprende a conectar el disco duro'),
(10, 15, 'semana 1', 'Nº01. manipulación y características del hardware interno de un computador', 'CASE ,FUENTE Y PLACA MADRE (SLOTS Y COMPONENTES DE LA PLACA)'),
(11, 15, 'Semana 2', '\"Nº02. Reconocimiento,  manipulación y características del hardware interno de un computador.\"', 'SOCKETS , PROCESADOR , MEMORIA RAM TARJETA DE VIDEO , SONIDO ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cronograma`
--

CREATE TABLE `cronograma` (
  `id_cronograma` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cronograma`
--

INSERT INTO `cronograma` (`id_cronograma`, `year`) VALUES
(1, 2020);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id_cursos` int(11) NOT NULL,
  `nombre_cursos` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id_cursos`, `nombre_cursos`, `url`) VALUES
(15, 'Curso de Prueba IESTPA', 'g1DJ8SlT8cjovGG2zg11_QWj.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_cronograma`
--

CREATE TABLE `detalle_cronograma` (
  `id_detalle_cronograma` int(11) NOT NULL,
  `id_cronograma` int(11) NOT NULL,
  `desc_pension` varchar(50) NOT NULL,
  `monto` float(8,2) NOT NULL,
  `fecha_venci` date NOT NULL,
  `id_grado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_cronograma`
--

INSERT INTO `detalle_cronograma` (`id_detalle_cronograma`, `id_cronograma`, `desc_pension`, `monto`, `fecha_venci`, `id_grado`) VALUES
(1, 1, 'enero', 450.00, '0000-00-00', 1),
(2, 1, 'asda', 400.00, '0000-00-00', 1),
(3, 1, 'asda', 400.00, '0000-00-00', 1),
(4, 1, 'asda', 400.00, '0000-00-00', 1),
(5, 1, 'mayo', 300.00, '2021-05-29', 1),
(6, 1, 'junio', 300.00, '2021-06-29', 1),
(7, 1, 'julio', 300.00, '2021-07-29', 1),
(8, 1, 'agosto', 300.00, '2021-08-29', 1),
(9, 1, 'septiembre', 300.00, '2021-09-29', 1),
(10, 1, 'octubre', 300.00, '2021-10-29', 1),
(11, 1, 'noviembre', 300.00, '2021-11-29', 1),
(12, 1, 'diciembre', 300.00, '2021-12-29', 1),
(13, 1, 'enero', 300.00, '2022-01-29', 1),
(14, 1, 'febrero', 300.00, '2022-02-28', 1),
(15, 1, 'marzo', 300.00, '2021-03-31', 1),
(16, 1, 'abril', 300.00, '2021-04-30', 1),
(17, 1, 'mayo', 300.00, '2021-05-30', 1),
(18, 1, 'junio', 300.00, '2021-06-30', 1),
(19, 1, 'julio', 300.00, '2021-07-30', 1),
(20, 1, 'agosto', 300.00, '2021-08-30', 1),
(21, 1, 'septiembre', 300.00, '2021-09-30', 1),
(22, 1, 'octubre', 300.00, '2021-10-30', 1),
(23, 1, 'noviembre', 300.00, '2021-11-30', 1),
(24, 1, 'diciembre', 300.00, '2021-12-30', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `nid_grado` bigint(20) UNSIGNED NOT NULL,
  `desc_grado` varchar(30) NOT NULL,
  `nivel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`nid_grado`, `desc_grado`, `nivel`) VALUES
(1, '2 años', 'INI'),
(2, '3 años', 'INI'),
(3, '4 años', 'INI'),
(4, '5 años', 'INI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento`
--

CREATE TABLE `movimiento` (
  `id_movimiento` bigint(20) UNSIGNED NOT NULL,
  `tipo_movimiento` varchar(20) NOT NULL,
  `monto` float(8,2) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_pago` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_persona` int(11) NOT NULL,
  `id_detalle_cronograma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `movimiento`
--

INSERT INTO `movimiento` (`id_movimiento`, `tipo_movimiento`, `monto`, `estado`, `fecha_pago`, `id_persona`, `id_detalle_cronograma`) VALUES
(1, 'INGRESO', 0.00, 'PENDIENTE', '2021-05-29 16:42:49', 44, 0),
(2, 'INGRESO', 0.00, 'PENDIENTE', '2021-05-29 16:44:35', 45, 0),
(3, 'INGRESO', 0.00, 'asda', '2021-05-29 16:52:08', 55, 0),
(4, 'INGRESO', 0.00, 'asda', '2021-05-29 16:52:38', 56, 0),
(5, 'INGRESO', 0.00, 'asda', '2021-05-29 16:53:27', 57, 0),
(6, 'INGRESO', 0.00, 'asda', '2021-05-29 17:00:47', 61, 0),
(7, 'INGRESO', 0.00, 'asda', '2021-05-29 17:01:34', 62, 0),
(8, 'INGRESO', 0.00, 'asda', '2021-05-29 17:02:41', 63, 0),
(9, 'INGRESO', 0.00, 'asda', '2021-05-29 17:03:32', 64, 0),
(10, 'INGRESO', 0.00, 'INI', '2021-05-29 17:07:59', 66, 0),
(11, 'INGRESO', 0.00, 'INI', '2021-05-29 17:08:20', 67, 0),
(12, 'INGRESO', 0.00, 'INI', '2021-05-29 17:09:54', 68, 0),
(13, 'INGRESO', 0.00, 'asda', '2021-05-29 17:14:14', 1, 0),
(14, 'INGRESO', 0.00, 'asda', '2021-05-29 17:20:00', 450, 0),
(15, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:28:15', 300, 0),
(16, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:33:32', 300, 0),
(17, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:33:32', 300, 0),
(18, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:33:32', 300, 0),
(19, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:33:32', 300, 0),
(20, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:33:32', 300, 0),
(21, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:33:32', 300, 0),
(22, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:33:32', 300, 0),
(23, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:33:32', 300, 0),
(24, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:33:32', 300, 0),
(25, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:33:32', 300, 0),
(26, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:33:32', 300, 0),
(27, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:44:34', 300, 0),
(28, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:44:34', 300, 0),
(29, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:44:34', 300, 0),
(30, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:44:34', 300, 0),
(31, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:44:34', 300, 0),
(32, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:44:34', 300, 0),
(33, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:44:34', 300, 0),
(34, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:44:34', 300, 0),
(35, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:44:34', 300, 0),
(36, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:44:34', 300, 0),
(37, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:44:34', 300, 0),
(38, 'INGRESO', 0.00, 'mayo', '2021-05-29 17:47:31', 300, 0),
(39, 'INGRESO', 0.00, 'junio', '2021-05-29 17:47:31', 300, 0),
(40, 'INGRESO', 0.00, 'julio', '2021-05-29 17:47:31', 300, 0),
(41, 'INGRESO', 0.00, 'agosto', '2021-05-29 17:47:31', 300, 0),
(42, 'INGRESO', 0.00, 'septiembre', '2021-05-29 17:47:31', 300, 0),
(43, 'INGRESO', 0.00, 'octubre', '2021-05-29 17:47:31', 300, 0),
(44, 'INGRESO', 0.00, 'noviembre', '2021-05-29 17:47:31', 300, 0),
(45, 'INGRESO', 0.00, 'diciembre', '2021-05-29 17:47:31', 300, 0),
(46, 'INGRESO', 0.00, 'enero', '2021-05-29 17:47:31', 300, 0),
(47, 'INGRESO', 0.00, 'febrero', '2021-05-29 17:47:31', 300, 0),
(48, 'INGRESO', 0.00, 'marzo', '2021-05-29 17:47:31', 300, 0),
(49, 'INGRESO', 300.00, 'POR PAGAR', '2021-05-29 17:59:45', 77, 15),
(50, 'INGRESO', 300.00, 'POR PAGAR', '2021-05-29 17:59:45', 77, 16),
(51, 'INGRESO', 300.00, 'POR PAGAR', '2021-05-29 17:59:45', 77, 17),
(52, 'INGRESO', 300.00, 'POR PAGAR', '2021-05-29 17:59:45', 77, 18),
(53, 'INGRESO', 300.00, 'POR PAGAR', '2021-05-29 17:59:45', 77, 19),
(54, 'INGRESO', 300.00, 'POR PAGAR', '2021-05-29 17:59:45', 77, 20),
(55, 'INGRESO', 300.00, 'POR PAGAR', '2021-05-29 17:59:45', 77, 21),
(56, 'INGRESO', 300.00, 'POR PAGAR', '2021-05-29 17:59:45', 77, 22),
(57, 'INGRESO', 300.00, 'POR PAGAR', '2021-05-29 17:59:45', 77, 23),
(58, 'INGRESO', 300.00, 'POR PAGAR', '2021-05-29 17:59:45', 77, 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `nid_persona` bigint(20) UNSIGNED NOT NULL,
  `nom_persona` varchar(50) NOT NULL,
  `ape_pate_pers` varchar(50) NOT NULL,
  `ape_mate_pers` varchar(50) NOT NULL,
  `nid_grado` int(11) NOT NULL,
  `fecha_naci` date NOT NULL,
  `foto_ruta` varchar(255) NOT NULL,
  `user` varchar(300) DEFAULT NULL,
  `contrasena` varchar(300) DEFAULT NULL,
  `dni` varchar(20) NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`nid_persona`, `nom_persona`, `ape_pate_pers`, `ape_mate_pers`, `nid_grado`, `fecha_naci`, `foto_ruta`, `user`, `contrasena`, `dni`, `tipo`) VALUES
(45, 'asdas', 'asdas', 'asdas', 0, '0000-00-00', 'asd', NULL, NULL, '', 0),
(46, 'asdas', 'asdas', 'asd', 0, '2021-05-12', 'qwe', NULL, NULL, '', 0),
(47, 'asdas', 'asdas', 'asd', 0, '2021-05-12', 'qwe', '123', '123', '', 0),
(79, 'asd', 'asd', 'asd', 0, '2022-09-01', 'http://localhost:3000/api/image/GEGcG2wkZG-_S8BG4yIIakSZ.jpg', NULL, NULL, '', 0),
(80, 'asda', 'asd', 'asd', 0, '2022-06-04', 'http://localhost:3000/api/image/JFuzq0JAb4bTe5vc8Y8-3nih.jpg', NULL, NULL, '', 0),
(81, 'jicary', 'qwe', 'guevara', 0, '2022-09-08', 'http://localhost:3000/api/image/OIDB5Vo5qaFFP0PJcltspdJu.jpg', NULL, NULL, '', 0),
(82, 'jicary', 'dfsf', 'guevara', 0, '2005-02-08', 'http://localhost:3000/api/image/3zTDtlrOLxNwV9NtRCBoRhQI.jpg', NULL, NULL, '', 0),
(84, 'asd', 'asd', 'asd', 0, '2022-09-23', 'http://localhost:3000/api/image/7xRlD-_F1V80ljGqxIVACWn6.jpg', NULL, NULL, '', 0),
(85, 'asd', 'asd', 'asd', 0, '2017-01-08', 'http://localhost:3000/api/image/VbpePMV-hbPboyc8RuL3IRp0.jpg', NULL, NULL, '', 0),
(86, 'asd', 'asd', 'asd', 0, '1997-02-08', 'http://localhost:3000/api/image/fR0uFpFcdm6DVoC1Iz1jhU3F.jpg', NULL, NULL, '', 0),
(100, 'Jhonatan Teofilo', 'Sicha ', 'Perez', 3, '2007-01-06', 'kYS_F9RMNSGF6lPwGCeQ7Ty-.jpg', '74395169', '74395169', '74395169', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `idpregunta` int(11) NOT NULL,
  `id_clase` int(11) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `alternativa1` varchar(300) NOT NULL,
  `alternativa2` varchar(300) NOT NULL,
  `alternativa3` varchar(300) NOT NULL,
  `alternativa4` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`idpregunta`, `id_clase`, `descripcion`, `alternativa1`, `alternativa2`, `alternativa3`, `alternativa4`) VALUES
(1, 1, 'dsf', 'sdf', 'sdf', 'dsf', 'sdf'),
(2, 3, 'asda', 'C:fakepathclaro-fondo.PNG', 'C:fakepathclaro-fondo.PNG', 'C:fakepathclaro-fondo.PNG', 'C:fakepathclaro-fondo.PNG'),
(3, 3, 'qweq', 'C:fakepathclaro-fondo.PNG', 'C:fakepathCaptura.PNG', 'C:fakepathCaptura.PNG', 'C:fakepathCaptura.PNG'),
(4, 3, 'asda', 'u0RYtD1KnFWITmWAy8SDiWiE.PNG', 'Q8ZSGqsR8p_Va0o77CtdQIgk.PNG', 'ftL1oW9nWAi2qPS91oBJxc9F.PNG', 'ikELqSGui5sv93IqOBefdHps.PNG'),
(5, 4, 'asdasd', 'Rs_lPe_5-BcLY4MAksKBd2bH.PNG', 'ada13OH37Uwf0WW-TFyrzsIS.PNG', 'HJdzZXwnYB_BoYEEqK7V6nNc.PNG', 'v1sfLe2QrJ7Y8sP4qqmwA0T2.PNG'),
(6, 9, 'Indicarme cual de estas imagenes es la forma correcta de conectar un disco duro', 'cQHIJS_Uc880i1EIF53Kva7I.PNG', 'YuSeAfoQ0aOdVt_tG7np97d6.PNG', 'Zu7kUtQVleApuv8xxbXgKwRR.PNG', '5rgf9c5zlPWNIod9qHn_BpQr.PNG'),
(7, 10, 'Cual es la manera correcta de colocar un case ', '4DfhHMtItpv0kYD3WcNJVM6Z.jpeg', 'iVWQ6kSe2_nzhy534wGAgl9R.jpeg', 'pM3hUmPATgNZGNYoenYhUfu1.jpeg', 'Waqmerr_vusoeCo4CImtUmwv.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id_respuesta` int(11) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id_clases`);

--
-- Indices de la tabla `cronograma`
--
ALTER TABLE `cronograma`
  ADD PRIMARY KEY (`id_cronograma`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_cursos`);

--
-- Indices de la tabla `detalle_cronograma`
--
ALTER TABLE `detalle_cronograma`
  ADD PRIMARY KEY (`id_detalle_cronograma`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`nid_grado`),
  ADD UNIQUE KEY `nid_grado` (`nid_grado`);

--
-- Indices de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD PRIMARY KEY (`id_movimiento`),
  ADD UNIQUE KEY `id_movimiento` (`id_movimiento`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`nid_persona`),
  ADD UNIQUE KEY `nid_persona` (`nid_persona`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`idpregunta`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id_respuesta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id_clases` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `cronograma`
--
ALTER TABLE `cronograma`
  MODIFY `id_cronograma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_cursos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `detalle_cronograma`
--
ALTER TABLE `detalle_cronograma`
  MODIFY `id_detalle_cronograma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
  MODIFY `nid_grado` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  MODIFY `id_movimiento` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `nid_persona` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `idpregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id_respuesta` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
