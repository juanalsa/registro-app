-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 20-11-2019 a las 05:52:33
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_19_064451_create_tipos_identificacion_table', 1),
(4, '2019_11_19_064503_create_ciudades_table', 1),
(5, '2019_11_19_064515_create_estudiantes_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ciudades`
--

CREATE TABLE `tbl_ciudades` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estudiantes`
--

CREATE TABLE `tbl_estudiantes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_identificacion_id` int(10) UNSIGNED NOT NULL,
  `nro_identificacion` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad_ncto_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_estudiantes`
--

INSERT INTO `tbl_estudiantes` (`id`, `nombre`, `apellido`, `email`, `telefono`, `tipo_identificacion_id`, `nro_identificacion`, `ciudad_ncto_id`, `created_at`, `updated_at`) VALUES
(1, 'Carlos', 'Osorio', 'caov_osorio@hotmail.com', '3722458', 2, '1115823076', 2, '2019-11-19 05:00:00', '2019-11-19 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipos_identificacion`
--

CREATE TABLE `tbl_tipos_identificacion` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abreviatura` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `tbl_ciudades`
--
ALTER TABLE `tbl_ciudades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_estudiantes`
--
ALTER TABLE `tbl_estudiantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_estudiantes_tipo_identificacion_id_foreign` (`tipo_identificacion_id`),
  ADD KEY `tbl_estudiantes_ciudad_ncto_id_foreign` (`ciudad_ncto_id`);

--
-- Indices de la tabla `tbl_tipos_identificacion`
--
ALTER TABLE `tbl_tipos_identificacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_ciudades`
--
ALTER TABLE `tbl_ciudades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_estudiantes`
--
ALTER TABLE `tbl_estudiantes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_tipos_identificacion`
--
ALTER TABLE `tbl_tipos_identificacion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_estudiantes`
--
ALTER TABLE `tbl_estudiantes`
  ADD CONSTRAINT `tbl_estudiantes_ciudad_ncto_id_foreign` FOREIGN KEY (`ciudad_ncto_id`) REFERENCES `tbl_ciudades` (`id`),
  ADD CONSTRAINT `tbl_estudiantes_tipo_identificacion_id_foreign` FOREIGN KEY (`tipo_identificacion_id`) REFERENCES `tbl_tipos_identificacion` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
