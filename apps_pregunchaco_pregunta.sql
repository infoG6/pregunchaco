-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-08-2021 a las 20:14:52
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pregunchaco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apps_pregunchaco_pregunta`
--

CREATE TABLE `apps_pregunchaco_pregunta` (
  `id` bigint(20) NOT NULL,
  `texto` longtext COLLATE utf8mb4_spanish2_ci NOT NULL,
  `max_puntaje` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `apps_pregunchaco_pregunta`
--

INSERT INTO `apps_pregunchaco_pregunta` (`id`, `texto`, `max_puntaje`) VALUES
(1, 'Resistencia es conocida como:', '5.00'),
(2, '¿Cuántas esculturas hay en Resistencia?', '5.00'),
(3, '¿En qué sectores se divide geográficamente la provincia del Chaco?', '5.00'),
(4, '¿En que año fue la Provincializacion del Chaco?', '5.00'),
(5, '¿Para que una provincia sea provincializada cuantos habitantes deberia tener?', '5.00'),
(6, 'Campo del Cielo: Patrimonio Cultural y Turistico del Chaco, ?Donde se ubica?', '5.00'),
(7, 'Al norte el limite natural establecido entre la Provincia de Chaco y Formosa es:', '5.00'),
(8, 'Al sur, el limite establecido entre la Provincia del Chaco y Santa Fe es:', '5.00'),
(9, 'El ex ferrocarril General Belgrano conectaba a:', '5.00'),
(10, 'En el ambito de los juegos olimpicos, el Chaco tiene un medallista en:', '5.00'),
(11, 'Marcela Gomez, chaqueña, participo en los Juegos Olimpicos de Tokio en:', '5.00'),
(12, 'El club de futbol mas antiguo del Chaco es', '5.00'),
(13, 'En 1941 se declaro a un instrumento musical como el Patrimonio Cultural de Chaco, ¿Cual es?', '5.00'),
(14, 'La palabra Chacu del cual deriva el nombre de nuestra provincia, tenia un significado ?Cual era?', '5.00'),
(15, 'La superficie total de la provincia del Chaco es de:', '5.00'),
(16, 'La poblacion actual del Chaco oscila entre:', '5.00'),
(17, '¿Quien fue el primer gobernador del Territorio Nacional del Chaco?', '5.00'),
(18, 'En la bandera del Chaco hay un arado rodeado de 25 estrellas ¿Que representan?', '5.00'),
(19, 'En un emblematico edificio de Resistencia se encuentra un mural del Emilio Pettoruti ¿Donde es?', '5.00'),
(20, 'La produccion destacada chaqueña por la cual se la reconoce a la provincia es:', '5.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `apps_pregunchaco_pregunta`
--
ALTER TABLE `apps_pregunchaco_pregunta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `apps_pregunchaco_pregunta`
--
ALTER TABLE `apps_pregunchaco_pregunta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
