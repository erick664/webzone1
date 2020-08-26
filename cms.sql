-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2020 a las 12:04:49
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cms`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `introduccion` text NOT NULL,
  `ruta` text NOT NULL,
  `contenido` text NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `titulo`, `introduccion`, `ruta`, `contenido`, `orden`) VALUES
(1, 'Lápices De Colores Crayola Caja C/36', '  $200.00 Pesos...', 'views/images/articulos/articulo618.jpg', 'Acerca de 36 Lápices de color con sacapuntas\r\n68-4036\r\nCrayola ofrece innovación constante en su línea de lápices de color. ¡Ahora con una nueva fórmula mejorada!\r\nPuntas mas resistentes y mayor durabilidad, no se rompen fácilmente al momento de dibujar o sacarles punta.', 0),
(2, 'Pliegos De Papel China  Colores', '$0.50 C/U...', 'views/images/articulos/articulo898.jpg', ' papel encerado colores disponibles cada pliego mide 70*45', 0),
(3, 'Cartulina Iris Pliego 50x65 ', '$8.00 pesos c/u...', 'views/images/articulos/articulo123.jpg', 'COLORES MIXTOS :\r\nAMARILLA, AZUL, VERDE, NARANJA, MORADO', 0),
(4, 'Mochila Antirrobo - Tedge', '$300.00 pesos...', 'views/images/articulos/articulo151.jpg', 'CARACTERÍSTICAS:\r\n1. Viaja a cualquier lugar y protégete tus pertenencias gracias a su exclusivo diseño con cierre oculto que evitara que alguien pueda abrirla sin que te des cuenta.\r\n2. Practicidad y conveniencia gracias a sus múltiples compartimientos que te permitirán tener todo organizado y al alcance de tu mano.\r\n3. Mantente siempre conectado y con pila en tu celular gracias al compartimiento interno y cable USB que hará mas fácil y practico resguardar tu Power Bank dentro de la mochila y conectar tu celular mediante el puerto USB externo.\r\n4. Materiales resistentes al agua e impermeables, lo que la hace excelente para los amantes de los viajes.', 0),
(6, 'Juego Geometrico Flexible Surtido', '$150.00 pesos...', 'views/images/articulos/articulo885.jpg', 'Material Silicòn\r\nLargo 30 cm', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `id` int(11) NOT NULL,
  `ruta` text NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`id`, `ruta`, `orden`) VALUES
(1, '../../views/images/galeria/galeria379.jpg', 0),
(2, '../../views/images/galeria/galeria401.jpg', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `email` text NOT NULL,
  `mensaje` text NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `revision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `ruta` text NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id`, `ruta`, `titulo`, `descripcion`, `orden`) VALUES
(65, '../../views/images/slide/slide424.jpg', '', '', 0),
(67, '../../views/images/slide/slide876.jpg', '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscriptores`
--

CREATE TABLE `suscriptores` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `email` text NOT NULL,
  `revision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `suscriptores`
--

INSERT INTO `suscriptores` (`id`, `nombre`, `email`, `revision`) VALUES
(7, 'Erik Talamantes', 'erik.talamantes@uabc.edu.mx', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(10) NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `photo` text NOT NULL,
  `rol` int(11) NOT NULL,
  `intentos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `email`, `photo`, `rol`, `intentos`) VALUES
(3, 'ManMtzM', '$2a$07$asxx54ahjppf45sd87a5aujVeRdremt6Eb.a/KoAJpW6vJj0Djr0e', 'a1242281@uabc.edu.mx', 'views/images/perfiles/perfil323.jpg', 0, 0),
(7, 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'ciberzonerosarito@hotmail.com', 'views/images/perfiles/perfil221.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `ruta` text NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `videos`
--

INSERT INTO `videos` (`id`, `ruta`, `orden`) VALUES
(1, '../../views/videos/video771.mp4', 0),
(2, '../../views/videos/video449.mp4', 0),
(3, '../../views/videos/video476.mp4', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `suscriptores`
--
ALTER TABLE `suscriptores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `suscriptores`
--
ALTER TABLE `suscriptores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
