-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 04-03-2022 a las 21:00:12
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parcial1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alum_asig`
--

CREATE TABLE `alum_asig` (
  `id` int(11) NOT NULL,
  `id_alum` int(11) DEFAULT NULL,
  `id_asig` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `alum_asig`
--

INSERT INTO `alum_asig` (`id`, `id_alum`, `id_asig`) VALUES
(10, 1, 46),
(11, 2, 13),
(12, 3, 14),
(16, 5, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `Codigo_asig` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_profesor` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`Codigo_asig`, `nombre`, `id_profesor`) VALUES
(45, 'Sociales ', 0),
(46, 'Naturales', 0),
(47, 'Calculo', 0),
(48, 'Fisica', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `num_matricula` int(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `num_matricula`, `fecha_nacimiento`, `telefono`) VALUES
(1, 'manuel', 13, '2004-05-03', 300432902),
(2, 'daniel ', 11, '2003-12-22', 310578443),
(3, 'juan ', 14, '2002-11-08', 301567446),
(4, 'gustavo', 17, '2001-09-05', 302675897);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id` int(50) NOT NULL,
  `NIF_P` int(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `especialidad` varchar(50) NOT NULL,
  `telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id`, `NIF_P`, `nombre`, `especialidad`, `telefono`) VALUES
(1, 23, 'Euclides ', 'Filosofia ', 304321231),
(2, 11, 'Edgardo ', 'Lenguaje ', 300414312),
(3, 34, 'joice ', 'ingles ', 311315543),
(4, 24, 'wiliam', 'sistemas ', 312423145);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alum_asig`
--
ALTER TABLE `alum_asig`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`Codigo_asig`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
