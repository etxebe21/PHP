-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2023 a las 12:58:04
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mytology`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jokalaria`
--

CREATE TABLE `jokalaria` (
  `kode` varchar(5) DEFAULT NULL,
  `izena` varchar(10) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `jokalaria`
--

INSERT INTO `jokalaria` (`kode`, `izena`, `data`) VALUES
('100', 'Mikel', '2023-02-07'),
('200', 'Javi', '2023-02-08'),
('300', 'Jonathan', '2023-02-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidak`
--

CREATE TABLE `partidak` (
  `kodea` varchar(5) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `puntuak` varchar(10) DEFAULT NULL,
  `jokalaria` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `partidak`
--

INSERT INTO `partidak` (`kodea`, `data`, `puntuak`, `jokalaria`) VALUES
('100', '2023-02-07', '10000', 'Mik'),
('200', '2023-02-08', '9000', 'Jav'),
('300', '2023-02-08', '8000', 'Jon');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pertsonaia`
--

CREATE TABLE `pertsonaia` (
  `izena` varchar(7) DEFAULT NULL,
  `kodea` varchar(4) DEFAULT NULL,
  `deskripzioa` varchar(20) DEFAULT NULL,
  `bizitzak` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pertsonaia`
--

INSERT INTO `pertsonaia` (`izena`, `kodea`, `deskripzioa`, `bizitzak`) VALUES
('Basajau', '111', 'Personaje principal', 3),
('Mari', '222', 'Personaje secundario', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sprite`
--

CREATE TABLE `sprite` (
  `kodea` varchar(5) DEFAULT NULL,
  `izena` varchar(10) DEFAULT NULL,
  `puntuak` int(5) DEFAULT NULL,
  `damage` int(5) DEFAULT NULL,
  `bizitza` int(5) DEFAULT NULL,
  `irudia` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sprite`
--

INSERT INTO `sprite` (`kodea`, `izena`, `puntuak`, `damage`, `bizitza`, `irudia`) VALUES
('1', 'Zezengorri', 100, 100, 100, 'zezengorri'),
('2', 'Akerbeltz', 100, 100, 100, 'akerbeltz'),
('3', 'Bruja', 100, 100, 100, 'Bruja'),
('4', 'fresa', 100, 0, 0, 'marrubia'),
('5', 'agua', 100, 0, 0, 'agua');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
