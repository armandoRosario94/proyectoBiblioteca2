-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2017 a las 19:46:51
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdbiblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `idUsuario` varchar(10) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `apellido` varchar(300) NOT NULL,
  `contrasena` blob NOT NULL,
  `genero` varchar(10) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`idUsuario`, `nombre`, `apellido`, `contrasena`, `genero`, `correo`, `estado`) VALUES
('claudia', 'claudia', 'ramirez', 0xc90f4c951b6faa71a2487b7af4a1f50c, 'Femenino', 'claudia@gmail.com', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bibliotecario`
--

CREATE TABLE `bibliotecario` (
  `idUsuario` varchar(10) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `apellido` varchar(300) NOT NULL,
  `contrasena` blob NOT NULL,
  `genero` varchar(10) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bibliotecario`
--

INSERT INTO `bibliotecario` (`idUsuario`, `nombre`, `apellido`, `contrasena`, `genero`, `correo`, `estado`) VALUES
('fabiola', 'fabiola', 'ramirez', 0xed6b78ad1a08433139380b675d84d6fd, 'Femenino', 'fabiola@gmail', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresainstitucion`
--

CREATE TABLE `empresainstitucion` (
  `idEmpresaInstitucionLugarTrabajo` varchar(10) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `telefono` int(12) NOT NULL,
  `direccion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lector`
--

CREATE TABLE `lector` (
  `idLector` varchar(10) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `apellido` varchar(300) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `telefono` int(12) NOT NULL,
  `telefonoReferencia` int(12) NOT NULL,
  `edad` int(3) NOT NULL,
  `codigoPostal` int(5) NOT NULL,
  `direccion` varchar(300) NOT NULL,
  `foto` blob NOT NULL,
  `idOcupacion` varchar(10) NOT NULL,
  `idEmpresaInstitucionLugarTrabajo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocupacion`
--

CREATE TABLE `ocupacion` (
  `idOcupacion` varchar(10) NOT NULL,
  `nombre` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `superusuario`
--

CREATE TABLE `superusuario` (
  `idUsuario` varchar(10) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `apellido` varchar(300) NOT NULL,
  `contrasena` blob NOT NULL,
  `genero` varchar(10) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `superusuario`
--

INSERT INTO `superusuario` (`idUsuario`, `nombre`, `apellido`, `contrasena`, `genero`, `correo`, `estado`) VALUES
('root', 'superUsuario', 'super Usuario', 0x0887931780a556b46ce32cc1471ecfc7, 'Masculino', 'jrp19941@gmail.com', 'activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lector`
--
ALTER TABLE `lector`
  ADD PRIMARY KEY (`idLector`),
  ADD KEY `idOcupacion` (`idOcupacion`,`idEmpresaInstitucionLugarTrabajo`);

--
-- Indices de la tabla `superusuario`
--
ALTER TABLE `superusuario`
  ADD PRIMARY KEY (`idUsuario`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
