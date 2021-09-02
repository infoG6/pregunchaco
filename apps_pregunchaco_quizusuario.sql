-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-09-2021 a las 03:33:50
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
-- Estructura de tabla para la tabla `apps_pregunchaco_quizusuario`
--

CREATE TABLE `apps_pregunchaco_quizusuario` (
  `id` bigint(20) NOT NULL,
  `puntaje_total` int(3) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `apps_pregunchaco_quizusuario`
--

INSERT INTO `apps_pregunchaco_quizusuario` (`id`, `puntaje_total`, `usuario_id`) VALUES
(1, 76, 1),
(2, 9, 2),
(3, 45, 3),
(4, 0, 4),
(5, 55, 5),
(6, 60, 6),
(7, 85, 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `apps_pregunchaco_quizusuario`
--
ALTER TABLE `apps_pregunchaco_quizusuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_id` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `apps_pregunchaco_quizusuario`
--
ALTER TABLE `apps_pregunchaco_quizusuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `apps_pregunchaco_quizusuario`
--
ALTER TABLE `apps_pregunchaco_quizusuario`
  ADD CONSTRAINT `apps_pregunchaco_quizusuario_usuario_id_ea7f1701_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
