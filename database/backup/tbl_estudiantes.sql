-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 20-11-2019 a las 05:51:41
-- Versión del servidor: 10.3.18-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro_app`
--

--
-- Volcado de datos para la tabla `tbl_estudiantes`
--

INSERT INTO `tbl_estudiantes` (`id`, `nombre`, `apellido`, `email`, `telefono`, `tipo_identificacion_id`, `nro_identificacion`, `ciudad_ncto_id`, `created_at`, `updated_at`) VALUES
(1, 'Carlos', 'Osorio', 'caov_osorio@hotmail.com', '3722458', 2, '1115823076', 2, '2019-11-19 05:00:00', '2019-11-19 05:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
