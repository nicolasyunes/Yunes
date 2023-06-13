-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2023 a las 21:06:13
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_yunes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabecera`
--

CREATE TABLE `cabecera` (
  `id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `total_venta` int(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cabecera`
--

INSERT INTO `cabecera` (`id`, `fecha`, `usuario_id`, `total_venta`) VALUES
(1, '2023-06-13 12:34:30', 5, 7000),
(2, '2023-06-13 12:35:14', 5, 2500),
(3, '2023-06-13 12:35:18', 5, 2500),
(4, '2023-06-13 12:40:12', 5, 7000),
(5, '2023-06-13 12:43:19', 5, 22000),
(6, '2023-06-13 13:08:06', 5, 7000),
(7, '2023-06-13 14:30:14', 5, 22222),
(8, '2023-06-13 14:42:18', 5, 2000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

CREATE TABLE `consultas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(222) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mensaje` varchar(500) NOT NULL,
  `activo` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consultas`
--

INSERT INTO `consultas` (`id`, `nombre`, `apellido`, `email`, `mensaje`, `activo`) VALUES
(1, 'juan', 'perez', 'jperez@asd', 'que hay ', 0),
(3, '123123', '123123', '123123123asdasd@asdasd', '123123', 0),
(4, '123123', '123123', '123123123asdasd@asdasd', '123123', 1),
(5, '123123', '123123', '123123123asdasd@asdasd', '123123', 0),
(6, 'nicolas', 'yunes', 'nicolaseduardoyunes@gmail.com', 'test', 0),
(7, '123', '123123', 'nicolaseduardoyunes@gmail.com', '123', 0),
(8, 'admin', '', 'admin@admin', '123', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id` int(11) NOT NULL,
  `venta_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`id`, `venta_id`, `producto_id`, `cantidad`, `precio`) VALUES
(1, 1, 18, 1, 7000),
(2, 2, 19, 1, 2500),
(3, 3, 19, 1, 2500),
(4, 4, 18, 1, 7000),
(5, 5, 19, 2, 2500),
(6, 5, 20, 1, 10000),
(7, 5, 18, 1, 7000),
(8, 6, 18, 1, 7000),
(9, 7, 21, 1, 1111),
(10, 7, 21, 1, 1111),
(11, 7, 20, 1, 10000),
(12, 7, 20, 1, 10000),
(13, 8, 25, 1, 1000),
(14, 8, 22, 1, 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre_producto` varchar(300) NOT NULL,
  `precio_unitario` varchar(255) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `imagen_producto` varchar(400) NOT NULL,
  `activo` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre_producto`, `precio_unitario`, `stock`, `imagen_producto`, `activo`) VALUES
(18, 'macetas', '700011', '52', '1686657290_4eefe0b26a12d5c9cbcf.png', 1),
(19, 'mate pantera', '2500', '2', '1686665049_07e243e89b5f902be994.png', 0),
(20, 'copa', '10000', '0', '1686670860_cb314beda5c59a427109.png', 0),
(21, 'octopus', '1111', '0', '1686670925_ce746ef1ae92940482bd.png', 1),
(22, 'colgantes', '1000', '1', '1686677474_bdbd3b1f7b773f92c7ec.png', 1),
(23, 'mate', '2500', '2', '1686677502_692e98d5fd2fcd2dca8c.png', 0),
(24, 'numberblocks', '5000', '1', '1686677993_dd1871adfa1a54ae8c30.png', 1),
(25, 'copa', '1000', '0', '1686678068_3d8971962a29c6fdb324.png', 1),
(26, 'llavero', '200', '200', '1686679417_9b1cff60c12bfe8f35df.png', 1),
(27, 'despolvillador', '3000', '2', '1686679497_d7582c59da35f01afcc8.png', 1),
(28, '', '', '', '1686679541_f52dc1d2e27ce0a6d39e.png', 0),
(29, 'celular holder', '3000', '2', '1686679591_841b9ca3d0db3026461d.png', 1),
(30, 'support', '1', '1', '1686679987_b6f50a47a2ddd3d90fa9.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_perfil` int(1) NOT NULL,
  `activo` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `password`, `email`, `id_perfil`, `activo`) VALUES
(1, 'Nicolas', '$2y$10$xJAnM4spvLpbXeNrL/OM3uO5E3C34X9B1V1hqpnJyamk0LnpeV6oy', 'test@test', 0, 1),
(2, 'test12', '$2y$10$pKWjcEUAnCtzpXAoA0pLe.TbdUAuAzcLD.xQGLl2H.lpEpcq135gm', 'test1@test2', 0, 1),
(5, 'admin', '$2y$10$rFIzF.mFWdRec0gn2r8eWObTzcRKQzabwhRta0TyPSgb6nXjoyG2O', 'admin@admin', 1, 1),
(6, 'prueba', '$2y$10$TRG5.Khxg6M3h7jxRtF4lOdOZUABzsBVbOXFpPQ.G9S9Z4pGLrq/m', 'test@test', 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cabecera`
--
ALTER TABLE `cabecera`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
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
-- AUTO_INCREMENT de la tabla `cabecera`
--
ALTER TABLE `cabecera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `consultas`
--
ALTER TABLE `consultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
