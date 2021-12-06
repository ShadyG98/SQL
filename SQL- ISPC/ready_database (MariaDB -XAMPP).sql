-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2021 a las 06:23:08
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ready_database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `idEquipo` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo_has_usuario`
--

CREATE TABLE `equipo_has_usuario` (
  `Equipo_idEquipo` int(11) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `idPais` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`idPais`, `Nombre`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas (the)'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia (Plurinational State of)'),
(27, 'Bonaire, Sint Eustatius and Saba'),
(28, 'Bosnia and Herzegovina'),
(29, 'Botswana'),
(30, 'Bouvet Island'),
(31, 'Brazil'),
(32, 'British Indian Ocean Territory (the)'),
(33, 'Brunei Darussalam'),
(34, 'Bulgaria'),
(35, 'Burkina Faso'),
(36, 'Burundi'),
(37, 'Cabo Verde'),
(38, 'Cambodia'),
(39, 'Cameroon'),
(40, 'Canada'),
(41, 'Cayman Islands (the)'),
(42, 'Central African Republic (the)'),
(43, 'Chad'),
(44, 'Chile'),
(45, 'China'),
(46, 'Christmas Island'),
(47, 'Cocos (Keeling) Islands (the)'),
(48, 'Colombia'),
(49, 'Comoros (the)'),
(50, 'Congo (the Democratic Republic of the)'),
(51, 'Congo (the)'),
(52, 'Cook Islands (the)'),
(53, 'Costa Rica'),
(54, 'Croatia'),
(55, 'Cuba'),
(56, 'Curaçao'),
(57, 'Cyprus'),
(58, 'Czechia'),
(59, 'Denmark'),
(60, 'Djibouti'),
(61, 'Dominica'),
(62, 'Dominican Republic (the)'),
(63, 'Ecuador'),
(64, 'Egypt'),
(65, 'El Salvador'),
(66, 'Equatorial Guinea'),
(67, 'Eritrea'),
(68, 'Estonia'),
(69, 'Eswatini'),
(70, 'Ethiopia'),
(71, 'Falkland Islands (the) [Malvinas]'),
(72, 'Faroe Islands (the)'),
(73, 'Fiji'),
(74, 'Finland'),
(75, 'France'),
(76, 'French Guiana'),
(77, 'French Polynesia'),
(78, 'French Southern Territories (the)'),
(79, 'Gabon'),
(80, 'Gambia (the)'),
(81, 'Georgia'),
(82, 'Germany'),
(83, 'Ghana'),
(84, 'Gibraltar'),
(85, 'Greece'),
(86, 'Greenland'),
(87, 'Grenada'),
(88, 'Guadeloupe'),
(89, 'Guam'),
(90, 'Guatemala'),
(91, 'Guernsey'),
(92, 'Guinea'),
(93, 'Guinea-Bissau'),
(94, 'Guyana'),
(95, 'Haiti'),
(96, 'Heard Island and McDonald Islands'),
(97, 'Holy See (the)'),
(98, 'Honduras'),
(99, 'Hong Kong'),
(100, 'Hungary'),
(101, 'Iceland'),
(102, 'India'),
(103, 'Indonesia'),
(104, 'Iran (Islamic Republic of)'),
(105, 'Iraq'),
(106, 'Ireland'),
(107, 'Isle of Man'),
(108, 'Israel'),
(109, 'Italy'),
(110, 'Jamaica'),
(111, 'Japan'),
(112, 'Jersey'),
(113, 'Jordan'),
(114, 'Kazakhstan'),
(115, 'Kenya'),
(116, 'Kiribati'),
(117, 'Korea (the Republic of)'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Latvia'),
(121, 'Lebanon'),
(122, 'Lesotho'),
(123, 'Liberia'),
(124, 'Libya'),
(125, 'Liechtenstein'),
(126, 'Lithuania'),
(127, 'Luxembourg'),
(128, 'Macao'),
(129, 'Madagascar'),
(130, 'Malawi'),
(131, 'Malaysia'),
(132, 'Maldives'),
(133, 'Mali'),
(134, 'Malta'),
(135, 'Marshall Islands (the)'),
(136, 'Martinique'),
(137, 'Mauritania'),
(138, 'Mauritius'),
(139, 'Mayotte'),
(140, 'Mexico'),
(141, 'Micronesia (Federated States of)'),
(142, 'Moldova (the Republic of)'),
(143, 'Monaco'),
(144, 'Mongolia'),
(145, 'Montenegro'),
(146, 'Montserrat'),
(147, 'Morocco'),
(148, 'Mozambique'),
(149, 'Myanmar'),
(150, 'Namibia'),
(151, 'Nauru'),
(152, 'Nepal'),
(153, 'Netherlands (the)'),
(154, 'New Caledonia'),
(155, 'New Zealand'),
(156, 'Nicaragua'),
(157, 'Niger (the)'),
(158, 'Nigeria'),
(159, 'Niue'),
(160, 'Norfolk Island'),
(161, 'Northern Mariana Islands (the)'),
(162, 'Norway'),
(163, 'Oman'),
(164, 'Pakistan'),
(165, 'Palau'),
(166, 'Palestine, State of'),
(167, 'Panama'),
(168, 'Papua New Guinea'),
(169, 'Paraguay'),
(170, 'Peru'),
(171, 'Philippines (the)'),
(172, 'Pitcairn'),
(173, 'Poland'),
(174, 'Portugal'),
(175, 'Puerto Rico'),
(176, 'Qatar'),
(177, 'Republic of North Macedonia'),
(178, 'Romania'),
(179, 'Russian Federation (the)'),
(180, 'Rwanda'),
(181, 'Réunion'),
(182, 'Saint Barthélemy'),
(183, 'Saint Helena, Ascension and Tristan da Cunha'),
(184, 'Saint Kitts and Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Martin (French part)'),
(187, 'Saint Pierre and Miquelon'),
(188, 'Saint Vincent and the Grenadines'),
(189, 'Samoa'),
(190, 'San Marino'),
(191, 'Sao Tome and Principe'),
(192, 'Saudi Arabia'),
(193, 'Senegal'),
(194, 'Serbia'),
(195, 'Seychelles'),
(196, 'Sierra Leone'),
(197, 'Singapore'),
(198, 'Sint Maarten (Dutch part)'),
(199, 'Slovakia'),
(200, 'Slovenia'),
(201, 'Solomon Islands'),
(202, 'Somalia'),
(203, 'South Africa'),
(204, 'South Georgia and the South Sandwich Islands'),
(205, 'South Sudan'),
(206, 'Spain'),
(207, 'Sri Lanka'),
(208, 'Sudan (the)'),
(209, 'Suriname'),
(210, 'Svalbard and Jan Mayen'),
(211, 'Sweden'),
(212, 'Switzerland'),
(213, 'Syrian Arab Republic'),
(214, 'Taiwan'),
(215, 'Tajikistan'),
(216, 'Tanzania, United Republic of'),
(217, 'Thailand'),
(218, 'Timor-Leste'),
(219, 'Togo'),
(220, 'Tokelau'),
(221, 'Tonga'),
(222, 'Trinidad and Tobago'),
(223, 'Tunisia'),
(224, 'Turkey'),
(225, 'Turkmenistan'),
(226, 'Turks and Caicos Islands (the)'),
(227, 'Tuvalu'),
(228, 'Uganda'),
(229, 'Ukraine'),
(230, 'United Arab Emirates (the)'),
(231, 'United Kingdom of Great Britain and Northern '),
(232, 'United States Minor Outlying Islands (the)'),
(233, 'United States of America (the)'),
(234, 'Uruguay'),
(235, 'Uzbekistan'),
(236, 'Vanuatu'),
(237, 'Venezuela (Bolivarian Republic of)'),
(238, 'Viet Nam'),
(239, 'Virgin Islands (British)'),
(240, 'Virgin Islands (U.S.)'),
(241, 'Wallis and Futuna'),
(242, 'Western Sahara'),
(243, 'Yemen'),
(244, 'Zambia'),
(245, 'Zimbabwe'),
(246, 'Åland Islands');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE `tarea` (
  `idTarea` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  `Prioritario` bit(1) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tarea`
--

INSERT INTO `tarea` (`idTarea`, `Descripcion`, `Prioritario`, `idUsuario`) VALUES
(1, 'Aprender Jira', b'0', 1),
(2, 'Estudiar Bases de Datos', b'1', 1),
(3, 'Estudiar C#', b'1', 1),
(4, 'Aprender Infraestructura IT', b'1', 2),
(5, 'Leer sobre MongoDB', b'1', 2),
(6, 'Estudias SGC', b'0', 2),
(7, 'Estudiar Etica', b'0', 2),
(8, 'Entregar TP de ingles', b'0', 2),
(9, 'Finalizar tareas pendientes', b'0', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `idTelefono` int(11) NOT NULL,
  `Numero_Telefono` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`idTelefono`, `Numero_Telefono`) VALUES
(1, '3517668936'),
(2, '3517668940');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `Provincia` varchar(45) NOT NULL,
  `Fecha_Nacimiento` varchar(45) NOT NULL,
  `Codigo_Postal` varchar(45) NOT NULL,
  `Contraseña` varchar(45) NOT NULL,
  `idTelefono` int(11) NOT NULL,
  `idPais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `Nombre`, `Apellido`, `Correo`, `Provincia`, `Fecha_Nacimiento`, `Codigo_Postal`, `Contraseña`, `idTelefono`, `idPais`) VALUES
(1, 'Brenda', 'Escobar', 'brenda.giselle.escobar2014@gmail.com', 'Córdoba', '1998-08-11', '5016', '123', 1, 10),
(2, 'Diego', 'Silva', 'ddsilva8880@gmail.com', 'Córdoba', '1998-01-23', '5010', '1234', 2, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`idEquipo`);

--
-- Indices de la tabla `equipo_has_usuario`
--
ALTER TABLE `equipo_has_usuario`
  ADD PRIMARY KEY (`Equipo_idEquipo`,`Usuario_idUsuario`),
  ADD KEY `Usuario_idUsuario` (`Usuario_idUsuario`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`idPais`);

--
-- Indices de la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD PRIMARY KEY (`idTarea`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`idTelefono`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idTelefono` (`idTelefono`),
  ADD KEY `idPais` (`idPais`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `idEquipo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `idPais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT de la tabla `tarea`
--
ALTER TABLE `tarea`
  MODIFY `idTarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `telefono`
--
ALTER TABLE `telefono`
  MODIFY `idTelefono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipo_has_usuario`
--
ALTER TABLE `equipo_has_usuario`
  ADD CONSTRAINT `equipo_has_usuario_ibfk_1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`),
  ADD CONSTRAINT `equipo_has_usuario_ibfk_2` FOREIGN KEY (`Equipo_idEquipo`) REFERENCES `equipo` (`idEquipo`);

--
-- Filtros para la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD CONSTRAINT `tarea_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idPais`) REFERENCES `pais` (`idPais`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`idTelefono`) REFERENCES `telefono` (`idTelefono`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
