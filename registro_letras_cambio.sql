-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2020 a las 00:29:30
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro_letras_cambio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aceptante`
--

CREATE TABLE `aceptante` (
  `AcepCod` int(11) NOT NULL,
  `AcepRazSoc` varchar(70) DEFAULT NULL,
  `AcepNumDoc` varchar(11) NOT NULL,
  `AceprApePat` varchar(20) NOT NULL,
  `AcepApeMat` varchar(20) NOT NULL,
  `AcepNom` varchar(45) NOT NULL,
  `AcepDir` varchar(60) NOT NULL,
  `AcepTel` varchar(15) DEFAULT NULL,
  `DOCUMENTOIDENTIDAD_DocIdeCod` int(11) NOT NULL,
  `ESTADO_EstCod` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `aceptante`
--

INSERT INTO `aceptante` (`AcepCod`, `AcepRazSoc`, `AcepNumDoc`, `AceprApePat`, `AcepApeMat`, `AcepNom`, `AcepDir`, `AcepTel`, `DOCUMENTOIDENTIDAD_DocIdeCod`, `ESTADO_EstCod`) VALUES
(1, '', '34789087', 'Ccuno', 'Castro', 'Jerson', 'Paucarpata 303', '91234567', 1, 'A'),
(2, 'Jaimito.SAC', '23456789009', 'Arce', 'Apaza', 'Julio', 'Yura  403', '913456787', 2, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avales`
--

CREATE TABLE `avales` (
  `AvalCod` int(11) NOT NULL,
  `AvalRazSoc` varchar(70) DEFAULT NULL,
  `AvalNumDoc` varchar(11) NOT NULL,
  `AvalApePat` varchar(20) NOT NULL,
  `AvalApeMat` varchar(20) NOT NULL,
  `AvalNom` varchar(45) NOT NULL,
  `AvalDir` varchar(60) NOT NULL,
  `AvalTel` varchar(15) DEFAULT NULL,
  `DOCUMENTOIDENTIDAD_DocIdeCod` int(11) NOT NULL,
  `ESTADO_EstCod` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `avales`
--

INSERT INTO `avales` (`AvalCod`, `AvalRazSoc`, `AvalNumDoc`, `AvalApePat`, `AvalApeMat`, `AvalNom`, `AvalDir`, `AvalTel`, `DOCUMENTOIDENTIDAD_DocIdeCod`, `ESTADO_EstCod`) VALUES
(1, '', '65566556', 'Rojas', 'Caceres', 'Roxana', 'Carmen Alto 321', '912323223', 1, 'A'),
(2, 'Diego.SAC', '45544554567', 'Flores', 'Oxenford', 'Diego', 'La Molina 432', '95678988', 2, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bancos`
--

CREATE TABLE `bancos` (
  `BanCod` int(11) NOT NULL,
  `BanNom` varchar(40) NOT NULL,
  `BanOc` varchar(10) DEFAULT NULL,
  `BanCuent` varchar(24) NOT NULL,
  `ESTADO_EstCod` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `bancos`
--

INSERT INTO `bancos` (`BanCod`, `BanNom`, `BanOc`, `BanCuent`, `ESTADO_EstCod`) VALUES
(1, 'Interbank', '', '21345432345654323564', 'A'),
(2, 'Scotiabank', '', '56766545653476456534', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `CargCod` int(11) NOT NULL,
  `CargNom` varchar(45) NOT NULL,
  `ESTADO_EstCod` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`CargCod`, `CargNom`, `ESTADO_EstCod`) VALUES
(1, 'Gerente', 'A'),
(2, 'Contador', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentoidentidad`
--

CREATE TABLE `documentoidentidad` (
  `DocIdeCod` int(11) NOT NULL,
  `DocIdeNom` varchar(45) NOT NULL,
  `ESTADO_EstCod` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `documentoidentidad`
--

INSERT INTO `documentoidentidad` (`DocIdeCod`, `DocIdeNom`, `ESTADO_EstCod`) VALUES
(1, 'DNI', 'A'),
(2, 'RUC', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `EstCod` varchar(1) NOT NULL,
  `EstNom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`EstCod`, `EstNom`) VALUES
('*', 'Eliminado'),
('A', 'ACTIVO       '),
('I', 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugargiro`
--

CREATE TABLE `lugargiro` (
  `LugGirCod` varchar(6) NOT NULL,
  `LugGirNom` varchar(20) NOT NULL,
  `ESTADO_EstCod` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lugargiro`
--

INSERT INTO `lugargiro` (`LugGirCod`, `LugGirNom`, `ESTADO_EstCod`) VALUES
('010101', 'Chachapollas', 'A'),
('030101', 'Abancay', 'A'),
('040101', 'Arequipa', 'A'),
('150101', 'Lima', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registroletrascambio`
--

CREATE TABLE `registroletrascambio` (
  `RegLetCamCod` int(11) NOT NULL,
  `RegLetCamRef1` varchar(9) DEFAULT NULL,
  `RegLetCamRef2` varchar(9) DEFAULT NULL,
  `RegLetCamFecGirAño` varchar(4) NOT NULL,
  `RegLetCamFecGirMes` varchar(2) NOT NULL,
  `RegLetCamFecGirDia` varchar(2) NOT NULL,
  `RegLetCamFecVenAño` varchar(4) NOT NULL,
  `RegLetCamFecVenMes` varchar(2) NOT NULL,
  `RegLetCamFecVenDia` varchar(2) NOT NULL,
  `RegLetCamMont` decimal(65,1) NOT NULL,
  `LUGARGIRO_LugGirCod` varchar(6) NOT NULL,
  `TIPOMONEDA_TipMonCod` int(11) NOT NULL,
  `ACEPTANTE_AcepCod` int(11) NOT NULL,
  `AVALES_AvalCod` int(11) NOT NULL,
  `BANCOS_BanCod` int(11) NOT NULL,
  `REPRESENTANTEGIRADOR_RepGir1` int(11) NOT NULL,
  `ESTADO_EstCod` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registroletrascambio`
--

INSERT INTO `registroletrascambio` (`RegLetCamCod`, `RegLetCamRef1`, `RegLetCamRef2`, `RegLetCamFecGirAño`, `RegLetCamFecGirMes`, `RegLetCamFecGirDia`, `RegLetCamFecVenAño`, `RegLetCamFecVenMes`, `RegLetCamFecVenDia`, `RegLetCamMont`, `LUGARGIRO_LugGirCod`, `TIPOMONEDA_TipMonCod`, `ACEPTANTE_AcepCod`, `AVALES_AvalCod`, `BANCOS_BanCod`, `REPRESENTANTEGIRADOR_RepGir1`, `ESTADO_EstCod`) VALUES
(1, '', '', '2020', '03', '03', '2021', '05', '05', '5000.0', '010101', 1, 1, 2, 1, 1, 'A'),
(2, '', '', '2020', '04', '04', '2022', '09', '06', '100000.0', '030101', 2, 2, 1, 2, 1, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `representantegirador`
--

CREATE TABLE `representantegirador` (
  `RepGir` int(11) NOT NULL,
  `RepGirDNI` varchar(8) NOT NULL,
  `RepGirApePat` varchar(20) NOT NULL,
  `RepGirApeMat` varchar(20) NOT NULL,
  `RepGirNom` varchar(45) NOT NULL,
  `ESTADO_EstCod` varchar(1) NOT NULL,
  `CARGO_CargCod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `representantegirador`
--

INSERT INTO `representantegirador` (`RepGir`, `RepGirDNI`, `RepGirApePat`, `RepGirApeMat`, `RepGirNom`, `ESTADO_EstCod`, `CARGO_CargCod`) VALUES
(1, '87659878', 'Salas', 'Castillo', 'Julia', 'A', 1),
(2, '56781234', 'Mesas', 'Lopez', 'Karen', 'A', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `SucCod` int(11) NOT NULL,
  `SucNomOfi` varchar(60) NOT NULL,
  `SucDir` varchar(60) NOT NULL,
  `BANCOS_BanCod` int(11) NOT NULL,
  `LUGARGIRO_LugGirCod` varchar(6) NOT NULL,
  `ESTADO_EstCod` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`SucCod`, `SucNomOfi`, `SucDir`, `BANCOS_BanCod`, `LUGARGIRO_LugGirCod`, `ESTADO_EstCod`) VALUES
(1, '103', 'Cayma 233', 1, '040101', 'A'),
(2, '122', 'La molina 403', 2, '150101', 'A'),
(3, '234', 'Chachapollas 345', 1, '010101', 'A'),
(4, '12', 'Apurimac 435', 2, '030101', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomoneda`
--

CREATE TABLE `tipomoneda` (
  `TipMonCod` int(11) NOT NULL,
  `TipMonNom` varchar(20) NOT NULL,
  `ESTADO_EstCod` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipomoneda`
--

INSERT INTO `tipomoneda` (`TipMonCod`, `TipMonNom`, `ESTADO_EstCod`) VALUES
(1, 'Soles', 'A'),
(2, 'Dolares', 'A'),
(3, 'Euro', 'A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aceptante`
--
ALTER TABLE `aceptante`
  ADD PRIMARY KEY (`AcepCod`),
  ADD UNIQUE KEY `GirCod_UNIQUE` (`AcepCod`),
  ADD KEY `fk_ACEPTANTE_DOCUMENTOIDENTIDAD1_idx` (`DOCUMENTOIDENTIDAD_DocIdeCod`),
  ADD KEY `fk_ACEPTANTE_ESTADO1_idx` (`ESTADO_EstCod`);

--
-- Indices de la tabla `avales`
--
ALTER TABLE `avales`
  ADD PRIMARY KEY (`AvalCod`),
  ADD UNIQUE KEY `AvalCod_UNIQUE` (`AvalCod`),
  ADD KEY `fk_AVALES_DOCUMENTOIDENTIDAD1_idx` (`DOCUMENTOIDENTIDAD_DocIdeCod`),
  ADD KEY `fk_AVALES_ESTADO1_idx` (`ESTADO_EstCod`);

--
-- Indices de la tabla `bancos`
--
ALTER TABLE `bancos`
  ADD PRIMARY KEY (`BanCod`),
  ADD UNIQUE KEY `BanCod_UNIQUE` (`BanCod`),
  ADD KEY `fk_BANCOS_ESTADO1_idx` (`ESTADO_EstCod`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`CargCod`),
  ADD UNIQUE KEY `CargCod_UNIQUE` (`CargCod`),
  ADD KEY `fk_CARGO_ESTADO1_idx` (`ESTADO_EstCod`);

--
-- Indices de la tabla `documentoidentidad`
--
ALTER TABLE `documentoidentidad`
  ADD PRIMARY KEY (`DocIdeCod`),
  ADD UNIQUE KEY `DocIdeCod_UNIQUE` (`DocIdeCod`),
  ADD KEY `fk_DOCUMENTOIDENTIDAD_ESTADO1_idx` (`ESTADO_EstCod`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`EstCod`),
  ADD UNIQUE KEY `EstCod_UNIQUE` (`EstCod`);

--
-- Indices de la tabla `lugargiro`
--
ALTER TABLE `lugargiro`
  ADD PRIMARY KEY (`LugGirCod`),
  ADD UNIQUE KEY `LugGirCod_UNIQUE` (`LugGirCod`),
  ADD KEY `fk_LUGARGIRO_ESTADO1_idx` (`ESTADO_EstCod`);

--
-- Indices de la tabla `registroletrascambio`
--
ALTER TABLE `registroletrascambio`
  ADD PRIMARY KEY (`RegLetCamCod`),
  ADD UNIQUE KEY `RegLetCamCod_UNIQUE` (`RegLetCamCod`),
  ADD KEY `fk_REGISTROLETRASCAMBIO_LUGARGIRO1_idx` (`LUGARGIRO_LugGirCod`),
  ADD KEY `fk_REGISTROLETRASCAMBIO_TIPOMONEDA1_idx` (`TIPOMONEDA_TipMonCod`),
  ADD KEY `fk_REGISTROLETRASCAMBIO_ACEPTANTE1_idx` (`ACEPTANTE_AcepCod`),
  ADD KEY `fk_REGISTROLETRASCAMBIO_AVALES1_idx` (`AVALES_AvalCod`),
  ADD KEY `fk_REGISTROLETRASCAMBIO_BANCOS1_idx` (`BANCOS_BanCod`),
  ADD KEY `fk_REGISTROLETRASCAMBIO_REPRESENTANTEGIRADOR2_idx` (`REPRESENTANTEGIRADOR_RepGir1`),
  ADD KEY `fk_REGISTROLETRASCAMBIO_ESTADO1_idx` (`ESTADO_EstCod`);

--
-- Indices de la tabla `representantegirador`
--
ALTER TABLE `representantegirador`
  ADD PRIMARY KEY (`RepGir`),
  ADD UNIQUE KEY `RepGir_UNIQUE` (`RepGir`),
  ADD KEY `fk_REPRESENTANTEGIRADOR_ESTADO1_idx` (`ESTADO_EstCod`),
  ADD KEY `fk_REPRESENTANTEGIRADOR_CARGO1_idx` (`CARGO_CargCod`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`SucCod`),
  ADD UNIQUE KEY `SucCod_UNIQUE` (`SucCod`),
  ADD KEY `fk_SUCURSALES_BANCOS1_idx` (`BANCOS_BanCod`),
  ADD KEY `fk_SUCURSALES_LUGARGIRO1_idx` (`LUGARGIRO_LugGirCod`),
  ADD KEY `fk_SUCURSALES_ESTADO1_idx` (`ESTADO_EstCod`);

--
-- Indices de la tabla `tipomoneda`
--
ALTER TABLE `tipomoneda`
  ADD PRIMARY KEY (`TipMonCod`),
  ADD UNIQUE KEY `TipMonCod_UNIQUE` (`TipMonCod`),
  ADD KEY `fk_TIPOMONEDA_ESTADO1_idx` (`ESTADO_EstCod`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aceptante`
--
ALTER TABLE `aceptante`
  MODIFY `AcepCod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `avales`
--
ALTER TABLE `avales`
  MODIFY `AvalCod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `bancos`
--
ALTER TABLE `bancos`
  MODIFY `BanCod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `CargCod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `documentoidentidad`
--
ALTER TABLE `documentoidentidad`
  MODIFY `DocIdeCod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `registroletrascambio`
--
ALTER TABLE `registroletrascambio`
  MODIFY `RegLetCamCod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `representantegirador`
--
ALTER TABLE `representantegirador`
  MODIFY `RepGir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `SucCod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipomoneda`
--
ALTER TABLE `tipomoneda`
  MODIFY `TipMonCod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aceptante`
--
ALTER TABLE `aceptante`
  ADD CONSTRAINT `fk_ACEPTANTE_DOCUMENTOIDENTIDAD1` FOREIGN KEY (`DOCUMENTOIDENTIDAD_DocIdeCod`) REFERENCES `documentoidentidad` (`DocIdeCod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ACEPTANTE_ESTADO1` FOREIGN KEY (`ESTADO_EstCod`) REFERENCES `estado` (`EstCod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `avales`
--
ALTER TABLE `avales`
  ADD CONSTRAINT `fk_AVALES_DOCUMENTOIDENTIDAD1` FOREIGN KEY (`DOCUMENTOIDENTIDAD_DocIdeCod`) REFERENCES `documentoidentidad` (`DocIdeCod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AVALES_ESTADO1` FOREIGN KEY (`ESTADO_EstCod`) REFERENCES `estado` (`EstCod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `bancos`
--
ALTER TABLE `bancos`
  ADD CONSTRAINT `fk_BANCOS_ESTADO1` FOREIGN KEY (`ESTADO_EstCod`) REFERENCES `estado` (`EstCod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD CONSTRAINT `fk_CARGO_ESTADO1` FOREIGN KEY (`ESTADO_EstCod`) REFERENCES `estado` (`EstCod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `documentoidentidad`
--
ALTER TABLE `documentoidentidad`
  ADD CONSTRAINT `fk_DOCUMENTOIDENTIDAD_ESTADO1` FOREIGN KEY (`ESTADO_EstCod`) REFERENCES `estado` (`EstCod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `lugargiro`
--
ALTER TABLE `lugargiro`
  ADD CONSTRAINT `fk_LUGARGIRO_ESTADO1` FOREIGN KEY (`ESTADO_EstCod`) REFERENCES `estado` (`EstCod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `registroletrascambio`
--
ALTER TABLE `registroletrascambio`
  ADD CONSTRAINT `fk_REGISTROLETRASCAMBIO_ACEPTANTE1` FOREIGN KEY (`ACEPTANTE_AcepCod`) REFERENCES `aceptante` (`AcepCod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_REGISTROLETRASCAMBIO_AVALES1` FOREIGN KEY (`AVALES_AvalCod`) REFERENCES `avales` (`AvalCod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_REGISTROLETRASCAMBIO_BANCOS1` FOREIGN KEY (`BANCOS_BanCod`) REFERENCES `bancos` (`BanCod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_REGISTROLETRASCAMBIO_ESTADO1` FOREIGN KEY (`ESTADO_EstCod`) REFERENCES `estado` (`EstCod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_REGISTROLETRASCAMBIO_LUGARGIRO1` FOREIGN KEY (`LUGARGIRO_LugGirCod`) REFERENCES `lugargiro` (`LugGirCod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_REGISTROLETRASCAMBIO_REPRESENTANTEGIRADOR2` FOREIGN KEY (`REPRESENTANTEGIRADOR_RepGir1`) REFERENCES `representantegirador` (`RepGir`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_REGISTROLETRASCAMBIO_TIPOMONEDA1` FOREIGN KEY (`TIPOMONEDA_TipMonCod`) REFERENCES `tipomoneda` (`TipMonCod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `representantegirador`
--
ALTER TABLE `representantegirador`
  ADD CONSTRAINT `fk_REPRESENTANTEGIRADOR_CARGO1` FOREIGN KEY (`CARGO_CargCod`) REFERENCES `cargo` (`CargCod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_REPRESENTANTEGIRADOR_ESTADO1` FOREIGN KEY (`ESTADO_EstCod`) REFERENCES `estado` (`EstCod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD CONSTRAINT `fk_SUCURSALES_BANCOS1` FOREIGN KEY (`BANCOS_BanCod`) REFERENCES `bancos` (`BanCod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_SUCURSALES_ESTADO1` FOREIGN KEY (`ESTADO_EstCod`) REFERENCES `estado` (`EstCod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_SUCURSALES_LUGARGIRO1` FOREIGN KEY (`LUGARGIRO_LugGirCod`) REFERENCES `lugargiro` (`LugGirCod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tipomoneda`
--
ALTER TABLE `tipomoneda`
  ADD CONSTRAINT `fk_TIPOMONEDA_ESTADO1` FOREIGN KEY (`ESTADO_EstCod`) REFERENCES `estado` (`EstCod`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
