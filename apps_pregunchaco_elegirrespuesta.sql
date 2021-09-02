-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-09-2021 a las 03:32:18
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
-- Estructura de tabla para la tabla `apps_pregunchaco_elegirrespuesta`
--

CREATE TABLE `apps_pregunchaco_elegirrespuesta` (
  `id` bigint(20) NOT NULL,
  `correcta` tinyint(1) NOT NULL,
  `texto` longtext COLLATE utf8mb4_spanish2_ci NOT NULL,
  `pregunta_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `apps_pregunchaco_elegirrespuesta`
--

INSERT INTO `apps_pregunchaco_elegirrespuesta` (`id`, `correcta`, `texto`, `pregunta_id`) VALUES
(1, 1, 'La ciudad de las esculturas', 1),
(2, 0, 'Ciudad Museo', 1),
(3, 0, 'Ciudad Capital', 1),
(4, 0, 'Cuidad Central', 1),
(5, 0, '200', 2),
(6, 0, '700', 2),
(7, 1, '600', 2),
(8, 0, '450', 2),
(9, 0, 'Litoral Chaqueño e Impenetrable Chaqueño', 3),
(10, 1, 'Litoral Chaqueño, centro Chaqueño e Impenetrable Chaqueño', 3),
(11, 0, 'Chaco Boreal y Chaco Austral', 3),
(12, 0, 'Chaco Boreal', 3),
(13, 1, '1951', 4),
(14, 0, '1980', 4),
(15, 0, '1810', 4),
(16, 0, '2.000', 4),
(17, 1, '60.000', 5),
(18, 0, '10.000', 5),
(19, 0, '254.617', 5),
(20, 0, '100.120', 5),
(21, 0, 'Maipu', 6),
(22, 0, 'Bermejo', 6),
(23, 1, '12 de Octubre', 6),
(24, 0, 'Chacabuco', 6),
(25, 0, 'Pilcomayo', 7),
(26, 0, 'Parana', 7),
(27, 1, 'Bermejo', 7),
(28, 0, 'Rio Negro', 7),
(29, 1, 'Paralelo 28', 8),
(30, 0, 'Paralelo 29', 8),
(31, 0, 'Paralelo 30', 8),
(32, 0, 'Paralelo 31', 8),
(33, 0, 'Puerto de Barranqueras con Formosa', 9),
(34, 1, 'Puerto de Barranqueras con Salta', 9),
(35, 0, 'Puerto de Barranquera con Santiago del Estero', 9),
(36, 0, 'Puerto de Barranquera con Jujuy', 9),
(37, 0, 'Futbol', 10),
(38, 1, 'Basquet', 10),
(39, 0, 'Jockey', 10),
(40, 0, 'Taekwondo', 10),
(41, 1, 'Atletismo', 11),
(42, 0, 'Natacion', 11),
(43, 0, 'Remo', 11),
(44, 0, 'Taekwondo', 11),
(45, 0, 'For Ever', 12),
(46, 1, 'Sarmiento', 12),
(47, 0, 'Don Orione', 12),
(48, 0, 'Villa San Matin', 12),
(49, 0, 'Acordeon', 13),
(50, 1, 'N\'vike', 13),
(51, 0, 'Charango', 13),
(52, 0, 'Violin', 13),
(53, 0, 'Nombre de un arbol que abunda en la region', 14),
(54, 0, 'Nombre de un animal', 14),
(55, 1, 'Caza comunal de animales', 14),
(56, 0, 'Caza de animales', 14),
(57, 0, '32.565 Km?', 15),
(58, 0, '29.900 Km?', 15),
(59, 1, '99.633 Km?', 15),
(60, 0, '124.434 Km?', 15),
(61, 0, '300.000', 16),
(62, 0, '200.000', 16),
(63, 1, '1.000.000', 16),
(64, 0, '950.000', 16),
(65, 0, 'Gral. Lorenzo Winter', 17),
(66, 1, 'Gral. Julio de Vedia', 17),
(67, 0, 'Gral. Antonio Donovan', 17),
(68, 0, 'Gral.Enrique Luzuriaga', 17),
(69, 0, 'Las ciudades principales', 18),
(70, 1, 'Los departamentos provinciales', 18),
(71, 0, 'Grandes personajes que forzaron Chaco', 18),
(72, 0, 'No significan Nada', 18),
(73, 0, 'La Municipalidad de la Ciudad', 19),
(74, 0, 'El Fogon de los Arrieros', 19),
(75, 1, 'Casa de Gobierno', 19),
(76, 0, 'En el Aeropuerto', 19),
(77, 0, 'Cana de azucar', 20),
(78, 0, 'Produccion de tanino', 20),
(79, 1, 'Algodon', 20),
(80, 0, 'Soja', 20);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `apps_pregunchaco_elegirrespuesta`
--
ALTER TABLE `apps_pregunchaco_elegirrespuesta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apps_pregunchaco_ele_pregunta_id_0646eac4_fk_apps_preg` (`pregunta_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `apps_pregunchaco_elegirrespuesta`
--
ALTER TABLE `apps_pregunchaco_elegirrespuesta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `apps_pregunchaco_elegirrespuesta`
--
ALTER TABLE `apps_pregunchaco_elegirrespuesta`
  ADD CONSTRAINT `apps_pregunchaco_ele_pregunta_id_0646eac4_fk_apps_preg` FOREIGN KEY (`pregunta_id`) REFERENCES `apps_pregunchaco_pregunta` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
