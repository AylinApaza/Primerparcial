-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 06-05-2024 a las 12:14:40
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdaylin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_bancaria`
--

CREATE TABLE `cuenta_bancaria` (
  `nrocuenta` int(11) NOT NULL,
  `tipocuenta` varchar(50) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `fechacreacion` date DEFAULT NULL,
  `idpersona` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuenta_bancaria`
--

INSERT INTO `cuenta_bancaria` (`nrocuenta`, `tipocuenta`, `saldo`, `fechacreacion`, `idpersona`) VALUES
(1001, 'Corriente', 5000.00, '2023-01-15', 1),
(2001, 'Ahorro', 10000.00, '2022-12-10', 2),
(5001, 'Mercado Monetario', 20000.00, '2023-12-05', 3),
(6001, 'Plazo Fijo', 7000.00, '2024-02-15', 4),
(7001, 'Ahorro', 100000.00, '2023-06-30', 5),
(8001, 'Corriente', 3000.00, '2024-03-20', 6),
(9001, 'Ahorro', 5000.00, '2024-01-01', 7),
(10001, 'Mercado Monetario', 15000.00, '2023-10-10', 8),
(11001, 'Ahorro', 25000.00, '2023-09-15', 2),
(12001, 'Plazo Fijo', 8000.00, '2024-04-05', 5),
(13001, 'Corriente', 35000.00, '2023-11-20', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `paterno` varchar(50) DEFAULT NULL,
  `materno` varchar(50) DEFAULT NULL,
  `fechanacimiento` date DEFAULT NULL,
  `genero` varchar(10) DEFAULT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `nombre`, `paterno`, `materno`, `fechanacimiento`, `genero`, `departamento`, `telefono`) VALUES
(1, 'Ana', 'Perez', 'Martinez', '1990-05-15', 'Femenino', 'Cochabamba', '123456'),
(2, 'María', 'González', 'Quisbert', '1985-08-20', 'Femenino', 'Santa Cruz', '987654'),
(3, 'Juan', 'Guzman', 'Cuevas', '2000-09-10', 'Masculino', 'La Paz', '373013'),
(4, 'Javier', 'Choque', 'Castillo', '1995-11-20', 'Masculino', 'La Paz', '482012'),
(5, 'Santiago', 'Flores', 'Zapata', '1990-04-15', 'Masculino', 'Oruro', '573027'),
(6, 'Miriam', 'Alcon', 'Espejo', '1983-01-21', 'Femenino', 'Sucre', '473744'),
(7, 'Jose', 'Daga', 'Quintana', '1990-03-12', 'Masculino', 'La Paz', '348392'),
(8, 'Kevin', 'Huanca', 'Flores', '1989-06-10', 'Masculino', 'Santa Cruz', '679423');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion`
--

CREATE TABLE `transaccion` (
  `idtransaccion` int(11) NOT NULL,
  `nrocuenta` int(11) DEFAULT NULL,
  `cuentadestino` int(11) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `tipotransaccion` varchar(50) DEFAULT NULL,
  `fechatransaccion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `transaccion`
--

INSERT INTO `transaccion` (`idtransaccion`, `nrocuenta`, `cuentadestino`, `monto`, `tipotransaccion`, `fechatransaccion`) VALUES
(1, 1001, 2001, 1000.00, 'Transferencia', '2024-05-05 09:30:00'),
(2, 2001, 0, 200.00, 'Depósito', '2024-05-04 14:45:00'),
(3, 1001, 0, 300.00, 'Retiro', '2024-05-03 11:20:00'),
(4, 2001, 12001, 500.00, 'Transferencia', '2024-05-05 11:00:00'),
(5, 10001, 2001, 800.00, 'Transferencia', '2024-05-04 16:30:00'),
(6, 6001, 7001, 1200.00, 'Transferencia', '2024-05-03 13:45:00'),
(7, 7001, 0, 150.00, 'Depósito', '2024-05-02 10:20:00'),
(8, 8001, 0, 600.00, 'Retiro', '2024-05-01 09:15:00'),
(9, 10001, 2001, 700.00, 'Transferencia', '2024-04-30 14:00:00'),
(10, 11001, 1001, 250.00, 'Transferencia', '2024-04-29 12:30:00'),
(11, 12001, 0, 900.00, 'Retiro', '2024-04-28 11:45:00'),
(12, 13001, 1001, 1800.00, 'Transferencia', '2024-04-27 15:10:00'),
(13, 6001, 7001, 300.00, 'Transferencia', '2024-04-26 08:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuenta_bancaria`
--
ALTER TABLE `cuenta_bancaria`
  ADD PRIMARY KEY (`nrocuenta`),
  ADD KEY `idpersona` (`idpersona`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`);

--
-- Indices de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD PRIMARY KEY (`idtransaccion`),
  ADD KEY `nrocuenta` (`nrocuenta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  MODIFY `idtransaccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuenta_bancaria`
--
ALTER TABLE `cuenta_bancaria`
  ADD CONSTRAINT `cuenta_bancaria_ibfk_1` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`);

--
-- Filtros para la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD CONSTRAINT `transaccion_ibfk_1` FOREIGN KEY (`nrocuenta`) REFERENCES `cuenta_bancaria` (`nrocuenta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
