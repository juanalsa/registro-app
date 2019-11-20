-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 19-11-2019 a las 17:47:08
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
-- Volcado de datos para la tabla `tbl_tipos_identificacion`
--

INSERT INTO `tbl_tipos_identificacion` (`id`, `nombre`, `abreviatura`, `created_at`, `updated_at`) VALUES
(1, 'Adulto sin identidad', 'AS', NULL, NULL),
(2, 'Cédula de ciudadanía', 'CC', NULL, NULL),
(3, 'Cédula de extranjería', 'CE', NULL, NULL),
(4, 'Menor sin identificación', 'MS', NULL, NULL),
(5, 'Pasaporte', 'PA', NULL, NULL),
(6, 'Registro Civil', 'RC', NULL, NULL),
(7, 'Tarjeta de identidad', 'TI', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
