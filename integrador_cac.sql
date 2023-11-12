-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2023 a las 17:53:26
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integrador_cac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id_orador` int(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `mail` varchar(60) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `fecha_alta` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id_orador`, `nombre`, `apellido`, `mail`, `tema`, `fecha_alta`) VALUES
(1, 'Juan', 'Gomez', 'juangomez@email.com', 'javascript', '2023-11-12 13:52:39'),
(2, 'Ana', 'Perez', 'anaperez@email.com', 'Java', '2023-11-12 13:52:39'),
(3, 'Maria', 'Lopez', 'marialopez@email.com', 'POO', '2023-11-12 13:52:39'),
(4, 'Carmen', 'Gomez', 'carmengomez@email.com', 'Base de datos', '2023-11-12 13:52:39'),
(5, 'Martin', 'Valencia', 'martinvalencia@email.com', 'Seguridad informatica', '2023-11-12 13:52:39'),
(6, 'Carlos', 'Perez', 'carlosperez@email.com', 'Android', '2023-11-12 13:52:39'),
(7, 'Sandra', 'Casano', 'sandracasano@email.com', 'node js', '2023-11-12 13:52:39'),
(8, 'Emanuel', 'Fernandez', 'emanuelf@email.com', 'React', '2023-11-12 13:52:39'),
(9, 'Antonela', 'Cruz', 'antocruz@email.com', 'HTML', '2023-11-12 13:52:39'),
(10, 'Pedro', 'Paredes', 'pepa@email.com', 'CSS', '2023-11-12 13:52:39');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id_orador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id_orador` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
