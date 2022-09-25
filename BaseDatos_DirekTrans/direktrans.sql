-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-09-2021 a las 01:58:29
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `direktrans`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camiones`
--

CREATE TABLE `camiones` (
  `id` int(11) NOT NULL,
  `codigo` varchar(4) NOT NULL,
  `placa` varchar(6) NOT NULL,
  `capacidad` varchar(8) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `nom_pro` varchar(45) NOT NULL,
  `tel_pro` varchar(11) NOT NULL,
  `servicios` varchar(45) NOT NULL,
  `soat` varchar(3) NOT NULL,
  `cont_ter` varchar(3) NOT NULL,
  `tecnom` varchar(3) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `camiones`
--

INSERT INTO `camiones` (`id`, `codigo`, `placa`, `capacidad`, `marca`, `tipo`, `nom_pro`, `tel_pro`, `servicios`, `soat`, `cont_ter`, `tecnom`, `estado`) VALUES
(2, 'c21', 'jsg237', '20000kls', 'ford', 'camion', 'pedro', '336547', 'nacional', 'no', 'si', 'si', 'activo'),
(3, 'm10', 'abc123', '2500klg', 'kenword', 'tractomula', 'marcela', '2312444', 'internacional', 'si', 'si', 'si', 'activo'),
(4, 'f16', 'rjg648', '1200kls', 'hino', 'furgon', 'mirtha', '37484320', 'local', 'si', 'si', 'si', 'inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `nombre_empresa` varchar(60) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(11) NOT NULL,
  `correo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `codigo`, `nombre_empresa`, `direccion`, `telefono`, `correo`) VALUES
(2, 'c432', 'NOEL', 'medellin', '8763534', 'noel@ejm.com'),
(3, 'c12', 'PULLMAN', 'pereira', '8434266', 'pull@ejm.com'),
(6, 'c123', 'JARDIN-EXOTIC', 'Jardin-Antioquia', '22244666', 'jardin-ex@ejm.co'),
(8, 'b23', 'YAMAHA', 'ande', '3546376', 'yamaha@mshh.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `id` int(11) NOT NULL,
  `codigo_carro` varchar(14) NOT NULL,
  `accion` varchar(45) NOT NULL,
  `hora` time NOT NULL,
  `fecha` date NOT NULL,
  `destino_s` varchar(45) NOT NULL,
  `desde_hacia` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`id`, `codigo_carro`, `accion`, `hora`, `fecha`, `destino_s`, `desde_hacia`) VALUES
(61, 'c21', 'Entra', '08:00:00', '2021-09-02', 'suc1', 'noel'),
(62, 'm10', 'Entra', '11:23:43', '2019-05-09', 'suc2', 'pullman'),
(63, 'f16', 'Entra', '06:48:49', '2019-12-12', 'suc3', 'yamaha'),
(64, 'c21', 'Sale', '05:20:18', '2021-09-06', 'suc1', 'YAMAHA'),
(65, 'c21', 'Entra', '05:22:29', '2021-09-06', 'suc1', 'YAMAHA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id` int(11) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `gerente` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id`, `codigo`, `nombre`, `direccion`, `ciudad`, `telefono`, `gerente`) VALUES
(17, 'suc1', 'palomares', 'cr23 # 76-120', 'Neiva', '2929292', 'Cristiana'),
(19, 'suc2', 'trianon', 'av. palmas #46-90', 'Popayan', '238829020', 'Miriam'),
(20, 'suc3', 'potermes', 'kra 98 #89-12', 'Armenia', '64532823', 'Luis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `cedula` varchar(12) NOT NULL,
  `salario` int(11) NOT NULL,
  `fec_incorporacion` date NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `rol` varchar(25) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `cedula`, `salario`, `fec_incorporacion`, `usuario`, `password`, `rol`, `correo`, `telefono`) VALUES
(8, 'Cristiana', 'Paterson', '987333', 2000000, '2019-06-13', 'ger', 'ger', 'gerente', 'cp@mn.nb', '88888'),
(9, 'Vis', 'Vis', '12432', 1000000, '2021-04-08', 'vis', 'vis', 'visitante', 'vis@j.co', '666663737'),
(10, 'Pablo', 'Prieto', '762345', 2000000, '2019-08-07', 'admin', 'admin', 'admin', 'pp@gm.co', '3642222'),
(19, 'Miriam', 'Palomeque', '123456', 1200000, '2021-02-01', 'mp', '1212', 'gerente', 'mp@gm.co', '1222888'),
(20, 'Luis', 'vera', '229900', 2000000, '2019-06-14', 'lv', '123', 'gerente', 'lv@gm.co', '37466438');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitantes`
--

CREATE TABLE `visitantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(90) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `mensaje` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `visitantes`
--

INSERT INTO `visitantes` (`id`, `nombre`, `correo`, `telefono`, `mensaje`) VALUES
(1, 'pedro', 'p@ej.co', '928362', 'llamar al 222222'),
(2, 'juanda', 'panda@gm.com', '9812645', 'Por favor contactarse al 2874897329, preguntar por lucho maserti,jalkhdljccljdnl<dznlkcdhl<j<clkcdnvkndvkljfljdgjkmvx,cv{ñzlñ{lzfbvnvjhdi<sfiuvnvcx,nv.m,bñ\r '),
(3, 'pedro', 'ped@ej.com', '923537882', 'nesecito'),
(4, 'yuliana', 'yuli@gmail.com', '8363638929', 'ajkcdclkdcvlñjjdjjdkdlsxxkkkkkkkkkkkkkkkkk'),
(5, 'pablo', 'p@del.com', '9933333', 'llamar al 323456765, necesito mas camiones para netregar productos refrigerados'),
(6, 'Pedro Marin', 'pm@gamil.com', '2349801', 'Por favor llamar al numero que dejamos con urgencia');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `camiones`
--
ALTER TABLE `camiones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `camiones`
--
ALTER TABLE `camiones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `rutas`
--
ALTER TABLE `rutas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `visitantes`
--
ALTER TABLE `visitantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
