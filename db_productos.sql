-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-09-2020 a las 18:26:30
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_productos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `origen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`, `descripcion`, `origen`) VALUES
(1, 'rostro', 'Las cremas faciales de garantizan una hidratación profunda y duradera de la piel. Dejan la piel con una sensación de confort y suavidad.', 'Alemania'),
(2, 'cuerpo', 'Descubre la gama Creme de Corps, inspirada en nuestra clásica Creme de Corps, uno de los productos  de culto desde su creación en los años 70. Sus voluptuosas y generosas texturas envuelven tu piel de suavidad y la dejan\r\nsedosa y protegida', 'Alemania'),
(3, 'hombre', 'Cuidar la piel antes y después del afeitado es esencial para tener una piel saludable.', 'Alemania'),
(4, 'cabello', 'Los champús , acondicionadores naturales limpian y nutren el cabello con total delicadeza a la vez que tratan necesidades capilares específicas. Elaborados a base de los mejores ingredientes naturales como el aceite de oliva, aguacate, extracto de limón, ', 'Alemania');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` double NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `categoria`, `id_categoria`) VALUES
(1, 'Ultra Facial Cleanser', '\r\nUltra Facial Cleanser es un gel limpiador facial en espuma especialmente formulado para ayudar a eliminar la suciedad y las impurezas sin resecar ni agrietar la piel.', 1850, 'rostro', 1),
(2, 'Calendula Herbal Extract Alcohol-Free Toner', 'Los clientes llevan confiando en Calendula Herbal Extract Alcohol-Free Toner como el tónico natural para pieles grasas y normales favorito desde los años 60. ', 3850, 'rostro', 1),
(3, '\r\nUltra Light Daily UV Defense SPF50 Pa+++\r\n \r\nUltra Light Daily UV Defense SPF50 Pa+++\r\nNOTA \r\n        \r\n   \r\nAñadir a Favoritos  Enviar a un/a amigo/a\r\nUltra Light Daily UV Defense SPF50 Pa+++', 'Loción solar hidratante de alta protección y anti-contaminación de uso diario para el rostro.\r\nProtege tu piel de los primeros signos de envejecimiento producidos por los daños del sol con nuestro SPF 50 PA ++++ de amplio espectro.\r\n', 3600, 'rostro', 1),
(4, 'Ultra Facial Oil-Free Gel Cream', 'Ultra Facial Oil-Free Gel Cream ayuda a reducir el exceso de grasa y a controlar los brillos durante 24 horas\r\nFormulada a partir de extracto de Imperata cylindrica y de antarcticine para facilitar la retención de hidratación\r\n', 2950, 'rostro', 1),
(5, '\r\nVital Skin-Strengthening Super Serum\r\n \r\nVital Skin-Strengthening Super Serum\r\n \r\nVital Skin-Strengthening Super Serum\r\n \r\nVital Skin-Strengthening Super Serum\r\n \r\nVital Skin-Strengthening Super Serum\r\n \r\nVital Skin-Strengthening Super Serum\r\n \r\nVital S', 'Para todos los tipo de piel, incluida la sensible. Súper Sérum Antiedad Ultra- Ligero', 1550, 'rostro', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`) USING BTREE,
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
