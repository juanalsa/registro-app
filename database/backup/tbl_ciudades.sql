-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 19-11-2019 a las 17:47:39
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
-- Volcado de datos para la tabla `tbl_ciudades`
--

INSERT INTO `tbl_ciudades` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Buga', NULL, NULL),
(2, 'Cali', NULL, NULL),
(3, 'Cartago', NULL, NULL),
(4, 'El Cerrito', NULL, NULL),
(5, 'Florida', NULL, NULL),
(6, 'Ginebra', NULL, NULL),
(7, 'Guacari', NULL, NULL),
(8, 'Jamundi', NULL, NULL),
(9, 'Palmira', NULL, NULL),
(10, 'Yumbo', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
