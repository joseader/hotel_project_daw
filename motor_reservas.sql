-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 12-06-2018 a las 12:41:08
-- Versión del servidor: 5.7.21
-- Versión de PHP: 7.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `motor_reservas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administracion`
--

DROP TABLE IF EXISTS `administracion`;
CREATE TABLE IF NOT EXISTS `administracion` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `ap1` varchar(30) NOT NULL,
  `ap2` varchar(30) NOT NULL,
  `pais` varchar(30) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telefono` int(11) NOT NULL,
  `fec_nacimiento` datetime NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigos_promocionales`
--

DROP TABLE IF EXISTS `codigos_promocionales`;
CREATE TABLE IF NOT EXISTS `codigos_promocionales` (
  `id_promo` int(11) NOT NULL AUTO_INCREMENT,
  `cod_promo` varchar(30) NOT NULL,
  `descrip_promo` int(11) NOT NULL,
  `descuento` decimal(4,2) NOT NULL,
  PRIMARY KEY (`id_promo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

DROP TABLE IF EXISTS `habitacion`;
CREATE TABLE IF NOT EXISTS `habitacion` (
  `id_habitacion` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  `tipo_habitacion` enum('doble','individual') NOT NULL,
  `cama_matrimonio` tinyint(1) NOT NULL,
  `precio` decimal(5,2) NOT NULL,
  `porcentaje_temp_baja` float(3,2) NOT NULL DEFAULT '-0.10',
  `porcentaje_temp_alta` float(3,2) NOT NULL DEFAULT '0.15',
  `disponible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_habitacion`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `habitacion`
--

INSERT INTO `habitacion` (`id_habitacion`, `descripcion`, `tipo_habitacion`, `cama_matrimonio`, `precio`, `porcentaje_temp_baja`, `porcentaje_temp_alta`, `disponible`) VALUES
(1, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(2, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(3, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(4, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(5, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(6, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(7, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(8, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(9, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(10, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(11, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(12, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(13, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(14, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(15, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(16, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(17, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(18, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(19, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(20, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(21, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(22, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(23, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(24, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(25, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(26, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(27, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(28, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(29, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(30, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(31, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(32, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(33, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(34, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(35, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(36, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(37, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(38, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(39, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(40, 'Habitación para 1 persona en cama de 90 cm. Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'individual', 0, '45.00', -0.10, 0.15, 1),
(41, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(42, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(43, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(44, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(45, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(46, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(47, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(48, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(49, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(50, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(51, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(52, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(53, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(54, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(55, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(56, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(57, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(58, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(59, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(60, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(61, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(62, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(63, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(64, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(65, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(66, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(67, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(68, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(69, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(70, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 1, '62.00', -0.10, 0.15, 1),
(71, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(72, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(73, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(74, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(75, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(76, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(77, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(78, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(79, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(80, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(81, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(82, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(83, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(84, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(85, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(86, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(87, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(88, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(89, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(90, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(91, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(92, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(93, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(94, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(95, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(96, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(97, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(98, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(99, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1),
(100, 'Habitación para 2 personas con 2 camas individuales (90 cm.) o cama de matrimonio (135-150 cm.). Disponen de cuarto de baño, Wi-Fi, teléfono, aire acondicionado y receptor de Tv. Todas al exterior con ventana y/o balcón.', 'doble', 0, '62.00', -0.10, 0.15, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

DROP TABLE IF EXISTS `reservas`;
CREATE TABLE IF NOT EXISTS `reservas` (
  `id_reserva` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` int(11) NOT NULL,
  `habitacion` int(11) NOT NULL,
  `desayuno` tinyint(1) NOT NULL,
  `fec_entrada` datetime NOT NULL,
  `fec_salida` datetime NOT NULL,
  `promo` int(11) NOT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `cliente` (`cliente`,`habitacion`,`promo`),
  KEY `promo` (`promo`),
  KEY `habitacion` (`habitacion`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
