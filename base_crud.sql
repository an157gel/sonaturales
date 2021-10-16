-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2021 a las 07:12:06
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_crud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consejos`
--

CREATE TABLE `consejos` (
  `sabor` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `precio` decimal(3,2) NOT NULL,
  `producto` varchar(20) COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `consejos`
--

INSERT INTO `consejos` (`sabor`, `precio`, `producto`) VALUES
('uva', '2.00', '0.50'),
('uva', '0.50', '2'),
('manzana', '0.50', 'sorbetes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nonatural`
--

CREATE TABLE `nonatural` (
  `nombre` varchar(20) COLLATE ucs2_spanish_ci NOT NULL,
  `sabor` varchar(20) COLLATE ucs2_spanish_ci NOT NULL,
  `precio` decimal(3,2) NOT NULL,
  `producto` varchar(20) COLLATE ucs2_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish_ci;

--
-- Volcado de datos para la tabla `nonatural`
--

INSERT INTO `nonatural` (`nombre`, `sabor`, `precio`, `producto`) VALUES
('Cinta negra', 'chocolate y vanila', '1.25', 'paleta'),
('Giga clasico', 'chocolate y vanilla', '2.00', 'paleta'),
('Semaforo', 'variado', '0.50', 'paleta'),
('Napolitana', 'chocolate y fresa', '0.75', 'paleta'),
('copa sundae', 'vainilla', '1.25', 'sorbete'),
('mr. cono', 'vainilla', '0.75', 'sorbete'),
('helados riosoto', 'chocolate y fresa', '1.00', 'sorbete');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paletas`
--

CREATE TABLE `paletas` (
  `sabor` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `adicion` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `precio` decimal(3,2) NOT NULL,
  `diadisponible` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `paletas`
--

INSERT INTO `paletas` (`sabor`, `adicion`, `precio`, `diadisponible`) VALUES
('Coco', 'jalea', '0.50', 'Todos'),
('Chocolate', 'No', '0.75', 'Todos'),
('Fresa', 'jalea', '0.50', 'Todos'),
('Banano', 'jalea', '0.50', 'Todos'),
('Mamey', 'No', '0.75', 'Sabado y Domingo'),
('Piña', 'No', '0.50', 'Todos'),
('Limon', 'tajin', '0.50', 'Sabado y Domingo'),
('Cafe', 'No', '0.50', 'Todos'),
('Leche', 'jalea', '0.50', 'Todos'),
('Sandia', 'No', '0.50', 'Sabado y Domingo'),
('Arrayan', 'No', '0.50', 'Todos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recomendacion`
--

CREATE TABLE `recomendacion` (
  `sabor` varchar(20) COLLATE ucs2_spanish_ci NOT NULL,
  `precio` decimal(3,2) NOT NULL,
  `dias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish_ci;

--
-- Volcado de datos para la tabla `recomendacion`
--

INSERT INTO `recomendacion` (`sabor`, `precio`, `dias`) VALUES
('uva', '0.50', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sorbetes`
--

CREATE TABLE `sorbetes` (
  `id` int(11) NOT NULL,
  `sabor` varchar(20) COLLATE ucs2_spanish_ci NOT NULL,
  `adicion` varchar(20) COLLATE ucs2_spanish_ci NOT NULL,
  `precio` decimal(3,2) NOT NULL,
  `imagen` varchar(200) COLLATE ucs2_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_spanish_ci;

--
-- Volcado de datos para la tabla `sorbetes`
--

INSERT INTO `sorbetes` (`id`, `sabor`, `adicion`, `precio`, `imagen`) VALUES
(1, '', '', '0.00', ''),
(2, '', '', '0.00', ''),
(3, '', '', '0.00', ''),
(4, '', '', '0.00', ''),
(5, '', '', '0.00', ''),
(6, '', '', '0.00', ''),
(7, '', '', '0.00', ''),
(8, '', '', '0.00', ''),
(9, '', '', '0.00', ''),
(10, '', '', '0.00', ''),
(11, '', '', '0.00', ''),
(12, '', '', '0.00', ''),
(13, '', '', '0.00', ''),
(14, '', '', '0.00', ''),
(15, '', '', '0.00', ''),
(16, '', '', '0.00', ''),
(17, '', '', '0.00', ''),
(18, '', '', '0.00', ''),
(19, 'Banano', 'jalea', '0.50', 'banano.jpg'),
(20, 'Sandia', 'jalea', '0.50', 'sandia.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sorbetes1`
--

CREATE TABLE `sorbetes1` (
  `id` int(11) NOT NULL,
  `sabor` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adicion` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(3,2) NOT NULL,
  `imagen` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sorbetes1`
--

INSERT INTO `sorbetes1` (`id`, `sabor`, `adicion`, `precio`, `imagen`) VALUES
(1, 'Banano', 'jalea', '0.50', 'banano.jpg'),
(2, 'Sandia', 'jalea', '0.50', 'sandia.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sorbetes2`
--

CREATE TABLE `sorbetes2` (
  `sabor` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `adicion` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `precio` decimal(3,2) NOT NULL,
  `diadisponible` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sorbetes2`
--

INSERT INTO `sorbetes2` (`sabor`, `adicion`, `precio`, `diadisponible`) VALUES
('Banano', 'jalea', '0.50', 'Todos'),
('Sandia', 'jalea', '0.50', 'Martes y Jueves'),
('Tamarindo', 'jalea', '0.50', 'Miercoles y Jueves'),
('Arrayan', 'jalea', '0.50', 'Martes y Jueves'),
('Coco', 'jalea', '0.50', 'Martes y Jueves'),
('Leche', 'jalea', '0.50', 'Todos'),
('Jocote', 'tajin o jalea', '0.50', 'Sabado y Domingo'),
('Limon', 'tajin', '0.50', 'Sabado y Domingo'),
('Hierba buena', 'tajin o chile', '0.75', 'Viernes a Domingo'),
('Maracuya', 'jalea', '0.75', 'Lunes y Jueves'),
('Fresa', 'jalea', '0.50', 'Todos'),
('Mango', 'tajin o jalea', '0.75', 'Lunes y Jueves'),
('Piña', 'jalea', '0.50', 'Todos'),
('Mora', 'tajin o jalea', '0.75', 'Lunes y Jueves'),
('Mamey', 'jalea', '0.75', 'Martes y Jueves'),
('Zapote', 'jalea', '0.75', 'Miercoles y Jueves'),
('Cafe', 'No', '0.50', 'Miercoles y Jueves'),
('Melon', 'jalea', '0.75', 'Martes y Jueves');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `user`, `password`) VALUES
(1, 'Leslie Armijo', '12345'),
(2, 'Joseline Alfaro', '56789'),
(3, 'Angel Martinez', '9876'),
(4, 'Josúe Fortis', '453261');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `sorbetes`
--
ALTER TABLE `sorbetes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sorbetes1`
--
ALTER TABLE `sorbetes1`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `sorbetes`
--
ALTER TABLE `sorbetes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `sorbetes1`
--
ALTER TABLE `sorbetes1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
