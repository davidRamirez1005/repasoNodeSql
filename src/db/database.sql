
CREATE DATABASE wyswebfa_guibis;
USE wyswebfa_guibis;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `nombres` varchar(200) DEFAULT NULL,
  `apellidos` varchar(200) DEFAULT NULL,
  `cedula` varchar(200) DEFAULT NULL,
  `cuenta_bancaria` varchar(200) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `celular` varchar(200) DEFAULT NULL,
  `foto_perfil` varchar(200) DEFAULT NULL,
  `img_qr` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `administradores` (`id`, `email`, `password`, `nombres`, `apellidos`, `cedula`, `cuenta_bancaria`, `fecha_creacion`, `celular`, `foto_perfil`, `img_qr`) VALUES
(1, '10004095632w@gmail.com', '9b6358d7bdc402b3931b6ff7eef058f5', 'admin', 'guibis', '99999999', '2206665812', '2021-06-20 10:00:15', '0998855160', 'alex2.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `asientos_contables`
--

CREATE TABLE `asientos_contables` (
  `id` int(11) NOT NULL,
  `secuencial` varchar(200) DEFAULT NULL,
  `iduser` varchar(200) DEFAULT NULL,
  `nombre_asiento` varchar(200) DEFAULT NULL,
  `fecha_asiento` varchar(200) DEFAULT NULL,
  `descripcion_concepto` varchar(200) DEFAULT NULL,
  `cuentas_capital_contable` varchar(200) DEFAULT NULL,
  `debe` varchar(200) DEFAULT NULL,
  `haber` varchar(200) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `busquedas`
--

CREATE TABLE `busquedas` (
  `id` int(11) NOT NULL,
  `id_usuario` int(50) DEFAULT NULL,
  `direccion_ip` varchar(200) DEFAULT NULL,
  `busqueda` varchar(200) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `tipo_busqueda` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `caja`
--

CREATE TABLE `caja` (
  `id` int(11) NOT NULL,
  `id_user` varchar(100) NOT NULL,
  `fecha_abrir_caja` datetime NOT NULL DEFAULT current_timestamp(),
  `fecha_cierre_caja` varchar(200) DEFAULT NULL,
  `entrada_caja` varchar(200) NOT NULL,
  `estado` varchar(200) NOT NULL DEFAULT 'ABIERTO',
  `subtotal_factura` varchar(200) DEFAULT NULL,
  `iva_factura` varchar(200) DEFAULT NULL,
  `total_factura` varchar(200) DEFAULT NULL,
  `subtotal_tiket` varchar(200) DEFAULT NULL,
  `iva_tiket` varchar(200) DEFAULT NULL,
  `total_tiket` varchar(200) DEFAULT NULL,
  `ganancias_caja` varchar(200) DEFAULT NULL,
  `importe_caja` varchar(200) DEFAULT NULL,
  `fecha_cierre` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `nombre` varchar(200) DEFAULT NULL,
  `id` int(200) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`nombre`, `id`, `imagen`) VALUES
('Sin Categoria', 0, ''),
('Tegnología y Computadoras', 1, 'tegnologia.png'),
('Libros', 2, ''),
('Ropa y Accesorios', 3, ''),
('Hogar y Cocina', 4, 'hogar.png'),
('Juegos Y Juguetes', 5, 'juegos.png'),
('Salud Y Belleza', 6, 'salud.png'),
('Alimentos Y Bebidas', 7, ''),
('Eventos', 8, ''),
('Cursos', 9, ''),
('Carros', 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `ciudad`
--

CREATE TABLE `ciudad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_p` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ciudad`
--

INSERT INTO `ciudad` (`id`, `nombre`, `id_p`) VALUES
(0, 'Seleccione la Ciudad', ''),
(1, 'Quito', '2'),
(2, 'Mejia', '2'),
(3, 'Ambato', '1'),
(4, 'Quero', '1'),
(5, 'Cayambe', '2'),
(6, 'Los Bancos', '2'),
(7, 'Pelileo', '1'),
(9, 'Baños', '1'),
(10, 'Cevallos', '1'),
(11, 'Mocha', '1'),
(12, 'Patate', '1'),
(13, 'Santiago de Píllaro', '1'),
(14, 'Tisaleo', '1'),
(15, '', ''),
(16, 'Cuenca', '4'),
(17, 'Camilo Ponce Enríquez', '4'),
(18, 'Chordeleg', '4'),
(19, 'El Pan', '4'),
(20, 'Girón', '4'),
(21, 'Guachapala', '4'),
(22, 'Gualaceo', '4'),
(23, 'Nabón', '4'),
(24, 'Oña', '4'),
(25, 'Paute', '4'),
(26, 'Pucará', '4'),
(27, 'San Fernando', '4'),
(28, 'Santa Isabel', '4'),
(29, 'Sevilla de Oro', '4'),
(30, 'Sígsig', '4'),
(36, 'Guaranda', '5'),
(37, 'Caluma', '5'),
(38, 'Chillanes', '5'),
(39, 'Chimbo', '5'),
(40, 'Echeandía', '5'),
(41, 'Las Naves', '5'),
(42, 'San Miguel', '5'),
(43, 'Azogues', '6'),
(44, 'Biblián', '6'),
(45, 'Cañar', '6'),
(46, 'Déleg', '6'),
(47, 'El Tambo', '6'),
(48, 'La Troncal', '6'),
(49, 'Suscal', '6'),
(50, 'Tulcán', '7'),
(51, 'Bolívar', '7'),
(52, 'Espejo', '7'),
(53, 'Mira', '7'),
(54, 'Montúfar', '7'),
(55, 'San Pedro de Huaca', '7'),
(56, 'Riobamba', '8'),
(57, 'Alausí', '8'),
(58, 'Chambo', '8'),
(59, 'Chunchi', '8'),
(60, 'Colta', '8'),
(61, 'Cumandá', '8'),
(62, 'Guamote', '8'),
(63, 'Guano', '8'),
(64, 'Pallatanga', '8'),
(65, 'Penipe', '8'),
(66, 'Latacunga', '9'),
(67, 'La Maná', '9'),
(68, 'Pangua', '9'),
(69, 'Pujilí', '9'),
(70, 'Salcedo', '9'),
(71, 'Saquisilí', '9'),
(72, 'Sigchos', '9'),
(73, 'Machala', '13'),
(74, 'Arenillas', '13'),
(75, 'Atahualpa', '13'),
(76, 'Balsas', '13'),
(77, 'Chilla', '13'),
(78, 'El Guabo', '13'),
(79, 'Huaquillas', '13'),
(80, 'Las Lajas', '13'),
(81, 'Marcabelí', '13'),
(82, 'Pasaje', '13'),
(83, 'Piñas', '13'),
(84, 'Portovelo', '13'),
(85, 'Santa Rosa', '13'),
(86, 'Zaruma', '13'),
(87, 'Esmeraldas', '14'),
(88, 'Atacames', '14'),
(89, 'Eloy Alfaro', '14'),
(90, 'Muisne', '14'),
(91, 'Quinindé', '14'),
(92, 'Rioverde', '14'),
(93, 'San Lorenzo', '14'),
(94, 'San Cristóbal', '25'),
(95, 'Isabela', '25'),
(96, 'Santa Cruz', '25'),
(97, 'Guayaquil', '15'),
(98, 'Alfredo Baquerizo Moreno', '15'),
(99, 'Balao', '15'),
(100, 'Balzar', '15'),
(101, 'Colimes', '15'),
(102, 'Daule', '15'),
(103, 'Durán', '15'),
(104, 'El Empalme', '15'),
(105, 'El Triunfo', '15'),
(106, 'General Antonio Elizalde', '15'),
(107, 'Isidro Ayora', '15'),
(108, 'Lomas de Sargentillo', '15'),
(109, 'Marcelino Maridueña', '15'),
(110, 'Milagro', '15'),
(111, 'Naranjal', '15'),
(112, 'Naranjito', '15'),
(113, 'Nobol', '15'),
(114, 'Palestina', '15'),
(115, 'Pedro Carbo', '15'),
(116, 'Playas', '15'),
(117, 'Salitre', '15'),
(118, 'Samborondón', '15'),
(119, 'Santa Lucía', '15'),
(120, 'Simón Bolívar', '15'),
(121, 'Yaguachi', '15'),
(122, 'Ibarra', '10'),
(123, 'Antonio Ante', '10'),
(124, 'Cotacachi', '10'),
(125, 'Otavalo', '10'),
(126, 'Pimampiro', '10'),
(127, 'San Miguel de Urcuquí', '10'),
(128, 'Loja', '11'),
(129, 'Calvas', '11'),
(130, 'Catamayo', '11'),
(131, 'Celica', '11'),
(132, 'Chaguarpamba', '11'),
(133, 'Espíndola', '11'),
(134, 'Gonzanamá', '11'),
(135, 'Macará', '11'),
(136, 'Olmedo', '11'),
(137, 'Paltas', '11'),
(138, 'Pindal', '11'),
(139, 'Puyango', '11'),
(140, 'Quilanga', '11'),
(141, 'Saraguro', '11'),
(142, 'Sozoranga', '11'),
(143, 'Zapotillo', '11'),
(144, 'Babahoyo', '16'),
(145, 'Baba', '16'),
(146, 'Buena Fe', '16'),
(147, 'Mocache', '16'),
(148, 'Montalvo', '16'),
(149, 'Palenque', '16'),
(150, 'Puebloviejo', '16'),
(151, 'Quevedo', '16'),
(152, 'Quinsaloma', '16'),
(153, 'Urdaneta', '16'),
(154, 'Valencia', '16'),
(155, 'Ventanas', '16'),
(156, 'Vinces', '16'),
(157, 'Portoviejo', '17'),
(158, '24 de Mayo', '17'),
(159, 'Bolívar', '17'),
(160, 'Chone', '17'),
(161, 'El Carmen', '17'),
(162, 'Flavio Alfaro', '17'),
(163, 'Jama', '17'),
(164, 'Jaramijó', '17'),
(165, 'Jipijapa', '17'),
(166, 'Junín', '17'),
(167, 'Manta', '17'),
(168, 'Montecristi', '17'),
(169, 'Olmedo', '17'),
(170, 'Paján', '17'),
(171, 'Pedernales', '17'),
(172, 'Pichincha', '17'),
(173, 'Puerto López', '17'),
(174, 'Rocafuerte', '17'),
(175, 'San Vicente', '17'),
(176, 'Santa Ana', '17'),
(177, 'Sucre', '17'),
(178, 'Tosagua', '17'),
(179, 'Morona', '19'),
(180, 'Gualaquiza', '19'),
(181, 'Huamboya', '19'),
(182, 'Limón Indanza', '19'),
(183, 'Logroño', '19'),
(184, 'Pablo Sexto', '19'),
(185, 'Palora', '19'),
(186, 'San Juan Bosco', '19'),
(187, 'Santiago de Méndez', '19'),
(188, 'Sucúa', '19'),
(189, 'Taisha', '19'),
(190, 'Tiwintza', '19'),
(191, 'Tena', '20'),
(192, 'Archidona', '20'),
(193, 'Carlos Julio Arosemena Tola', '20'),
(194, 'El Chaco', '20'),
(195, 'Quijos', '20'),
(196, 'Francisco de Orellana', '21'),
(197, 'Aguarico', '21'),
(198, 'La Joya de los Sachas', '21'),
(199, 'Loreto', '21'),
(200, 'Pastaza', '22'),
(201, 'Arajuno', '22'),
(202, 'Mera', '22'),
(203, 'Santa Clara', '22'),
(204, 'Pedro Moncayo', '2'),
(205, 'Pedro Vicente Maldonado', '2'),
(206, 'Puerto Quito', '2'),
(207, 'Rumiñahui', '2'),
(208, 'Santa Elena', '18'),
(209, 'La Libertad', '18'),
(210, 'Salinas', '18'),
(211, 'Santo Domingo', '12'),
(212, 'La Concordia', '12'),
(213, 'Lago Agrio', '23'),
(214, 'Cascales', '23'),
(215, 'Cuyabeno', '23'),
(216, 'Gonzalo Pizarro', '23'),
(217, 'Putumayo', '23'),
(218, 'Shushufindi', '23'),
(219, 'Sucumbíos', '23'),
(220, 'Zamora', '24'),
(221, 'Centinela del Cóndor', '24'),
(222, 'Chinchipe', '24'),
(223, 'El Pangui', '24'),
(224, 'Nangaritza', '24'),
(225, 'Palanda', '24'),
(226, 'Paquisha', '24'),
(227, 'Yacuambi', '24'),
(228, 'Yantzaza', '24');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombres` varchar(200) DEFAULT NULL,
  `iduser` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `tipo_identificacion` varchar(200) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `identificacion` varchar(200) DEFAULT NULL,
  `celular` varchar(200) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `foto` varchar(200) NOT NULL DEFAULT 'avatar.png',
  `tipo_cliente` varchar(200) NOT NULL,
  `estatus` varchar(200) NOT NULL DEFAULT '1',
  `sistema` varchar(200) DEFAULT NULL,
  `qr` varchar(200) DEFAULT NULL,
  `qr_contenido` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id`, `nombres`, `iduser`, `mail`, `tipo_identificacion`, `direccion`, `identificacion`, `celular`, `fecha`, `foto`, `tipo_cliente`, `estatus`, `sistema`, `qr`, `qr_contenido`) VALUES
(1, 'JULIANA SANDRA GUAPAZ LOPEZ', '2', 'julianaguapaz@gmail.com', '05', 'EN LA CASA', '0401823703', '0995283857', '2023-03-05 01:31:11', 'avatar.png', 'NATURAL', '1', 'facturacion', 'guibis0b32bb15992e6b07952149527a23b393.png', '8ca83540d50e415debf0f3fad613a7d4'),
(2, 'ESTEBAN WLADMIR MARTINEZ MARTINEZ', '2', '10004095632w@gmail.com', '05', 'EN LA CASA', '1004095632', '0995283857', '2023-03-05 01:31:50', 'avatar.png', 'NATURAL', '1', 'facturacion', 'guibis6c1c057bee775b00362f32d84a5d78f8.png', '62678577de33536757ae978249aa7c62');

-- --------------------------------------------------------

--
-- Table structure for table `codigos_producto`
--

CREATE TABLE `codigos_producto` (
  `id` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `idp` varchar(200) DEFAULT NULL,
  `id_user` varchar(200) DEFAULT NULL,
  `codigo` varchar(200) DEFAULT NULL,
  `estado` varchar(200) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compras_facturacion`
--

CREATE TABLE `compras_facturacion` (
  `id` int(11) NOT NULL,
  `secuencial` varchar(200) DEFAULT NULL,
  `iduser` varchar(200) DEFAULT NULL,
  `monto` varchar(200) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `identificacion_emisor` varchar(200) DEFAULT NULL,
  `razon_social_emisor` varchar(200) DEFAULT NULL,
  `identificacion_receptor` varchar(200) DEFAULT NULL,
  `clave_acceso` varchar(200) DEFAULT NULL,
  `fecha_emision_factura` varchar(200) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL DEFAULT current_timestamp(),
  `xml` varchar(200) DEFAULT NULL,
  `estatus` varchar(200) NOT NULL DEFAULT '1',
  `banco` varchar(200) DEFAULT NULL,
  `tipo_movimiento` varchar(200) DEFAULT NULL,
  `productos` varchar(200) DEFAULT NULL,
  `boucher` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comprobantes`
--

CREATE TABLE `comprobantes` (
  `id` int(11) NOT NULL,
  `id_emisor` varchar(200) NOT NULL,
  `id_receptor` varchar(200) DEFAULT NULL,
  `id_producto` varchar(200) NOT NULL,
  `nombre_producto` varchar(200) NOT NULL,
  `valor_unidad` varchar(200) NOT NULL,
  `descripcion_producto` text NOT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `detalle_extra` varchar(200) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `cantidad_producto` varchar(200) NOT NULL,
  `iva_producto` varchar(200) NOT NULL,
  `precio_neto` varchar(200) NOT NULL,
  `precio_p_incluido_iva` varchar(200) NOT NULL,
  `nombres_receptor` varchar(200) DEFAULT NULL,
  `numero_identidad_receptor` varchar(200) DEFAULT NULL,
  `tipo_identificacion` varchar(200) DEFAULT NULL,
  `email_reeptor` varchar(200) DEFAULT NULL,
  `direccion_reeptor` varchar(200) DEFAULT NULL,
  `celular_receptor` varchar(200) DEFAULT NULL,
  `codigo_factura` varchar(200) DEFAULT NULL,
  `tipo_ambiente` varchar(200) DEFAULT NULL,
  `formas_pago` varchar(200) DEFAULT NULL,
  `codigos_impuestos` varchar(200) DEFAULT NULL,
  `descuento` varchar(200) DEFAULT NULL,
  `incluye_iva` varchar(200) DEFAULT NULL,
  `efectivo` varchar(200) DEFAULT NULL,
  `vuelto` varchar(200) DEFAULT NULL,
  `iva_frontend` varchar(200) DEFAULT NULL,
  `subtotal_frontend` varchar(200) DEFAULT NULL,
  `estado_financiero` varchar(200) DEFAULT NULL,
  `limpiar_consola` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comprobante_factura_final`
--

CREATE TABLE `comprobante_factura_final` (
  `id` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `codigo_factura` varchar(200) DEFAULT NULL,
  `codigo_interno_factura` varchar(200) DEFAULT NULL,
  `secuencia` varchar(200) DEFAULT NULL,
  `id_emisor` varchar(200) DEFAULT NULL,
  `id_receptor` varchar(200) DEFAULT NULL,
  `xml_no_firmado` varchar(200) DEFAULT NULL,
  `xml_autorizado` varchar(200) DEFAULT NULL,
  `factura_pdf` varchar(200) DEFAULT NULL,
  `clave_acceso` varchar(200) DEFAULT NULL,
  `id_producto` varchar(200) DEFAULT NULL,
  `cantidad_producto` varchar(200) DEFAULT NULL,
  `precio_producto` varchar(200) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `precio_neto` varchar(200) DEFAULT NULL,
  `nombres_receptor` varchar(200) DEFAULT NULL,
  `email_receptor` varchar(200) DEFAULT NULL,
  `cedula_receptor` varchar(200) DEFAULT NULL,
  `direccion_receptor` varchar(200) DEFAULT NULL,
  `celular_receptor` varchar(200) DEFAULT NULL,
  `tipo_identificacion` varchar(200) DEFAULT NULL,
  `subtotal` varchar(200) DEFAULT NULL,
  `iva` varchar(200) DEFAULT NULL,
  `descuento_general` varchar(200) DEFAULT NULL,
  `total` varchar(200) DEFAULT NULL,
  `codigo_factura_credito` varchar(200) DEFAULT NULL,
  `nomnto_modificacion` varchar(200) DEFAULT NULL,
  `razon_modficiacion` varchar(200) DEFAULT NULL,
  `numDocModificado` varchar(200) DEFAULT NULL,
  `identificacion_nc` varchar(200) DEFAULT NULL,
  `clave_acceso_guia` varchar(200) DEFAULT NULL,
  `clave_acceso_factura` varchar(200) DEFAULT NULL,
  `direccion_partida` varchar(200) DEFAULT NULL,
  `direccion_llegada` varchar(200) DEFAULT NULL,
  `razon_social_transportista` varchar(200) DEFAULT NULL,
  `tipoIdentificacionTransportista` varchar(200) DEFAULT NULL,
  `fecha_inicio_transporte` varchar(200) DEFAULT NULL,
  `fecha_final_transporte` varchar(200) DEFAULT NULL,
  `placa_transportista` varchar(200) DEFAULT NULL,
  `ruc_transportista` varchar(200) DEFAULT NULL,
  `motivo_traslado` varchar(200) DEFAULT NULL,
  `comprobante` varchar(200) DEFAULT 'factura',
  `estado` varchar(200) NOT NULL DEFAULT 'COMPLETADO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comprobante_factura_final`
--

INSERT INTO `comprobante_factura_final` (`id`, `fecha`, `codigo_factura`, `codigo_interno_factura`, `secuencia`, `id_emisor`, `id_receptor`, `xml_no_firmado`, `xml_autorizado`, `factura_pdf`, `clave_acceso`, `id_producto`, `cantidad_producto`, `precio_producto`, `descripcion`, `precio_neto`, `nombres_receptor`, `email_receptor`, `cedula_receptor`, `direccion_receptor`, `celular_receptor`, `tipo_identificacion`, `subtotal`, `iva`, `descuento_general`, `total`, `codigo_factura_credito`, `nomnto_modificacion`, `razon_modficiacion`, `numDocModificado`, `identificacion_nc`, `clave_acceso_guia`, `clave_acceso_factura`, `direccion_partida`, `direccion_llegada`, `razon_social_transportista`, `tipoIdentificacionTransportista`, `fecha_inicio_transporte`, `fecha_final_transporte`, `placa_transportista`, `ruc_transportista`, `motivo_traslado`, `comprobante`, `estado`) VALUES
(1, '2023-03-05 01:14:51', '224', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'COMPLETADO'),
(2, '2023-03-05 01:32:37', '225', '24516cedf00dd0d98f6fceefbb9bdef2c2', NULL, '2', '1', NULL, '0403202301040082997400120010010000002251234567819.xml', NULL, '0403202301040082997400120010010000002251234567819', NULL, NULL, NULL, 'DIFENICC 100 cc', '1', 'JULIANA SANDRA GUAPAZ LOPEZ', 'JULIANAGUAPAZ@GMAIL.COM', '0401823703', 'EN LA CASA', '0995283857', '05', '1', '0', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(3, '2023-03-05 01:39:46', '226', '212f68b1472ba677e2504ae342559f6292', NULL, '2', '2', NULL, '0403202301040082997400120010010000002261234567814.xml', NULL, '0403202301040082997400120010010000002261234567814', NULL, NULL, NULL, 'SCORE LITRO', '1.5', 'ESTEBAN WLADMIR MARTINEZ MARTINEZ', '10004095632W@GMAIL.COM', '1004095632', 'EN LA CASA', '0995283857', '05', '2.5', '0', '0', '2.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(4, '2023-03-05 02:08:05', '227', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'COMPLETADO'),
(5, '2023-03-05 02:08:55', '228', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'COMPLETADO'),
(6, '2023-03-05 02:12:44', '212', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'COMPLETADO'),
(7, '2023-03-05 02:13:24', '213', '2a3fe49fd53c1398c4bc7c52804bce99b2', NULL, '2', '2', NULL, '0403202301040082997400120010010000002131234567813.xml', NULL, '0403202301040082997400120010010000002131234567813', NULL, NULL, NULL, 'SCORE LITRO', '1.5', 'ESTEBAN WLADMIR MARTINEZ MARTINEZ', '10004095632W@GMAIL.COM', '1004095632', 'EN LA CASA', '0995283857', '05', '1.5', '0', '0', '1.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(8, '2023-03-08 04:20:50', '313', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'COMPLETADO'),
(9, '2023-03-08 19:45:48', '314', '2026353dbdf259abe16b4a2b215a972252', NULL, '2', '', NULL, '0803202301040082997400120010010000003141234567810.xml', NULL, '0803202301040082997400120010010000003141234567810', NULL, NULL, NULL, 'CLORD lt', '1', 'ESTEBAN MARTINEZ', '10004095632w.com', '1004095632', 'Monte Olivo', '0998855160', '05', '1', '0', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'COMPLETADO'),
(10, '2023-03-08 19:46:48', '315', '2026353dbdf259abe16b4a2b215a972252', NULL, '2', '', NULL, '0803202301040082997400120010010000003151234567816.xml', NULL, '0803202301040082997400120010010000003151234567816', NULL, NULL, NULL, 'CLORD lt', '1', 'ESTEBAN MARTINEZ', '10004095632w.com', '1004095632', 'Monte Olivo', '0998855160', '05', '1', '0', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'COMPLETADO'),
(11, '2023-03-08 19:49:02', '316', '2e901aafcdd996ffe4acf54869dc115ac2', NULL, '2', '', NULL, '0803202301040082997400120010010000003161234567811.xml', NULL, '0803202301040082997400120010010000003161234567811', NULL, NULL, NULL, 'CLORD lt', '1', 'ESTEBAN MARTINEZ', '10004095632w.com', '1004095632', 'Monte Olivo', '0998855160', '05', '1', '0', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'COMPLETADO'),
(12, '2023-03-08 19:56:41', '99', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'COMPLETADO'),
(13, '2023-03-08 19:58:25', '100', '233980bd0562108e11daa373b398aa3f72', NULL, '2', '', NULL, '0803202301040082997400120010010000001001234567817.xml', NULL, '0803202301040082997400120010010000001001234567817', NULL, NULL, NULL, 'CLORD lt', '1', 'ESTEBAN MARTINEZ', '10004095632w.com', '1004095632', 'Monte Olivo', '0998855160', '05', '1', '0', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'COMPLETADO'),
(14, '2023-03-08 19:58:47', '101', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'COMPLETADO'),
(15, '2023-03-08 20:00:40', '102', '2a20db20015a61ee23f56171bb68c9b412', NULL, '2', '', NULL, '0803202301040082997400120010010000001021234567818.xml', NULL, '0803202301040082997400120010010000001021234567818', NULL, NULL, NULL, 'hola', '1', 'alex telenchana', 'alejiss401997@gmail.com', '1804843900', 'Ambato', '0998855160', '05', '2', '0.12', NULL, '2.12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(16, '2023-03-08 20:42:32', '103', '2930096a51edd68c5ceb034062a7c9fac2', NULL, '2', '', NULL, '0803202301040082997400120010010000001031234567813.xml', NULL, '0803202301040082997400120010010000001031234567813', NULL, NULL, NULL, 'hola', '1', 'JUAN PERES', 'alejiss401997@gmail.com', '1804843900', 'Ambato', '0998855160', '05', '25', '0', NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(17, '2023-03-08 23:18:15', '9', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(18, '2023-03-08 23:24:22', '10', '268a38d07b1e177d9b9205efc816092532', NULL, '2', '', NULL, '0803202301040082997400120010010000000101234567818.xml', NULL, '0803202301040082997400120010010000000101234567818', NULL, NULL, NULL, 'SCORES', '1', 'JUAN PERES', 'alejiss401997@gmail.com', '1804843900', 'Ambato', '0998855160', '05', '1', '0', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(19, '2023-03-08 23:27:18', '11', '2df436c8ec9b894a1f073d1637f9dd5e32', NULL, '2', '', NULL, '0803202301040082997400120010010000000111234567813.xml', NULL, '0803202301040082997400120010010000000111234567813', NULL, NULL, NULL, 'BORNEO', '1', 'JUAN PERES', 'alejiss401997@gmail.com', '1804843900', 'Ambato', '0998855160', '05', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(20, '2023-03-08 23:38:39', '12', '2687f2302fa7fe2f21ec23451899889ef2', NULL, '2', '', NULL, '0803202301040082997400120010010000000121234567819.xml', NULL, '0803202301040082997400120010010000000121234567819', NULL, NULL, NULL, 'BORNEO', '1', 'CASTRO HUERA RONALD DAVID', 'cahuroda9642645@estudiantes.edu.ec', '0450236575', 'JULIO ANDRADE', '0995283857', '05', '1', '0', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(21, '2023-03-09 16:15:30', '13', '21422a68e3473ad304a30518ec4a9c5112', NULL, '2', '', NULL, '0903202301040082997400120010010000000131234567819.xml', NULL, '0903202301040082997400120010010000000131234567819', NULL, NULL, NULL, 'BORNEO', '1', 'VILLOTA CHAPI PEDRO ISRAEL', 'vichpeis9279723@estudiantes.edu.ec', '0450226683001', 'JULIO ANDRADE', '0995283857', '04', '1', '0', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(22, '2023-03-09 16:43:15', '14', '2fcbb02f3f0bdbe0bef564a869111262a2', NULL, '2', '', NULL, '0903202301040082997400120010010000000141234567814.xml', NULL, '0903202301040082997400120010010000000141234567814', NULL, NULL, NULL, 'BORNEO', '10', 'ARTEAGA TABANGO TIFFANY ANTONELA', 'artatian12818407@estudiantes.edu.ec', '0450260872', 'JULIO ANDRADE', '0995283857', '05', '10', '0', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(23, '2023-03-29 23:02:26', '15', '2814c16f6d9cdd8dda48736d023cdbc752', NULL, '2', '', NULL, '2903202301040082997400120010010000000151234567817.xml', NULL, '2903202301040082997400120010010000000151234567817', NULL, NULL, NULL, 'OXITHANE 500 Gr', '4', 'CUACES RODRIGUEZ ALEJANDRA GISSEL', 'buguscpo12778224@estudiantes.edu.ec', '0450342621', 'EL ANGEL', '0995283857', '05', '4', '0', NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(24, '2023-03-29 23:06:27', '16', '2567a141f9335cad543160df089fc76572', NULL, '2', '', NULL, '2903202301040082997400120010010000000161234567812.xml', NULL, '2903202301040082997400120010010000000161234567812', NULL, NULL, NULL, 'SCORE', '1', 'CASTRO QUINTAS DAYRA LIZETH', 'buguscpo12778224@estudiantes.edu.ec', '0450339486', 'EL ANGEL', '0995283857', '05', '1', '0', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(25, '2023-03-30 03:04:55', '17', '232251407da66aca2a099133c2e1964752', NULL, '2', '', NULL, '2903202301040082997400120010010000000171234567818.xml', NULL, '2903202301040082997400120010010000000171234567818', NULL, NULL, NULL, 'SCORE', '1', 'RAMIREZ GUERRA JOHAN ALEXANDER', 'buguscpo12778224@estudiantes.edu.ec', '1050773843', 'EL ANGEL', '0995283857', '05', '1', '0', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(26, '2023-03-30 04:27:30', '18', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(27, '2023-03-30 04:28:20', '19', '29e81611ffc3c5e10c3bebe895e3717862', NULL, '2', '', NULL, '2903202301040082997400120010010000000191234567819.xml', NULL, '2903202301040082997400120010010000000191234567819', NULL, NULL, NULL, 'SCORE', '1', 'SANCHEZ HUACANES ESTALIN NICOLAS', 'buguscpo12778224@estudiantes.edu.ec', '0450340435', 'EL ANGEL', '0995283857', '05', '1', '0', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(28, '2023-03-30 04:32:07', '20', '2bb4b9bfdf122e51d27033545965f61fb2', NULL, '2', '', NULL, '2903202301040082997400120010010000000201234567814.xml', NULL, '2903202301040082997400120010010000000201234567814', NULL, NULL, NULL, 'SCORE', '1', 'SANCHEZ HUACANES ESTALIN NICOLAS', 'buguscpo12778224@estudiantes.edu.ec', '0450340435', 'EL ANGEL', '0995283857', '05', '1', '0', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(29, '2023-03-30 04:33:33', '21', '25ee9dd467b147494c872da004bea5b1f2', NULL, '2', '', NULL, '2903202301040082997400120010010000000211234567811.xml', NULL, '2903202301040082997400120010010000000211234567811', NULL, NULL, NULL, 'SCORE', '1', 'SANCHEZ HUACANES ESTALIN NICOLAS', 'buguscpo12778224@estudiantes.edu.ec', '0450340435', 'EL ANGEL', '0995283857', '05', '1', '0', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(30, '2023-03-30 04:34:33', '22', '25ee9dd467b147494c872da004bea5b1f2', NULL, '2', '', NULL, '2903202301040082997400120010010000000221234567815.xml', NULL, '2903202301040082997400120010010000000221234567815', NULL, NULL, NULL, 'SCORE', '1', 'SANCHEZ HUACANES ESTALIN NICOLAS', 'buguscpo12778224@estudiantes.edu.ec', '0450340435', 'EL ANGEL', '0995283857', '05', '1', '0', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(31, '2023-03-30 04:43:07', '23', '2bb4b9bfdf122e51d27033545965f61fb2', NULL, '2', '', NULL, '2903202301040082997400120010010000000231234567810.xml', NULL, '2903202301040082997400120010010000000231234567810', NULL, NULL, NULL, 'SCORE', '1', 'ESTRADA BORJA EDISON JUAQUIN', 'buguscpo12778224@estudiantes.edu.ec', '0450336227', 'EL ANGEL', '0995283857', '05', '1', '0', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(32, '2023-03-30 04:46:09', '24', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(33, '2023-03-30 12:51:21', '25', '2ddf73b4673bc8b6777fa6c4b5a9b69842', NULL, '2', '', NULL, '3003202301040082997400120010010000000251234567814.xml', NULL, '3003202301040082997400120010010000000251234567814', NULL, NULL, NULL, 'SCORE', '1', 'CUACES RODRIGUEZ ALEJANDRA GISSEL', 'buguscpo12778224@estudiantes.edu.ec', '0450342621', 'EL ANGEL', '0995283857', '05', '1', '0', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(34, '2023-03-30 18:10:58', '9', '00000000', NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(35, '2023-03-30 18:11:36', '9', '00000000', NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(36, '2023-03-30 18:13:42', '9', '00000000', NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(37, '2023-03-30 18:14:41', '0', '00000000', NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(38, '2023-03-30 18:15:13', '9', '00000000', NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(39, '2023-03-30 18:15:32', '9', '00000000', NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(40, '2023-03-30 18:15:38', '99', '00000000', NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(41, '2023-03-30 18:33:08', '9', '00000000', NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(42, '2023-03-30 18:56:10', '9', '00000000', NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(43, '2023-03-30 18:56:49', '19', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(44, '2023-03-30 18:57:11', '1', '00000000', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(45, '2023-03-30 18:57:57', '17', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(46, '2023-03-30 19:34:42', '19', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(47, '2023-03-31 01:07:58', '119', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(48, '2023-03-31 01:09:08', '25', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(49, '2023-03-31 01:09:29', '26', '2f71fd8ad3a3728da5b3caf82357da1922', NULL, '2', '', NULL, '3003202301040082997400120010010000000261234567811.xml', NULL, '3003202301040082997400120010010000000261234567811', NULL, NULL, NULL, 'BORNEO', '1', 'RAMIREZ QUESPAZ ALEXANDER DANIEL', 'sahuesni12928350@estudiantes.edu.ec', '0450349527', 'EL ANGEL', '0995283857', '05', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(50, '2023-03-31 04:23:07', '37', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(51, '2023-03-31 04:23:42', '26', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(52, '2023-03-31 04:25:07', '99', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(53, '2023-03-31 04:25:48', '119', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(54, '2023-03-31 04:26:07', '26', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(55, '2023-03-31 04:26:12', '26', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(56, '2023-04-01 13:34:43', '27', '252e67fa4eac7095123edfd65916b10552', NULL, '2', '', NULL, '0104202301040082997400120010010000000271234567815.xml', NULL, '0104202301040082997400120010010000000271234567815', NULL, NULL, NULL, 'SCORE', '5', 'CASTRO QUINTAS DAYRA LIZETH', 'chbokeme12176966@estudiantes.edu.ec', '0450339486', 'EL ANGEL', '0995283857', '05', '5', '0', NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(57, '2023-04-02 07:08:12', '28', '2b337a6c2be0c17a1ccd80814a06a2ddf2', NULL, '2', '', NULL, '0204202301040082997400120010010000000281234567815.xml', NULL, '0204202301040082997400120010010000000281234567815', NULL, NULL, NULL, 'SCORE', '1.25', 'MARTINEZ MARTINEZ ESTEBAN WLADIMIR', 'esteban.martinez@upec.edu.ec', '1004095632', 'MONTE OLIVO', '0995283857', '05', '1.25', '0', NULL, '1.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(58, '2023-04-02 07:23:37', '27', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(59, '2023-04-02 07:23:42', '28', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(60, '2023-04-02 19:12:59', '29', '2b16bc9ca47f70fd16228368aba7c776c2', NULL, '2', '', NULL, '0204202301040082997400120010010000000291234567810.xml', NULL, '0204202301040082997400120010010000000291234567810', NULL, NULL, NULL, 'ANTRACOL 400 Gr', '7.4', 'MARTINEZ MARTINEZ ESTEBAN WLADIMIR', 'esteban.martinez@upec.edu.ec', '1004095632', 'MONTE OLIVO', '0995283857', '05', '7.4', '0', NULL, '7.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(61, '2023-04-02 21:54:03', '30', '27afb79f784a7dcc23872383f50a6f7372', NULL, '2', '', NULL, '0204202301040082997400120010010000000301234567816.xml', NULL, '0204202301040082997400120010010000000301234567816', NULL, NULL, NULL, 'CAÃ‘ON', '1.5', 'MARTINEZ MARTINEZ ESTEBAN WLADIMIR', 'esteban.martinez@upec.edu.ec', '1004095632', 'MONTE OLIVO', '0995283857', '05', '1.5', '0', NULL, '1.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(62, '2023-04-02 22:00:35', '31', '269d02cc877817f72c60a161f7b61b3532', NULL, '2', '', NULL, '0204202301040082997400120010010000000311234567811.xml', NULL, '0204202301040082997400120010010000000311234567811', NULL, NULL, NULL, 'RIDOMIL 500 Gr', '15.8', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI/SPEJO/SAN ISIDRO/SUCRE Y COLON', '0981161128', '04', '24.9', '0', NULL, '24.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(63, '2023-04-02 22:07:13', '32', '2ea136909654d684e7d0c0dde03b8cba72', NULL, '2', '', NULL, '0204202301040082997400120010010000000321234567817.xml', NULL, '0204202301040082997400120010010000000321234567817', NULL, NULL, NULL, 'CAÃ‘ON', '1.5', 'REVELO QUISTIAL NAIDELYN YUBIRITH', 'naidereve2002@gmail.com', '0401969928', 'CARCHI ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0980054803', '05', '1.5', '0', NULL, '1.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(64, '2023-04-02 22:19:22', '33', '2d323accb85d9cd13f796e146989423832', NULL, '2', '', NULL, '0204202301040082997400120010010000000331234567812.xml', NULL, '0204202301040082997400120010010000000331234567812', NULL, NULL, NULL, 'TACORA 250 cc', '14.6', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI/SPEJO/SAN ISIDRO/SUCRE Y COLON', '0981161128', '04', '14.6', '0', NULL, '14.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(65, '2023-04-02 22:28:54', '34', '2d302793b0cf74fec8991d06bc92b4f6b2', NULL, '2', '', NULL, '0204202301040082997400120010010000000341234567818.xml', NULL, '0204202301040082997400120010010000000341234567818', NULL, NULL, NULL, 'RIDOMIL 500 GR', '15.8', 'REVELO QUISTIAL NAIDELYN YUBIRITH', 'naidereve2002@gmail.com', '0401969928', 'CARCHI ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0980054803', '05', '56', '0', NULL, '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(66, '2023-04-04 03:23:33', '35', '24127f5715615743fd5b722b2ffd80eec2', NULL, '2', '', NULL, '0304202301040082997400120010010000000351234567818.xml', NULL, '0304202301040082997400120010010000000351234567818', NULL, NULL, NULL, 'SCORE', '1.5', 'ESTRADA BORJA EDISON JUAQUIN', 'guqumajo13677366@estudiantes.edu.ec', '0450336227', 'EL ANGEL', '0995283861', '05', '1.5', '0', NULL, '1.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(67, '2023-04-04 05:49:18', '36', '24c008be0a7d6f406a1be001bdf3f20472', NULL, '2', '', NULL, '0404202301040082997400120010010000000361234567818.xml', NULL, '0404202301040082997400120010010000000361234567818', NULL, NULL, NULL, 'NAVAJA', '1.2', 'GUERRON QUESPAZ MAYKEL JOSUE', 'hucoemri12056835@estudiantes.edu.ec', '0450344650', 'EL ANGEL', '0995283862', '05', '1.2', '0', NULL, '1.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(68, '2023-04-05 04:04:03', '37', '22b67d09961a56be8fefc80b03e9cbff22', NULL, '2', '', NULL, '0404202301040082997400120010010000000371234567813.xml', NULL, '0404202301040082997400120010010000000371234567813', NULL, NULL, NULL, 'CIRCON 100 Gr', '3', 'RAMIREZ QUESPAZ ALEXANDER DANIEL', 'sahuesni12928350@estudiantes.edu.ec', '0450349527', 'EL ANGEL', '0995283867', '05', '3', '0', NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(69, '2023-04-05 04:14:10', '38', '2160a6b3bda6e5132a8dd5cfed052971f2', NULL, '2', '', NULL, '0404202301040082997400120010010000000381234567819.xml', NULL, '0404202301040082997400120010010000000381234567819', NULL, NULL, NULL, 'CIRCON 100 Gr', '3.3', 'BURGOS GUERRERO SCARLETH POLET', 'caqudali12798964@estudiantes.edu.ec', '0450352489', 'EL ANGEL', '0995283857', '05', '3.3', '0', NULL, '3.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(70, '2023-04-05 16:20:40', '39', '2c24eaae9f37fcdd8da201315079cca4c2', NULL, '2', '', NULL, '0504202301040082997400120010010000000391234567819.xml', NULL, '0504202301040082997400120010010000000391234567819', NULL, NULL, NULL, 'CURACRON 100 cc', '3.3', 'NARVAEZ CHAVEZ AILYN SCARLETH', 'pemonear11993360@estudiantes.edu.ec', '0450357694', 'EL ANGEL', '0995283864', '05', '3.3', '0', NULL, '3.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(71, '2023-04-06 01:31:33', '40', '2ee3d4f7fb05032d44536a04a6efae0012', NULL, '2', '', NULL, '0504202301040082997400120010010000000401234567814.xml', NULL, '0504202301040082997400120010010000000401234567814', NULL, NULL, NULL, 'KLERAT PELETS 20 Gr', '1.75', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '1.75', '0', NULL, '1.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(72, '2023-04-06 13:14:46', '41', '2e7d4aba8900e7b4ada346558d703ffe12', NULL, '2', '', NULL, '0604202301040082997400120010010000000411234567814.xml', NULL, '0604202301040082997400120010010000000411234567814', NULL, NULL, NULL, 'DIFECOR 100 cc', '4.5', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '27', '0', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(73, '2023-04-07 11:03:04', '42', '2bd88cd784019b0f859dbac6e523f457d2', NULL, '2', '', NULL, '0704202301040082997400120010010000000421234567814.xml', NULL, '0704202301040082997400120010010000000421234567814', NULL, NULL, NULL, 'SOLL 500 gr', '6', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@gmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '47.4', '0', NULL, '47.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(74, '2023-04-07 12:24:10', '43', '2ec9577d534fad27e486d9da9b5b429d12', NULL, '2', '', NULL, '0704202301040082997400120010010000000431234567811.xml', NULL, '0704202301040082997400120010010000000431234567811', NULL, NULL, NULL, 'SOLL 500 gr', '12.6', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '81.3', '0', NULL, '81.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(75, '2023-04-07 12:26:42', '44', '2ed72afd26d7321d34debaeecce7dfc672', NULL, '2', '', NULL, '0704202301040082997400120010010000000441234567815.xml', NULL, '0704202301040082997400120010010000000441234567815', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '14.4', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '68.6', '0', NULL, '68.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(76, '2023-04-07 12:28:54', '45', '2ef46437a19ec69843e7952e9b8ecbae42', NULL, '2', '', NULL, '0704202301040082997400120010010000000451234567810.xml', NULL, '0704202301040082997400120010010000000451234567810', NULL, NULL, NULL, 'FIJAFIJ  PLUS LITRO', '9.6', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '79.2', '0', NULL, '79.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(77, '2023-04-07 12:41:31', '46', '29f1fd49421b3edd70d2ed286604e6a092', NULL, '2', '', NULL, '0704202301040082997400120010010000000461234567816.xml', NULL, '0704202301040082997400120010010000000461234567816', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '14.4', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '35.5', '0', NULL, '35.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(78, '2023-04-07 12:43:53', '47', '20aba221c2af35800cc9180332b2d354e2', NULL, '2', '', NULL, '0704202301040082997400120010010000000471234567811.xml', NULL, '0704202301040082997400120010010000000471234567811', NULL, NULL, NULL, 'ELTRA 500 cc', '14.8', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '41.3', '0', NULL, '41.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(79, '2023-04-07 12:51:53', '48', '20aba221c2af35800cc9180332b2d354e2', NULL, '2', '', NULL, '0704202301040082997400120010010000000481234567817.xml', NULL, '0704202301040082997400120010010000000481234567817', NULL, NULL, NULL, 'FULL ALGAE 500', '6.3', 'NAIDELYN YUBIRITH REVELO QUISTIAL', 'naidereve2002@gmail.com', '0401969928', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0980054803', '05', '25.7', '0', NULL, '25.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(80, '2023-04-07 13:07:12', '49', '2d580fe8b4180bc9e873414ae7e55bb552', NULL, '2', '', NULL, '0704202301040082997400120010010000000491234567812.xml', NULL, '0704202301040082997400120010010000000491234567812', NULL, NULL, NULL, 'OXITHANE 500 Gr', '21', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '42.3', '0', NULL, '42.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(81, '2023-04-07 13:08:22', '50', '2e0ca7682ed8a98237efd4a0ba1be44aa2', NULL, '2', '', NULL, '0704202301040082997400120010010000000501234567818.xml', NULL, '0704202301040082997400120010010000000501234567818', NULL, NULL, NULL, 'COSAGRIN 80 Kg', '19.6', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@gmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '49.9', '0', NULL, '49.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(82, '2023-04-07 13:09:42', '51', '28a538c4a29a330110ea5133daa01ff0d2', NULL, '2', '', NULL, '0704202301040082997400120010010000000511234567813.xml', NULL, '0704202301040082997400120010010000000511234567813', NULL, NULL, NULL, 'SPECIAL ENGROSE LITRO', '11', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '26.2', '0', NULL, '26.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(83, '2023-04-07 13:13:05', '52', '221d794c8071d80b6a4074a9362c7f2c12', NULL, '2', '', NULL, '0704202301040082997400120010010000000521234567819.xml', NULL, '0704202301040082997400120010010000000521234567819', NULL, NULL, NULL, 'HORTISEC 200 gr', '15.2', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '26.2', '0', NULL, '26.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(84, '2023-04-07 13:17:14', '53', '2b232b757648e90326a3f35f125d266e62', NULL, '2', '', NULL, '0704202301040082997400120010010000000531234567814.xml', NULL, '0704202301040082997400120010010000000531234567814', NULL, NULL, NULL, 'SPECIAL ENGROSE LITRO', '22.5', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '22.5', '0', NULL, '22.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(85, '2023-04-07 13:41:37', '54', '2db1932ff409c89432db908d08e72f1922', NULL, '2', '', NULL, '0704202301040082997400120010010000000541234567811.xml', NULL, '0704202301040082997400120010010000000541234567811', NULL, NULL, NULL, 'TOPAS LITRO', '65', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0981161128', '04', '65', '0', NULL, '65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(86, '2023-04-07 18:56:57', '55', '25273ef3fff1581aeb3af27224798263b2', NULL, '2', '', NULL, '0704202301040082997400120010010000000551234567815.xml', NULL, '0704202301040082997400120010010000000551234567815', NULL, NULL, NULL, 'ACROBAT 750 Gr', '29.2', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '88.7', '0', NULL, '88.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(87, '2023-04-07 20:31:10', '56', '292eed2130044654a885babbf818ce7e12', NULL, '2', '', NULL, '0704202301040082997400120010010000000561234567810.xml', NULL, '0704202301040082997400120010010000000561234567810', NULL, NULL, NULL, 'DIFECOR 100 cc', '4.5', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '4.5', '0', NULL, '4.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(88, '2023-04-07 20:32:08', '57', '27170b715940fb7fbcebcec9ad2db92da2', NULL, '2', '', NULL, '0704202301040082997400120010010000000571234567816.xml', NULL, '0704202301040082997400120010010000000571234567816', NULL, NULL, NULL, 'SPECIAL ENGROSE 500 cc', '5.6', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@gmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '5.6', '0', NULL, '5.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(89, '2023-04-07 20:33:00', '58', '20f8c7d8a52829ed0ce42ba02192af26f2', NULL, '2', '', NULL, '0704202301040082997400120010010000000581234567811.xml', NULL, '0704202301040082997400120010010000000581234567811', NULL, NULL, NULL, 'FISH FERTILIZER 500 cc', '10.5', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '10.5', '0', NULL, '10.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(90, '2023-04-07 20:34:14', '59', '26b071eab1c8caaaf44a5d43faa3a8aed2', NULL, '2', '', NULL, '0704202301040082997400120010010000000591234567817.xml', NULL, '0704202301040082997400120010010000000591234567817', NULL, NULL, NULL, 'STIMULUS DESARROLLO 500 cc', '5.5', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '5.5', '0', NULL, '5.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(91, '2023-04-07 20:34:55', '60', '2b7a2ee1060acad46f6b7b0a81e15f37b2', NULL, '2', '', NULL, '0704202301040082997400120010010000000601234567812.xml', NULL, '0704202301040082997400120010010000000601234567812', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '7.2', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '7.2', '0', NULL, '7.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(92, '2023-04-07 21:57:48', '61', '29fc0085332eedda0f99f61052bd335cb2', NULL, '2', '', NULL, '0704202301040082997400120010010000000611234567818.xml', NULL, '0704202301040082997400120010010000000611234567818', NULL, NULL, NULL, 'FITORAZ 500 gr', '8.8', 'NAIDELYN YUBIRITH REVELO QUISTIAL', 'naidereve2002@gmail.com', '0401969928', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0980054803', '05', '20.7', '0', NULL, '20.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(93, '2023-04-07 22:27:22', '62', '261f6b7518525ee0c8a7be11260c31f6a2', NULL, '2', '', NULL, '0704202301040082997400120010010000000621234567813.xml', NULL, '0704202301040082997400120010010000000621234567813', NULL, NULL, NULL, 'KASUMIN 500 cc', '36', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '59.4', '0', NULL, '59.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(94, '2023-04-07 22:33:49', '63', '236f38fd0ada1b5b8634b241a1be7855d2', NULL, '2', '', NULL, '0704202301040082997400120010010000000631234567819.xml', NULL, '0704202301040082997400120010010000000631234567819', NULL, NULL, NULL, 'SOLL 500 gr', '25.2', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '73.6', '0', NULL, '73.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(95, '2023-04-07 22:54:41', '64', '25075c49643a761e95f249c7f051623502', NULL, '2', '', NULL, '0704202301040082997400120010010000000641234567814.xml', NULL, '0704202301040082997400120010010000000641234567814', NULL, NULL, NULL, 'FULL Ca. Br. 500 cc.', '28', 'CUPUERAN CARRERA ALEXANDRA DEL CARMEN', 'alexas6-24@hotmail.com', '1003839196001', 'CARH/ESPEJO/SAN ISIDRO/BOLIVAR', '0991009768', '04', '116.4', '0', NULL, '116.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(96, '2023-04-08 12:46:34', '65', '245f978db24c2b7e7fcda72a80616c6662', NULL, '2', '', NULL, '0804202301040082997400120010010000000651234567814.xml', NULL, '0804202301040082997400120010010000000651234567814', NULL, NULL, NULL, 'CURATHANE 500 Gr', '40.8', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '40.8', '0', NULL, '40.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(97, '2023-04-08 12:53:11', '66', '2e5f3940a56375a247d9a21e87d6b80f92', NULL, '2', '', NULL, '0804202301040082997400120010010000000661234567811.xml', NULL, '0804202301040082997400120010010000000661234567811', NULL, NULL, NULL, 'OXITHANE 500 Gr', '42', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '42', '0', NULL, '42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(98, '2023-04-08 12:55:05', '67', '235fd0d40f485edb09f6d1230940ceba42', NULL, '2', '', NULL, '0804202301040082997400120010010000000671234567815.xml', NULL, '0804202301040082997400120010010000000671234567815', NULL, NULL, NULL, 'PROMESS LITRO', '36.2', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '36.2', '0', NULL, '36.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(99, '2023-04-08 12:55:57', '68', '2a9326ebb8a1621a2541f2be4022d45a42', NULL, '2', '', NULL, '0804202301040082997400120010010000000681234567810.xml', NULL, '0804202301040082997400120010010000000681234567810', NULL, NULL, NULL, 'PILARTHIO LITRO', '27.2', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '27.2', '0', NULL, '27.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(100, '2023-04-08 12:56:51', '69', '2f40b71f666c1d5549107def27507ee712', NULL, '2', '', NULL, '0804202301040082997400120010010000000691234567816.xml', NULL, '0804202301040082997400120010010000000691234567816', NULL, NULL, NULL, 'STIMULUS  30-20 LITRO', '23.8', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '23.8', '0', NULL, '23.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(101, '2023-04-08 12:58:55', '70', '2d03ce3e07cd387020941ffb7ffe35fd72', NULL, '2', '', NULL, '0804202301040082997400120010010000000701234567811.xml', NULL, '0804202301040082997400120010010000000701234567811', NULL, NULL, NULL, 'SOLL 500 gr', '6', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '30.05', '0', NULL, '30.05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(102, '2023-04-08 13:00:11', '71', '231a809ecf22e50c7816c2255d2b4065c2', NULL, '2', '', NULL, '0804202301040082997400120010010000000711234567817.xml', NULL, '0804202301040082997400120010010000000711234567817', NULL, NULL, NULL, 'BOOSTER BLEND LITRO', '24.3', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '30.8', '0', NULL, '30.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(103, '2023-04-08 13:02:02', '72', '287970a53daedca4bde400f32ce433d5c2', NULL, '2', '', NULL, '0804202301040082997400120010010000000721234567812.xml', NULL, '0804202301040082997400120010010000000721234567812', NULL, NULL, NULL, 'PROMET BORO 500 cc', '7.8', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '39.5', '0', NULL, '39.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(104, '2023-04-08 14:29:51', '73', '28383cda14a8f7a7ba1e4c4c25a38937b2', NULL, '2', '', NULL, '0804202301040082997400120010010000000731234567818.xml', NULL, '0804202301040082997400120010010000000731234567818', NULL, NULL, NULL, 'FULL POTASIO 20 LITRO', '188', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '188', '0', NULL, '188', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(105, '2023-04-08 14:33:29', '74', '274a87ea3bde8d2d40b1429b0840dda152', NULL, '2', '', NULL, '0804202301040082997400120010010000000741234567813.xml', NULL, '0804202301040082997400120010010000000741234567813', NULL, NULL, NULL, 'KAÃ‘ON LITRO', '13.8', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '31.9', '0', NULL, '31.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(106, '2023-04-08 14:35:22', '75', '214ded5a2a6d0794e04e3205fe73e29bd2', NULL, '2', '', NULL, '0804202301040082997400120010010000000751234567819.xml', NULL, '0804202301040082997400120010010000000751234567819', NULL, NULL, NULL, 'KAÃ‘ON LITRO', '27.6', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '45.7', '0', NULL, '45.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(107, '2023-04-08 14:36:44', '76', '255f5c02719c7f5bf4b194b07023b3e622', NULL, '2', '', NULL, '0804202301040082997400120010010000000761234567814.xml', NULL, '0804202301040082997400120010010000000761234567814', NULL, NULL, NULL, 'PROMESS LITRO', '18.1', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '43.3', '0', NULL, '43.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(108, '2023-04-08 14:38:33', '77', '2375cf341af24f5acbc437ddbc93716ce2', NULL, '2', '', NULL, '0804202301040082997400120010010000000771234567811.xml', NULL, '0804202301040082997400120010010000000771234567811', NULL, NULL, NULL, 'QUITA LANCHA 500 Gr', '31', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '44.8', '0', NULL, '44.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(109, '2023-04-08 14:40:14', '78', '27bdb086b96cdaa30100b080a094696132', NULL, '2', '', NULL, '0804202301040082997400120010010000000781234567815.xml', NULL, '0804202301040082997400120010010000000781234567815', NULL, NULL, NULL, 'SOLL 500 gr', '25.2', 'POZO GUAMIALAMA WILSON PABLO', 'pabloguamialamapozo@gmail.com', '0401819685001', 'CARCHI/ESPEJO/SAN ISIDRO/INGUEZA', '0939368522', '04', '50', '0', NULL, '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO');
INSERT INTO `comprobante_factura_final` (`id`, `fecha`, `codigo_factura`, `codigo_interno_factura`, `secuencia`, `id_emisor`, `id_receptor`, `xml_no_firmado`, `xml_autorizado`, `factura_pdf`, `clave_acceso`, `id_producto`, `cantidad_producto`, `precio_producto`, `descripcion`, `precio_neto`, `nombres_receptor`, `email_receptor`, `cedula_receptor`, `direccion_receptor`, `celular_receptor`, `tipo_identificacion`, `subtotal`, `iva`, `descuento_general`, `total`, `codigo_factura_credito`, `nomnto_modificacion`, `razon_modficiacion`, `numDocModificado`, `identificacion_nc`, `clave_acceso_guia`, `clave_acceso_factura`, `direccion_partida`, `direccion_llegada`, `razon_social_transportista`, `tipoIdentificacionTransportista`, `fecha_inicio_transporte`, `fecha_final_transporte`, `placa_transportista`, `ruc_transportista`, `motivo_traslado`, `comprobante`, `estado`) VALUES
(110, '2023-04-08 14:41:19', '79', '2f0f459df996cfb8708dc8927def558e22', NULL, '2', '', NULL, '0804202301040082997400120010010000000791234567810.xml', NULL, '0804202301040082997400120010010000000791234567810', NULL, NULL, NULL, 'OPERA  LITRO', '66.3', 'HERRERA GUERRERO MANUELA MONSERRATH', 'manuherreraguerrero@gmail.com', '1004043236001', 'CARCHI/ESPEJO/SAN ISIDRO', '0939757292', '04', '66.3', '0', NULL, '66.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(111, '2023-04-08 14:43:45', '80', '2ffbd2ee04228104c094dd34891671a342', NULL, '2', '', NULL, '0804202301040082997400120010010000000801234567816.xml', NULL, '0804202301040082997400120010010000000801234567816', NULL, NULL, NULL, 'TOPAS LITRO', '65.4', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '65.4', '0', NULL, '65.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(112, '2023-04-08 14:45:00', '81', '208c8410e2f2d79cd898685ebda801ca82', NULL, '2', '', NULL, '0804202301040082997400120010010000000811234567811.xml', NULL, '0804202301040082997400120010010000000811234567811', NULL, NULL, NULL, 'SOLL 500 gr', '18.9', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '44.7', '0', NULL, '44.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(113, '2023-04-08 14:46:30', '82', '2a334bfb46724dba3af5d9b0869d6f9b32', NULL, '2', '', NULL, '0804202301040082997400120010010000000821234567817.xml', NULL, '0804202301040082997400120010010000000821234567817', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '21.6', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '59.1', '0', NULL, '59.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(114, '2023-04-08 15:00:19', '83', '253a11e92c7465c04f8d8a4d9ed449c802', NULL, '2', '', NULL, '0804202301040082997400120010010000000831234567812.xml', NULL, '0804202301040082997400120010010000000831234567812', NULL, NULL, NULL, 'FULL BORO MOLIBD. 20 LITROS', '220', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '220', '0', NULL, '220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(115, '2023-04-08 15:01:35', '84', '272970dbe60a81c5fc49a369e0e9718592', NULL, '2', '', NULL, '0804202301040082997400120010010000000841234567818.xml', NULL, '0804202301040082997400120010010000000841234567818', NULL, NULL, NULL, 'SPECIAL ENGROSE 20 LITROS', '170', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0981161128', '04', '170', '0', NULL, '170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(116, '2023-04-08 15:06:14', '85', '212a06228ce3ff1f70b6360810c3183f12', NULL, '2', '', NULL, '0804202301040082997400120010010000000851234567813.xml', NULL, '0804202301040082997400120010010000000851234567813', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '72', 'POZO NARVAEZ LUIS GALO', 'luispaznarva22@hotmail.com', '0401593660001', 'CARCHI/ESPEJO/EL ANGEL/PICHINCHA Y JOSE BENIGNO GRIJALVA', '0967083412', '04', '72', '0', NULL, '72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(117, '2023-04-08 15:07:51', '86', '263eb1453e4ec030bf059b3cd8db309c52', NULL, '2', '', NULL, '0804202301040082997400120010010000000861234567819.xml', NULL, '0804202301040082997400120010010000000861234567819', NULL, NULL, NULL, 'SOLL 500 gr', '12.6', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '53.8', '0', NULL, '53.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(118, '2023-04-08 15:09:08', '87', '2c2b7c92d7749bd2903e5e8628a3d18da2', NULL, '2', '', NULL, '0804202301040082997400120010010000000871234567814.xml', NULL, '0804202301040082997400120010010000000871234567814', NULL, NULL, NULL, 'QUITA LANCHA 500 Gr', '49.6', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '49.6', '0', NULL, '49.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(119, '2023-04-08 15:11:05', '88', '2214e84c7e8c734ae324315158bf0240b2', NULL, '2', '', NULL, '0804202301040082997400120010010000000881234567811.xml', NULL, '0804202301040082997400120010010000000881234567811', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '36', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '36', '0', NULL, '36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(120, '2023-04-08 15:12:10', '89', '28d2905540f3d5c6e778300deb263fd752', NULL, '2', '', NULL, '0804202301040082997400120010010000000891234567815.xml', NULL, '0804202301040082997400120010010000000891234567815', NULL, NULL, NULL, 'SOLL 500 gr', '25.2', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '61.2', '0', NULL, '61.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(121, '2023-04-08 16:13:26', '90', '25faa4249f808ad39746d2114b8f822052', NULL, '2', '', NULL, '0804202301040082997400120010010000000901234567810.xml', NULL, '0804202301040082997400120010010000000901234567810', NULL, NULL, NULL, 'DESNUKADOR LITRO', '30.4', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '30.4', '0', NULL, '30.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(122, '2023-04-08 16:15:03', '91', '26fb65cb8073d8660a3623b6a5f0a28c22', NULL, '2', '', NULL, '0804202301040082997400120010010000000911234567816.xml', NULL, '0804202301040082997400120010010000000911234567816', NULL, NULL, NULL, 'MITERRA 250 cc', '25.6', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0981161128', '04', '37.2', '0', NULL, '37.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(123, '2023-04-08 16:21:17', '92', '2fc204b1b602f6a232e483920e4bceff92', NULL, '2', '', NULL, '0804202301040082997400120010010000000921234567811.xml', NULL, '0804202301040082997400120010010000000921234567811', NULL, NULL, NULL, 'FULL COBRE  250 cc.', '8.6', 'NAIDELYN YUBIRITH REVELO QUISTIAL', 'naidereve2002@gmail.com', '0401969928', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0980054803', '05', '23', '0', NULL, '23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(124, '2023-04-08 16:29:35', '93', '2f7d3022a53d93592c19db9b559988edf2', NULL, '2', '', NULL, '0804202301040082997400120010010000000931234567817.xml', NULL, '0804202301040082997400120010010000000931234567817', NULL, NULL, NULL, 'SOLL 500 gr', '30', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '30', '0', NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(125, '2023-04-08 16:31:33', '94', '25bed37d4945a822b6842930f548cc4092', NULL, '2', '', NULL, '0804202301040082997400120010010000000941234567812.xml', NULL, '0804202301040082997400120010010000000941234567812', NULL, NULL, NULL, 'SOLL 500 gr', '18', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '29.5', '0', NULL, '29.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(126, '2023-04-08 16:35:11', '95', '2f3c1496f5990964546f92f687056a3142', NULL, '2', '', NULL, '0804202301040082997400120010010000000951234567818.xml', NULL, '0804202301040082997400120010010000000951234567818', NULL, NULL, NULL, 'SOLL 500 gr', '30', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '30', '0', NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(127, '2023-04-08 16:38:41', '96', '2a0d95953e783e19d13ba7858c60e8c192', NULL, '2', '', NULL, '0804202301040082997400120010010000000961234567813.xml', NULL, '0804202301040082997400120010010000000961234567813', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '43.2', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0981161128', '04', '43.2', '0', NULL, '43.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(128, '2023-04-08 16:42:07', '97', '29600378572e1a55d530f1e4f3412e1e32', NULL, '2', '', NULL, '0804202301040082997400120010010000000971234567819.xml', NULL, '0804202301040082997400120010010000000971234567819', NULL, NULL, NULL, 'TOPAS LITRO', '65.4', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0981161128', '04', '65.4', '0', NULL, '65.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(129, '2023-04-08 16:44:50', '98', '2f5d347851fc26a6b65f74332fc6b06f62', NULL, '2', '', NULL, '0804202301040082997400120010010000000981234567814.xml', NULL, '0804202301040082997400120010010000000981234567814', NULL, NULL, NULL, 'SOLL 500 gr', '25.2', 'HERRERA GUERRERO MANUELA MONSERRATH', 'manuherreraguerrero@gmail.com', '1004043236001', 'CARCHI/ESPEJO/SAN ISIDRO', '0939757292', '04', '43.3', '0', NULL, '43.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(130, '2023-04-08 16:50:03', '99', '26fb65cb8073d8660a3623b6a5f0a28c22', NULL, '2', '', NULL, '0804202301040082997400120010010000000991234567811.xml', NULL, '0804202301040082997400120010010000000991234567811', NULL, NULL, NULL, 'COSAGRIN 80 Kg', '39.2', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '39.2', '0', NULL, '39.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(131, '2023-04-08 16:52:36', '100', '2f94872843ed4d7767bfa58a19e15d55b2', NULL, '2', '', NULL, '0804202301040082997400120010010000001001234567813.xml', NULL, '0804202301040082997400120010010000001001234567813', NULL, NULL, NULL, 'DIFECOR 100 cc', '9', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '22.5', '0', NULL, '22.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(132, '2023-04-08 16:58:14', '101', '214c314233cd73c8df5f4d41276d9f7242', NULL, '2', '', NULL, '0804202301040082997400120010010000001011234567819.xml', NULL, '0804202301040082997400120010010000001011234567819', NULL, NULL, NULL, 'TOPAS LITRO', '65.4', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '65.4', '0', NULL, '65.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(133, '2023-04-08 17:09:04', '102', '206166b7de23970b24c961bd85863ea452', NULL, '2', '', NULL, '0804202301040082997400120010010000001021234567814.xml', NULL, '0804202301040082997400120010010000001021234567814', NULL, NULL, NULL, 'DIFECOR 100 cc', '4.5', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '4.5', '0', NULL, '4.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(134, '2023-04-08 17:13:18', '103', '241fc5da31550c7fa2ff16c4eea180a6b2', NULL, '2', '', NULL, '0804202301040082997400120010010000001031234567811.xml', NULL, '0804202301040082997400120010010000001031234567811', NULL, NULL, NULL, 'DIFECOR 100 cc', '4.5', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '4.5', '0', NULL, '4.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(135, '2023-04-08 17:14:25', '104', '279b4b0f19cceaea5ee17355f3af29efd2', NULL, '2', '', NULL, '0804202301040082997400120010010000001041234567815.xml', NULL, '0804202301040082997400120010010000001041234567815', NULL, NULL, NULL, 'DIFECOR 100 cc', '4.5', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '4.5', '0', NULL, '4.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(136, '2023-04-08 17:18:03', '105', '227e377c7717ed24f2e797b4cfae9b7ed2', NULL, '2', '', NULL, '0804202301040082997400120010010000001051234567810.xml', NULL, '0804202301040082997400120010010000001051234567810', NULL, NULL, NULL, 'RIDOMIL 500 Gr', '16', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '16', '0', NULL, '16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(137, '2023-04-08 17:19:16', '106', '23a17f096a44eaee0e20520af017d01192', NULL, '2', '', NULL, '0804202301040082997400120010010000001061234567816.xml', NULL, '0804202301040082997400120010010000001061234567816', NULL, NULL, NULL, 'QUITA LANCHA 500 Gr', '24.8', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '24.8', '0', NULL, '24.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(138, '2023-04-08 17:20:06', '107', '235e30f372f1c27cd0a1dce8e0bfc02382', NULL, '2', '', NULL, '0804202301040082997400120010010000001071234567811.xml', NULL, '0804202301040082997400120010010000001071234567811', NULL, NULL, NULL, 'SEAWEED FLUID LITRO', '21.8', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '21.8', '0', NULL, '21.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(139, '2023-04-08 17:20:54', '108', '2c70833001b91b0e52f1fa27b8614ec142', NULL, '2', '', NULL, '0804202301040082997400120010010000001081234567817.xml', NULL, '0804202301040082997400120010010000001081234567817', NULL, NULL, NULL, 'FULL ZIN LITRO', '11.9', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '11.9', '0', NULL, '11.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(140, '2023-04-08 17:22:02', '109', '2da7cdbebb15a5cc1da2e3fb856a5525c2', NULL, '2', '', NULL, '0804202301040082997400120010010000001091234567812.xml', NULL, '0804202301040082997400120010010000001091234567812', NULL, NULL, NULL, 'DIABLO LITRO', '14.6', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '27', '0', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(141, '2023-04-08 17:24:15', '110', '2b5a5cd5973ab1c2180df9057ad4489532', NULL, '2', '', NULL, '0804202301040082997400120010010000001101234567818.xml', NULL, '0804202301040082997400120010010000001101234567818', NULL, NULL, NULL, 'QUITA LANCHA 500 Gr', '31', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0981161128', '04', '31', '0', NULL, '31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(142, '2023-04-08 18:20:05', '111', '2612810f0391a0b6f096c3eed30cd365b2', NULL, '2', '', NULL, '0804202301040082997400120010010000001111234567813.xml', NULL, '0804202301040082997400120010010000001111234567813', NULL, NULL, NULL, 'SUKO  LITRO', '11.9', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '34.1', '0', NULL, '34.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(143, '2023-04-08 18:21:44', '112', '2a6be840181b0a01959564351c5904e012', NULL, '2', '', NULL, '0804202301040082997400120010010000001121234567819.xml', NULL, '0804202301040082997400120010010000001121234567819', NULL, NULL, NULL, 'DIABLO LITRO', '14.6', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '27', '0', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(144, '2023-04-08 18:22:59', '113', '2e02e44d80341701e3b5b79f3d93e70732', NULL, '2', '', NULL, '0804202301040082997400120010010000001131234567814.xml', NULL, '0804202301040082997400120010010000001131234567814', NULL, NULL, NULL, 'QUITA LANCHA 500 Gr', '12.4', 'NAIDELYN YUBIRITH REVELO QUISTIAL', 'naidereve2002@gmail.com', '0401969928', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0980054803', '05', '28.4', '0', NULL, '28.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(145, '2023-04-08 18:24:33', '114', '2e430ccbe4414a1496f838f24cc5c336a2', NULL, '2', '', NULL, '0804202301040082997400120010010000001141234567811.xml', NULL, '0804202301040082997400120010010000001141234567811', NULL, NULL, NULL, 'RIDOMIL 500 Gr', '16', 'YANEZ IMBAQUINGO SERGIO RENAN', 'renanyanez2010@hotmail.com', '0401605738001', 'CARCHI/ESPEJO/SAN ISIDRO/BOLIVAR', '0999542921', '04', '40.3', '0', NULL, '40.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(146, '2023-04-08 18:25:25', '115', '276005d1f418464c008486df1955e71302', NULL, '2', '', NULL, '0804202301040082997400120010010000001151234567815.xml', NULL, '0804202301040082997400120010010000001151234567815', NULL, NULL, NULL, 'SEAWEED FLUID LITRO', '21.8', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '21.8', '0', NULL, '21.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(147, '2023-04-08 18:28:11', '116', '2a26d92c13eb40f2ce7dc74d27473c3232', NULL, '2', '', NULL, '0804202301040082997400120010010000001161234567810.xml', NULL, '0804202301040082997400120010010000001161234567810', NULL, NULL, NULL, 'RIDOMIL 500 Gr', '32', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '32', '0', NULL, '32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(148, '2023-04-08 18:29:33', '117', '2e430ccbe4414a1496f838f24cc5c336a2', NULL, '2', '', NULL, '0804202301040082997400120010010000001171234567816.xml', NULL, '0804202301040082997400120010010000001171234567816', NULL, NULL, NULL, 'QUITA LANCHA 500 Gr', '12.4', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '34.2', '0', NULL, '34.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(149, '2023-04-08 18:30:36', '118', '2581fe9ed329763ff26f80061a402454d2', NULL, '2', '', NULL, '0804202301040082997400120010010000001181234567811.xml', NULL, '0804202301040082997400120010010000001181234567811', NULL, NULL, NULL, 'QUITA LANCHA 500 Gr', '18.6', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '30.5', '0', NULL, '30.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(150, '2023-04-08 18:31:51', '119', '24c924b8b0feeeb47c988143e9c68d97d2', NULL, '2', '', NULL, '0804202301040082997400120010010000001191234567817.xml', NULL, '0804202301040082997400120010010000001191234567817', NULL, NULL, NULL, 'SEAWEED FLUID LITRO', '43.6', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '43.6', '0', NULL, '43.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(151, '2023-04-08 18:32:26', '120', '257a3a6841bfd5d587c75a8fea81bb2e22', NULL, '2', '', NULL, '0804202301040082997400120010010000001201234567812.xml', NULL, '0804202301040082997400120010010000001201234567812', NULL, NULL, NULL, 'FULL ZIN LITRO', '23.8', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '23.8', '0', NULL, '23.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(152, '2023-04-08 18:54:20', '121', '2d9c35d34fdbe90bc1d2c2cd309ba75c72', NULL, '2', '', NULL, '0804202301040082997400120010010000001211234567818.xml', NULL, '0804202301040082997400120010010000001211234567818', NULL, NULL, NULL, 'FULL ZIN LITRO', '23.8', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '23.8', '0', NULL, '23.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(153, '2023-04-08 18:59:26', '122', '257a3a6841bfd5d587c75a8fea81bb2e22', NULL, '2', '', NULL, '0804202301040082997400120010010000001221234567813.xml', NULL, '0804202301040082997400120010010000001221234567813', NULL, NULL, NULL, 'MITERRA 250 cc', '25.6', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '25.6', '0', NULL, '25.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(154, '2023-04-08 19:01:24', '123', '25bc6f846970e8c2097e9a67c3411134c2', NULL, '2', '', NULL, '0804202301040082997400120010010000001231234567819.xml', NULL, '0804202301040082997400120010010000001231234567819', NULL, NULL, NULL, 'DESNUKADOR LITRO', '30.4', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '30.4', '0', NULL, '30.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(155, '2023-04-08 19:02:23', '124', '26f038874c74008c3368e71dcc33cbea72', NULL, '2', '', NULL, '0804202301040082997400120010010000001241234567814.xml', NULL, '0804202301040082997400120010010000001241234567814', NULL, NULL, NULL, 'COURAGE LITRO', '15.6', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0981161128', '04', '28.4', '0', NULL, '28.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(156, '2023-04-08 19:03:56', '125', '2bfd49afe56d160590742a37ffce31e0c2', NULL, '2', '', NULL, '0804202301040082997400120010010000001251234567811.xml', NULL, '0804202301040082997400120010010000001251234567811', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '14.4', 'NAIDELYN YUBIRITH REVELO QUISTIAL', 'naidereve2002@gmail.com', '0401969928', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0980054803', '05', '27.2', '0', NULL, '27.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(157, '2023-04-08 19:04:47', '126', '29a24f0676b358bf7d77deb549545e3e22', NULL, '2', '', NULL, '0804202301040082997400120010010000001261234567815.xml', NULL, '0804202301040082997400120010010000001261234567815', NULL, NULL, NULL, 'NUNCHAKU LITRO', '58.4', 'POZO GUAMIALAMA JOSE MIGUEL', 'jmiguelpozog@gmail.com', '0401152947001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0979441835', '04', '58.4', '0', NULL, '58.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(158, '2023-04-08 19:06:20', '127', '2b118ce42e8ac3142128f07221c68be6f2', NULL, '2', '', NULL, '0804202301040082997400120010010000001271234567810.xml', NULL, '0804202301040082997400120010010000001271234567810', NULL, NULL, NULL, 'FULL COBRE Litro', '13.7', 'POZO NARVAEZ LUIS GALO', 'luispaznarva22@hotmail.com', '0401593660001', 'CARCHI/ESPEJO/EL ANGEL/PICHINCHA Y JOSE BENIGNO GRIJALVA', '0967083412', '04', '26.5', '0', NULL, '26.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(159, '2023-04-08 19:07:51', '128', '23c53247baaa6aa97c747d7b3039517aa2', NULL, '2', '', NULL, '0804202301040082997400120010010000001281234567816.xml', NULL, '0804202301040082997400120010010000001281234567816', NULL, NULL, NULL, 'COURAGE LITRO', '15.6', 'YANEZ IMBAQUINGO SERGIO RENAN', 'renanyanez2010@hotmail.com', '0401605738001', 'CARCHI/ESPEJO/SAN ISIDRO/BOLIVAR', '0999542921', '04', '28.4', '0', NULL, '28.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(160, '2023-04-08 19:08:47', '129', '29a24f0676b358bf7d77deb549545e3e22', NULL, '2', '', NULL, '0804202301040082997400120010010000001291234567811.xml', NULL, '0804202301040082997400120010010000001291234567811', NULL, NULL, NULL, 'DESNUKADOR LITRO', '30.4', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '30.4', '0', NULL, '30.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(161, '2023-04-08 19:18:20', '130', '2b118ce42e8ac3142128f07221c68be6f2', NULL, '2', '', NULL, '0804202301040082997400120010010000001301234567817.xml', NULL, '0804202301040082997400120010010000001301234567817', NULL, NULL, NULL, 'MITERRA 250 cc', '25.6', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '32.8', '0', NULL, '32.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(162, '2023-04-08 19:19:33', '131', '28d29c3bfc4c8edd55785442a9da6f8152', NULL, '2', '', NULL, '0804202301040082997400120010010000001311234567812.xml', NULL, '0804202301040082997400120010010000001311234567812', NULL, NULL, NULL, 'NUNCHAKU LITRO', '58.4', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '58.4', '0', NULL, '58.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(163, '2023-04-08 19:25:06', '132', '201ea623f46da287b1e0c577110618c3b2', NULL, '2', '', NULL, '0804202301040082997400120010010000001321234567818.xml', NULL, '0804202301040082997400120010010000001321234567818', NULL, NULL, NULL, 'FULL COBRE Litro', '13.7', 'HERRERA GUERRERO MANUELA MONSERRATH', 'manuherreraguerrero@gmail.com', '1004043236001', 'CARCHI/ESPEJO/SAN ISIDRO', '0939757292', '04', '35.3', '0', NULL, '35.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(164, '2023-04-08 22:21:38', '133', '2f15c20c6111696b611b1c350a97b87932', NULL, '2', '', NULL, '0804202301040082997400120010010000001331234567813.xml', NULL, '0804202301040082997400120010010000001331234567813', NULL, NULL, NULL, 'SOLL 500 gr', '25.2', 'POZO GUAMIALAMA WILSON PABLO', 'pabloguamialamapozo@gmail.com', '0401819685001', 'CARCHI/ESPEJO/SAN ISIDRO/INGUEZA', '0939368522', '04', '25.2', '0', NULL, '25.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(165, '2023-04-08 22:23:03', '134', '29c14bc31feaa18d28e51c672f0234e852', NULL, '2', '', NULL, '0804202301040082997400120010010000001341234567819.xml', NULL, '0804202301040082997400120010010000001341234567819', NULL, NULL, NULL, 'STARNER  200 Gr.', '24.9', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '33.3', '0', NULL, '33.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(166, '2023-04-08 22:24:01', '135', '2b80ddd9972bb5c7f4c0bdc36ad0d1b462', NULL, '2', '', NULL, '0804202301040082997400120010010000001351234567814.xml', NULL, '0804202301040082997400120010010000001351234567814', NULL, NULL, NULL, 'COSAGRIN 80 Kg', '4.9', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '29.8', '0', NULL, '29.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(167, '2023-04-08 22:30:29', '136', '21c038523faa5ed2c16f95665134068782', NULL, '2', '', NULL, '0804202301040082997400120010010000001361234567811.xml', NULL, '0804202301040082997400120010010000001361234567811', NULL, NULL, NULL, 'DIFENICC 250 cc', '9', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '33.9', '0', NULL, '33.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(168, '2023-04-08 22:31:40', '137', '214c7ff43b4e91aae2058cd80117e55c12', NULL, '2', '', NULL, '0804202301040082997400120010010000001371234567815.xml', NULL, '0804202301040082997400120010010000001371234567815', NULL, NULL, NULL, 'STARNER  200 Gr.', '24.9', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '38.5', '0', NULL, '38.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(169, '2023-04-08 22:32:42', '138', '20bd56b051c637c1db20d2693b87455182', NULL, '2', '', NULL, '0804202301040082997400120010010000001381234567810.xml', NULL, '0804202301040082997400120010010000001381234567810', NULL, NULL, NULL, 'PIRESTAR LITRO', '27.9', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '27.9', '0', NULL, '27.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(170, '2023-04-08 22:33:21', '139', '2a0db4ce7d81ea8fab9f2651af02f71b52', NULL, '2', '', NULL, '0804202301040082997400120010010000001391234567816.xml', NULL, '0804202301040082997400120010010000001391234567816', NULL, NULL, NULL, 'ELTRA LITRO', '28.3', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '28.3', '0', NULL, '28.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(171, '2023-04-08 22:36:37', '140', '2a561c4fac6c4e8568431970f67cb4f792', NULL, '2', '', NULL, '0804202301040082997400120010010000001401234567811.xml', NULL, '0804202301040082997400120010010000001401234567811', NULL, NULL, NULL, 'SEAWEED FLUID LITRO', '21.8', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '40.4', '0', NULL, '40.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(172, '2023-04-08 22:37:51', '141', '2dc14089016ac196cbfa9f59ed6ed36f02', NULL, '2', '', NULL, '0804202301040082997400120010010000001411234567817.xml', NULL, '0804202301040082997400120010010000001411234567817', NULL, NULL, NULL, 'QUITA LANCHA 500 Gr', '18.6', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '39.6', '0', NULL, '39.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(173, '2023-04-08 22:39:19', '142', '2528444c32c5e446b50d58845bace9d152', NULL, '2', '', NULL, '0804202301040082997400120010010000001421234567812.xml', NULL, '0804202301040082997400120010010000001421234567812', NULL, NULL, NULL, 'PILARTHIO LITRO', '13.6', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '26', '0', NULL, '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(174, '2023-04-08 22:40:44', '143', '2201af1cf63d4446accb5a814157272fc2', NULL, '2', '', NULL, '0804202301040082997400120010010000001431234567818.xml', NULL, '0804202301040082997400120010010000001431234567818', NULL, NULL, NULL, 'PROMESS LITRO', '18.1', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '30.5', '0', NULL, '30.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(175, '2023-04-08 22:41:39', '144', '259f5c311c11e12610de43f14d988d6302', NULL, '2', '', NULL, '0804202301040082997400120010010000001441234567813.xml', NULL, '0804202301040082997400120010010000001441234567813', NULL, NULL, NULL, 'DIFENICC LITRO', '30.3', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '30.3', '0', NULL, '30.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(176, '2023-04-08 22:44:10', '145', '253a393006853ba835283539e035c11662', NULL, '2', '', NULL, '0804202301040082997400120010010000001451234567819.xml', NULL, '0804202301040082997400120010010000001451234567819', NULL, NULL, NULL, 'PROMESS LITRO', '18.1', 'NAIDELYN YUBIRITH REVELO QUISTIAL', 'naidereve2002@gmail.com', '0401969928', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0980054803', '05', '42.9', '0', NULL, '42.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(177, '2023-04-08 22:45:12', '146', '24de75e90efda554ded366c99ecf0794c2', NULL, '2', '', NULL, '0804202301040082997400120010010000001461234567814.xml', NULL, '0804202301040082997400120010010000001461234567814', NULL, NULL, NULL, 'PROMESS LITRO', '18.1', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0981161128', '04', '39.1', '0', NULL, '39.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(178, '2023-04-08 22:46:30', '147', '2cf482a309354276dba45d4a890dbfc992', NULL, '2', '', NULL, '0804202301040082997400120010010000001471234567811.xml', NULL, '0804202301040082997400120010010000001471234567811', NULL, NULL, NULL, 'PILARTHIO LITRO', '13.6', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '32.2', '0', NULL, '32.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(179, '2023-04-08 22:53:00', '148', '27a44f8ba8f148520ac14b5f42ad2185a2', NULL, '2', '', NULL, '0804202301040082997400120010010000001481234567815.xml', NULL, '0804202301040082997400120010010000001481234567815', NULL, NULL, NULL, 'QUITA LANCHA 500 Gr', '18.6', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '39.6', '0', NULL, '39.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(180, '2023-04-09 00:46:25', '12', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(181, '2023-04-09 00:47:04', '12', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(182, '2023-04-09 00:48:11', '12', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(183, '2023-04-09 00:50:24', '12', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(184, '2023-04-09 00:51:12', '148', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(185, '2023-04-09 01:36:25', '119', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(186, '2023-04-09 01:36:29', '149', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(187, '2023-04-09 01:36:34', '148', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(188, '2023-04-09 01:49:41', '159', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(189, '2023-04-09 01:49:48', '148', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(190, '2023-04-09 01:58:51', '149', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(191, '2023-04-09 01:58:56', '148', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(192, '2023-04-09 11:22:50', '149', '2b8b177f9c643c6be059dd8be03d837592', NULL, '2', '', NULL, '0904202301040082997400120010010000001491234567815.xml', NULL, '0904202301040082997400120010010000001491234567815', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(193, '2023-04-09 11:27:25', '221', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(194, '2023-04-09 11:28:39', '222', '2b9562f975ade2e6685d26c959e009d232', NULL, '2', '', NULL, '0904202301040082997400120010010000002221234567811.xml', NULL, '0904202301040082997400120010010000002221234567811', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(195, '2023-04-09 11:30:14', '223', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(196, '2023-04-09 11:30:57', '224', '2a5045b04d00977658c58ee6c553a7e952', NULL, '2', '', NULL, '0904202301040082997400120010010000002241234567812.xml', NULL, '0904202301040082997400120010010000002241234567812', NULL, NULL, NULL, 'DISFOL PH 100 cc', '1.8', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(197, '2023-04-09 11:31:58', '225', '277138bb1eb770d87f646d115d89d235b2', NULL, '2', '', NULL, '0904202301040082997400120010010000002251234567818.xml', NULL, '0904202301040082997400120010010000002251234567818', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(198, '2023-04-09 11:35:11', '226', '202e0159d6c54a8a9ad028f65696ee9812', NULL, '2', '', NULL, '0904202301040082997400120010010000002261234567813.xml', NULL, '0904202301040082997400120010010000002261234567813', NULL, NULL, NULL, 'DIFECOR 100 cc', '4.5', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '4.5', '0', NULL, '4.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(199, '2023-04-09 11:47:26', '234', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(200, '2023-04-09 11:48:26', '235', '20d1f2162a11adcb9cce1fd2fdc3d27fc2', NULL, '2', '', NULL, '0904202301040082997400120010010000002351234567812.xml', NULL, '0904202301040082997400120010010000002351234567812', NULL, NULL, NULL, 'MOXAN 500 gr', '6.1', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '6.1', '0', NULL, '6.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(201, '2023-04-09 11:49:41', '236', '2d9954ef400ffc36db47a2ebce547b2da2', NULL, '2', '', NULL, '0904202301040082997400120010010000002361234567818.xml', NULL, '0904202301040082997400120010010000002361234567818', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(202, '2023-04-09 11:50:39', '259', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(203, '2023-04-09 11:51:39', '260', '2b9562f975ade2e6685d26c959e009d232', NULL, '2', '', NULL, '0904202301040082997400120010010000002601234567819.xml', NULL, '0904202301040082997400120010010000002601234567819', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(204, '2023-04-09 11:52:09', '269', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(205, '2023-04-09 11:53:12', '270', '2b65964b0baa94ac4c3e8ed38e66f659e2', NULL, '2', '', NULL, '0904202301040082997400120010010000002701234567813.xml', NULL, '0904202301040082997400120010010000002701234567813', NULL, NULL, NULL, 'DISFOL PH 100 cc', '1.8', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(206, '2023-04-09 11:53:46', '283', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(207, '2023-04-09 11:54:24', '284', '242df42fe63acbee63362b9dbd9e3f74b2', NULL, '2', '', NULL, '0904202301040082997400120010010000002841234567811.xml', NULL, '0904202301040082997400120010010000002841234567811', NULL, NULL, NULL, 'DISFOL PH 100 cc', '1.8', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(208, '2023-04-09 12:03:28', '271', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(209, '2023-04-09 12:05:24', '272', '2372f415e3d660479396d219d34406ed02', NULL, '2', '', NULL, '0904202301040082997400120010010000002721234567814.xml', NULL, '0904202301040082997400120010010000002721234567814', NULL, NULL, NULL, 'DISFOL PH 100 cc', '1.8', 'POZO GUAMIALAMA WILSON PABLO', 'pabloguamialamapozo@gmail.com', '0401819685001', 'CARCHI/ESPEJO/SAN ISIDRO/INGUEZA', '0939368522', '04', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(210, '2023-04-09 12:06:36', '273', '2fa018310416bf330599fa21acd72b2f12', NULL, '2', '', NULL, '0904202301040082997400120010010000002731234567811.xml', NULL, '0904202301040082997400120010010000002731234567811', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(211, '2023-04-09 12:07:39', '313', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO');
INSERT INTO `comprobante_factura_final` (`id`, `fecha`, `codigo_factura`, `codigo_interno_factura`, `secuencia`, `id_emisor`, `id_receptor`, `xml_no_firmado`, `xml_autorizado`, `factura_pdf`, `clave_acceso`, `id_producto`, `cantidad_producto`, `precio_producto`, `descripcion`, `precio_neto`, `nombres_receptor`, `email_receptor`, `cedula_receptor`, `direccion_receptor`, `celular_receptor`, `tipo_identificacion`, `subtotal`, `iva`, `descuento_general`, `total`, `codigo_factura_credito`, `nomnto_modificacion`, `razon_modficiacion`, `numDocModificado`, `identificacion_nc`, `clave_acceso_guia`, `clave_acceso_factura`, `direccion_partida`, `direccion_llegada`, `razon_social_transportista`, `tipoIdentificacionTransportista`, `fecha_inicio_transporte`, `fecha_final_transporte`, `placa_transportista`, `ruc_transportista`, `motivo_traslado`, `comprobante`, `estado`) VALUES
(212, '2023-04-09 12:08:39', '314', '2781b466232921ce01d1e26611516dc762', NULL, '2', '', NULL, '0904202301040082997400120010010000003141234567811.xml', NULL, '0904202301040082997400120010010000003141234567811', NULL, NULL, NULL, 'DIFECOR 100 cc', '4.5', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '4.5', '0', NULL, '4.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(213, '2023-04-09 12:09:12', '315', '228a511ce913413a8c4af10b93f9143bc2', NULL, '2', '', NULL, '0904202301040082997400120010010000003151234567817.xml', NULL, '0904202301040082997400120010010000003151234567817', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(214, '2023-04-09 12:09:49', '316', '25b6ccf9494c958daf0a19d6832c838872', NULL, '2', '', NULL, '0904202301040082997400120010010000003161234567812.xml', NULL, '0904202301040082997400120010010000003161234567812', NULL, NULL, NULL, 'DISFOL PH 100 cc', '1.8', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(215, '2023-04-09 12:10:45', '0', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(216, '2023-04-09 12:11:00', '0', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(217, '2023-04-09 12:12:00', '1', '2d93a4b6fcd6713a113abfb51cfb16cb62', NULL, '2', '', NULL, '0904202301040082997400120010010000000011234567811.xml', NULL, '0904202301040082997400120010010000000011234567811', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(218, '2023-04-09 12:12:47', '2', '2a362224bc4edd5a991dc227ff57bf74e2', NULL, '2', '', NULL, '0904202301040082997400120010010000000021234567815.xml', NULL, '0904202301040082997400120010010000000021234567815', NULL, NULL, NULL, 'DISFOL PH 100 cc', '1.8', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(219, '2023-04-09 12:13:26', '3', '2eadf19636f9def69db64121102fca50f2', NULL, '2', '', NULL, '0904202301040082997400120010010000000031234567810.xml', NULL, '0904202301040082997400120010010000000031234567810', NULL, NULL, NULL, 'FULL COBRE  250 cc.', '4.3', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '4.3', '0', NULL, '4.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(220, '2023-04-09 12:14:21', '4', '2a45ff998b8e25cdeebe8bb33d023059a2', NULL, '2', '', NULL, '0904202301040082997400120010010000000041234567816.xml', NULL, '0904202301040082997400120010010000000041234567816', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(221, '2023-04-09 12:15:08', '5', '2f4c25e0e0e1281f49b61f90133a33d7d2', NULL, '2', '', NULL, '0904202301040082997400120010010000000051234567811.xml', NULL, '0904202301040082997400120010010000000051234567811', NULL, NULL, NULL, 'QUITA LANCHA 500 Gr', '6.2', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '6.2', '0', NULL, '6.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(222, '2023-04-09 12:15:50', '6', '21996bf9a2b9f29621486db3bf3c4c9252', NULL, '2', '', NULL, '0904202301040082997400120010010000000061234567817.xml', NULL, '0904202301040082997400120010010000000061234567817', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(223, '2023-04-09 12:16:39', '7', '2781b466232921ce01d1e26611516dc762', NULL, '2', '', NULL, '0904202301040082997400120010010000000071234567812.xml', NULL, '0904202301040082997400120010010000000071234567812', NULL, NULL, NULL, 'DIFECOR 100 cc', '4.5', 'HERRERA GUERRERO MANUELA MONSERRATH', 'manuherreraguerrero@gmail.com', '1004043236001', 'CARCHI/ESPEJO/SAN ISIDRO', '0939757292', '04', '4.5', '0', NULL, '4.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(224, '2023-04-09 12:17:38', '8', '21b4527e684d07030522444cdc701a9bf2', NULL, '2', '', NULL, '0904202301040082997400120010010000000081234567818.xml', NULL, '0904202301040082997400120010010000000081234567818', NULL, NULL, NULL, 'SUPER PRO. FLOR.  12-40- 13', '6.6', 'POZO GUAMIALAMA WILSON PABLO', 'pabloguamialamapozo@gmail.com', '0401819685001', 'CARCHI/ESPEJO/SAN ISIDRO/INGUEZA', '0939368522', '04', '6.6', '0', NULL, '6.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(225, '2023-04-09 12:18:34', '9', '27f311c0a0a5f2ec82435a0cbe83d560b2', NULL, '2', '', NULL, '0904202301040082997400120010010000000091234567813.xml', NULL, '0904202301040082997400120010010000000091234567813', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(226, '2023-04-09 12:20:14', '326', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(227, '2023-04-09 12:21:06', '426', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(228, '2023-04-09 12:21:24', '427', '2372f415e3d660479396d219d34406ed02', NULL, '2', '', NULL, '0904202301040082997400120010010000004271234567816.xml', NULL, '0904202301040082997400120010010000004271234567816', NULL, NULL, NULL, 'FITORAZ 500 gr', '8.7', 'CUPUERAN CARRERA ALEXANDRA DEL CARMEN', 'alexas6-24@hotmail.com', '1003839196001', 'CARH/ESPEJO/SAN ISIDRO/BOLIVAR', '0991009768', '04', '17.5', '0', NULL, '17.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(229, '2023-04-09 12:23:26', '336', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(230, '2023-04-09 12:24:29', '337', '2befdd20103e38dc52b88202d74286a782', NULL, '2', '', NULL, '0904202301040082997400120010010000003371234567817.xml', NULL, '0904202301040082997400120010010000003371234567817', NULL, NULL, NULL, 'QUITA LANCHA 500 Gr', '6.2', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '17.4', '0', NULL, '17.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(231, '2023-04-09 14:10:43', '338', '26bbdd5f60a8c73e3511ea224145e67172', NULL, '2', '', NULL, '0904202301040082997400120010010000003381234567812.xml', NULL, '0904202301040082997400120010010000003381234567812', NULL, NULL, NULL, 'FITORAZ 500 gr', '8.8', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '16.4', '0', NULL, '16.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(232, '2023-04-10 17:23:31', '339', '2de506c99bedc37cb828b1a7333f9f6c62', NULL, '2', '', NULL, '1004202301040082997400120010010000003391234567810.xml', NULL, '1004202301040082997400120010010000003391234567810', NULL, NULL, NULL, 'ACROBAT 750 Gr', '87.6', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '100', '0', NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(233, '2023-04-10 17:45:38', '340', '273d542082acadef131676219b0043f562', NULL, '2', '', NULL, '1004202301040082997400120010010000003401234567816.xml', NULL, '1004202301040082997400120010010000003401234567816', NULL, NULL, NULL, 'SCORE 100 cc', '38.8', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '76.2', '0', NULL, '76.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(234, '2023-04-10 17:50:39', '341', '2ed41bc49558b4a55dae3bd4ccdf55a162', NULL, '2', '', NULL, '1004202301040082997400120010010000003411234567811.xml', NULL, '1004202301040082997400120010010000003411234567811', NULL, NULL, NULL, 'OXITHANE 500 Gr', '14', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '65.3', '0', NULL, '65.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(235, '2023-04-10 17:53:52', '342', '2f0c885173f6ae32bd09a6d17ebaad10c2', NULL, '2', '', NULL, '1004202301040082997400120010010000003421234567817.xml', NULL, '1004202301040082997400120010010000003421234567817', NULL, NULL, NULL, 'STIMULUS  30-20 LITRO', '35.7', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '91.3', '0', NULL, '91.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(236, '2023-04-10 17:55:59', '343', '204857eafc01757ccaca2dcb0a8e742912', NULL, '2', '', NULL, '1004202301040082997400120010010000003431234567812.xml', NULL, '1004202301040082997400120010010000003431234567812', NULL, NULL, NULL, 'PILARTHIO LITRO', '13.3', 'POZO GUAMIALAMA WILSON PABLO', 'pabloguamialamapozo@gmail.com', '0401819685001', 'CARCHI/ESPEJO/SAN ISIDRO/INGUEZA', '0939368522', '04', '105.4', '0', NULL, '105.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(237, '2023-04-10 17:58:57', '344', '2cea52a67ae019f24fcc01d22cbea68732', NULL, '2', '', NULL, '1004202301040082997400120010010000003441234567818.xml', NULL, '1004202301040082997400120010010000003441234567818', NULL, NULL, NULL, 'CURATHANE 500 Gr', '28.4', 'HERRERA GUERRERO MANUELA MONSERRATH', 'manuherreraguerrero@gmail.com', '1004043236001', 'CARCHI/ESPEJO/SAN ISIDRO', '0939757292', '04', '93.5', '0', NULL, '93.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(238, '2023-04-10 18:01:16', '345', '20f800b11031d5f91dc3813c9c82d31772', NULL, '2', '', NULL, '1004202301040082997400120010010000003451234567813.xml', NULL, '1004202301040082997400120010010000003451234567813', NULL, NULL, NULL, 'OXITHANE 500 Gr', '35', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '83.8', '0', NULL, '83.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(239, '2023-04-11 13:12:05', '346', '29718bb4bb77c463adb44697518a06cef2', NULL, '2', '', NULL, '1104202301040082997400120010010000003461234567813.xml', NULL, '1104202301040082997400120010010000003461234567813', NULL, NULL, NULL, 'TIESO 100 Gr', '14', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '14', '0', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(240, '2023-04-11 13:14:40', '347', '295798dd0bfdd419464447419218337702', NULL, '2', '', NULL, '1104202301040082997400120010010000003471234567819.xml', NULL, '1104202301040082997400120010010000003471234567819', NULL, NULL, NULL, 'Diclofenaco  100 plus de 10 ml', '3.9', 'POZO GUAMIALAMA JOSE MIGUEL', 'jmiguelpozog@gmail.com', '0401152947001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0979441835', '04', '3.9', '0', NULL, '3.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(241, '2023-04-11 14:28:34', '348', '2d7b57b637f20948afb6bed7097a772192', NULL, '2', '', NULL, '1104202301040082997400120010010000003481234567814.xml', NULL, '1104202301040082997400120010010000003481234567814', NULL, NULL, NULL, 'NAKAR LITRO', '31.4', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '47', '0', NULL, '47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(242, '2023-04-11 14:31:07', '349', '27254f94d1a5348ed8f8893e3944bade72', NULL, '2', '', NULL, '1104202301040082997400120010010000003491234567811.xml', NULL, '1104202301040082997400120010010000003491234567811', NULL, NULL, NULL, 'NAKAR LITRO', '31.4', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '66.8', '0', NULL, '66.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(243, '2023-04-11 15:23:47', '350', '2eaf5cdf04a226150007e371b7f176e642', NULL, '2', '', NULL, '1104202301040082997400120010010000003501234567815.xml', NULL, '1104202301040082997400120010010000003501234567815', NULL, NULL, NULL, 'ZINAPRIM', '3.2', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '42.6', '0', NULL, '42.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(244, '2023-04-11 15:27:09', '351', '2f1a39c77b35837acad39597724b73c772', NULL, '2', '', NULL, '1104202301040082997400120010010000003511234567810.xml', NULL, '1104202301040082997400120010010000003511234567810', NULL, NULL, NULL, 'Bolos de Browni-vit 5 cc', '2.9', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '55.7', '0', NULL, '55.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(245, '2023-04-11 19:25:55', '352', '21e567ac036b0e9fbd85a2c2496a03df02', NULL, '2', '', NULL, '1104202301040082997400120010010000003521234567816.xml', NULL, '1104202301040082997400120010010000003521234567816', NULL, NULL, NULL, 'Ahujas Desech.16 * 1', '0.1', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '0.1', '0', NULL, '0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(246, '2023-04-11 19:28:08', '353', '2091273628a17149a2a946595af86d1aa2', NULL, '2', '', NULL, '1104202301040082997400120010010000003531234567811.xml', NULL, '1104202301040082997400120010010000003531234567811', NULL, NULL, NULL, 'Ahujas Desech. 18 *1 1/2', '0.1', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '0.1', '0', NULL, '0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(247, '2023-04-11 19:29:45', '354', '26c445952390ec5f037a93c9a78ed98c92', NULL, '2', '', NULL, '1104202301040082997400120010010000003541234567817.xml', NULL, '1104202301040082997400120010010000003541234567817', NULL, NULL, NULL, 'Neumobac, 5 ml', '1.7', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '1.7', '0', NULL, '1.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(248, '2023-04-11 19:30:50', '355', '25ff309431a3935bd76775f191f730e142', NULL, '2', '', NULL, '1104202301040082997400120010010000003551234567812.xml', NULL, '1104202301040082997400120010010000003551234567812', NULL, NULL, NULL, 'VAC. Porcina 4 ml -2 dosis', '3.25', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '3.25', '0', NULL, '3.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(249, '2023-04-11 19:32:32', '356', '22c60f1ee970fcdf1ebdce3a07fcbc3932', NULL, '2', '', NULL, '1104202301040082997400120010010000003561234567818.xml', NULL, '1104202301040082997400120010010000003561234567818', NULL, NULL, NULL, 'Albendazol  al 25 %  de 7,5 cc', '1.7', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '1.7', '0', NULL, '1.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(250, '2023-04-11 23:23:59', '357', '215e16a55a58115b518a9cf861b8ff7e62', NULL, '2', '', NULL, '1104202301040082997400120010010000003571234567813.xml', NULL, '1104202301040082997400120010010000003571234567813', NULL, NULL, NULL, 'Albendazol  al 25 %  de 7,5 cc', '1.7', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '37.05', '0', NULL, '37.05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(251, '2023-04-11 23:30:25', '358', '22f243dad65c284cf226c2fea49edc9f32', NULL, '2', '', NULL, '1104202301040082997400120010010000003581234567819.xml', NULL, '1104202301040082997400120010010000003581234567819', NULL, NULL, NULL, 'Bolos Comple B.20 cc', '0.85', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '27.6', '0', NULL, '27.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(252, '2023-04-12 00:48:50', '165', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(253, '2023-04-12 00:51:07', '166', '211b2d084221b3be54aa29c4d301c4cfb2', NULL, '2', '', NULL, '1104202301040082997400120010010000001661234567815.xml', NULL, '1104202301040082997400120010010000001661234567815', NULL, NULL, NULL, 'Bolo de Levamisol 20 ml', '1.3', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '4.7', '0', NULL, '4.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(254, '2023-04-12 00:54:04', '167', '2db0077f41a8a4642290b7a1a36ae8cd22', NULL, '2', '', NULL, '1104202301040082997400120010010000001671234567810.xml', NULL, '1104202301040082997400120010010000001671234567810', NULL, NULL, NULL, 'ZINAPRIM', '1.6', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '6.4', '0', NULL, '6.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(255, '2023-04-12 00:55:37', '168', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(256, '2023-04-12 00:56:50', '169', '246bab538b8268274ae531ba51d81d8212', NULL, '2', '', NULL, '1104202301040082997400120010010000001691234567811.xml', NULL, '1104202301040082997400120010010000001691234567811', NULL, NULL, NULL, 'SOBRE DE OXITETRACICLINA  DE 20 gr.', '3.45', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '3.45', '0', NULL, '3.45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(257, '2023-04-12 00:58:12', '170', '26c5f19fe40be6658c8e3a2fb1e085a782', NULL, '2', '', NULL, '1104202301040082997400120010010000001701234567817.xml', NULL, '1104202301040082997400120010010000001701234567817', NULL, NULL, NULL, 'Polimast Rojo 10 ml', '5', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '5', '0', NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(258, '2023-04-12 01:03:00', '171', '26a7e62a124fe60a5d60beed2b569f4bd2', NULL, '2', '', NULL, '1104202301040082997400120010010000001711234567812.xml', NULL, '1104202301040082997400120010010000001711234567812', NULL, NULL, NULL, 'Flumezona  de 10 ml', '3.8', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '6.7', '0', NULL, '6.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(259, '2023-04-12 01:03:37', '172', '29f46a65f0caedca3d36335e5186d65a22', NULL, '2', '', NULL, '1104202301040082997400120010010000001721234567818.xml', NULL, '1104202301040082997400120010010000001721234567818', NULL, NULL, NULL, 'Flunixin de  JB 20 ml', '5.9', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '5.9', '0', NULL, '5.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(260, '2023-04-12 01:04:28', '173', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(261, '2023-04-12 01:04:45', '174', '2d2adc575aa262c0e01d76cdebcc172812', NULL, '2', '', NULL, '1104202301040082997400120010010000001741234567819.xml', NULL, '1104202301040082997400120010010000001741234567819', NULL, NULL, NULL, 'Oxitetra. SIM de 100 ml', '5', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0981161128', '04', '5', '0', NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(262, '2023-04-12 01:05:44', '175', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(263, '2023-04-12 01:05:54', '176', '2221eedd40d86174f7c082bd47e0336fc2', NULL, '2', '', NULL, '1104202301040082997400120010010000001761234567811.xml', NULL, '1104202301040082997400120010010000001761234567811', NULL, NULL, NULL, 'Sorol de 120 ml Life', '8', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '8', '0', NULL, '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(264, '2023-04-12 01:07:10', '177', '2146b28b9787a985265f9f66cb2c1aba12', NULL, '2', '', NULL, '1104202301040082997400120010010000001771234567815.xml', NULL, '1104202301040082997400120010010000001771234567815', NULL, NULL, NULL, 'Virkos 20 ml', '3', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '3.85', '0', NULL, '3.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(265, '2023-04-12 01:08:11', '178', '239f8c55c5be3552bed56bdb8e5e331082', NULL, '2', '', NULL, '1104202301040082997400120010010000001781234567810.xml', NULL, '1104202301040082997400120010010000001781234567810', NULL, NULL, NULL, 'Synedem de 25 cc', '6.4', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '7.25', '0', NULL, '7.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(266, '2023-04-12 01:08:58', '179', '22e4250d29fc943d41a6064575b919d672', NULL, '2', '', NULL, '1104202301040082997400120010010000001791234567816.xml', NULL, '1104202301040082997400120010010000001791234567816', NULL, NULL, NULL, 'GRAMOXONE LITRO', '7.75', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '7.75', '0', NULL, '7.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(267, '2023-04-12 01:09:52', '180', '2feac434b25559722b073b6b3865631a32', NULL, '2', '', NULL, '1104202301040082997400120010010000001801234567811.xml', NULL, '1104202301040082997400120010010000001801234567811', NULL, NULL, NULL, 'Cardinol Ampolla 5 ml.', '2.4', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '2.4', '0', NULL, '2.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(268, '2023-04-12 01:10:40', '181', '243f69907c3a53f1dc90376783c2e94c42', NULL, '2', '', NULL, '1104202301040082997400120010010000001811234567817.xml', NULL, '1104202301040082997400120010010000001811234567817', NULL, NULL, NULL, 'FOSFO CALCIO 500 ml', '11.2', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '11.2', '0', NULL, '11.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(269, '2023-04-12 01:11:25', '182', '29f8a8a9468e5c3451938604b7276c9722', NULL, '2', '', NULL, '1104202301040082997400120010010000001821234567812.xml', NULL, '1104202301040082997400120010010000001821234567812', NULL, NULL, NULL, 'RESTAURADOR  350 gr', '4.75', 'HERRERA GUERRERO MANUELA MONSERRATH', 'manuherreraguerrero@gmail.com', '1004043236001', 'CARCHI/ESPEJO/SAN ISIDRO', '0939757292', '04', '6.75', '0', NULL, '6.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(270, '2023-04-12 01:12:19', '183', '277032481ac11cdc065714c50d554a2222', NULL, '2', '', NULL, '1104202301040082997400120010010000001831234567818.xml', NULL, '1104202301040082997400120010010000001831234567818', NULL, NULL, NULL, 'PILARTHIO 250 CC', '4.6', 'HERRERA GUERRERO MANUELA MONSERRATH', 'manuherreraguerrero@gmail.com', '1004043236001', 'CARCHI/ESPEJO/SAN ISIDRO', '0939757292', '04', '11.8', '0', NULL, '11.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(271, '2023-04-12 01:13:14', '184', '24c93ecab2e09521b0277bf6f3b03e89d2', NULL, '2', '', NULL, '1104202301040082997400120010010000001841234567813.xml', NULL, '1104202301040082997400120010010000001841234567813', NULL, NULL, NULL, 'SEISMIN  211 500 ml  de LIFE', '11', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '11', '0', NULL, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(272, '2023-04-12 01:13:59', '185', '24b3c1d87bf9b23c5a267f12a8631a1472', NULL, '2', '', NULL, '1104202301040082997400120010010000001851234567819.xml', NULL, '1104202301040082997400120010010000001851234567819', NULL, NULL, NULL, '6 minerales 500 cc', '12', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '12', '0', NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(273, '2023-04-12 01:14:35', '186', '2b624a2042f776f00f69d08c8009768c32', NULL, '2', '', NULL, '1104202301040082997400120010010000001861234567814.xml', NULL, '1104202301040082997400120010010000001861234567814', NULL, NULL, NULL, 'Flumezona  de 10 ml', '3.8', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '3.8', '0', NULL, '3.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(274, '2023-04-12 01:26:41', '358', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(275, '2023-04-13 18:48:17', '359', '211e35a850b7306a15ff7949e64782ccd2', NULL, '2', '', NULL, '1304202301040082997400120010010000003591234567813.xml', NULL, '1304202301040082997400120010010000003591234567813', NULL, NULL, NULL, 'PROFICURA 750 Gr', '8.5', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '34.95', '0', NULL, '34.95', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(276, '2023-04-13 21:46:28', '360', '27cf24af0f339615d75208c56d95c11132', NULL, '2', '', NULL, '1304202301040082997400120010010000003601234567819.xml', NULL, '1304202301040082997400120010010000003601234567819', NULL, NULL, NULL, 'PROFICURA 750 Gr', '8.5', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '55.5', '0', NULL, '55.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(277, '2023-04-13 21:49:30', '361', '2bc2d13d728850d199f15a1ca94002a2e2', NULL, '2', '', NULL, '1304202301040082997400120010010000003611234567814.xml', NULL, '1304202301040082997400120010010000003611234567814', NULL, NULL, NULL, 'PROFICURA 750 Gr', '8.75', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0981161128', '04', '60.85', '0', NULL, '60.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(278, '2023-04-13 21:50:21', '362', '2b19f33f70f1d1f0fd214a4f2e39fdd0c2', NULL, '2', '', NULL, '1304202301040082997400120010010000003621234567811.xml', NULL, '1304202301040082997400120010010000003621234567811', NULL, NULL, NULL, 'PROFICURA 750 Gr', '8.5', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '34.95', '0', NULL, '34.95', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(279, '2023-04-13 21:56:27', '363', '2568a5ad64182a9801a7202ecfc79625b2', NULL, '2', '', NULL, '1304202301040082997400120010010000003631234567815.xml', NULL, '1304202301040082997400120010010000003631234567815', NULL, NULL, NULL, 'PROFICURA 750 Gr', '17.5', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '96.4', '0', NULL, '96.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(280, '2023-04-14 16:27:00', '364', '2ace1f7c8bd3f2e874885ddcca8ccf6132', NULL, '2', '', NULL, '1404202301040082997400120010010000003641234567815.xml', NULL, '1404202301040082997400120010010000003641234567815', NULL, NULL, NULL, 'NATIVO 250 cc', '57.2', 'CUPUERAN CARRERA ALEXANDRA DEL CARMEN', 'alexas6-24@hotmail.com', '1003839196001', 'CARH/ESPEJO/SAN ISIDRO/BOLIVAR', '0991009768', '04', '155.1', '0', NULL, '155.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(281, '2023-04-14 16:27:15', '365', '25e398593989771e03e9b5a033d769a142', NULL, '2', '', NULL, '1404202301040082997400120010010000003651234567810.xml', NULL, '1404202301040082997400120010010000003651234567810', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '43.2', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '155.7', '0', NULL, '155.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(282, '2023-04-15 14:14:20', '366', '266710e9f52502e60f1d74ba4da6c0baf2', NULL, '2', '', NULL, '1504202301040082997400120010010000003661234567810.xml', NULL, '1504202301040082997400120010010000003661234567810', NULL, NULL, NULL, 'MOXAN 500 gr', '6.1', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '35.35', '0', NULL, '35.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(283, '2023-04-15 14:32:14', '367', '201632c07dcb40df2943eaf4b07a95ee32', NULL, '2', '', NULL, '1504202301040082997400120010010000003671234567816.xml', NULL, '1504202301040082997400120010010000003671234567816', NULL, NULL, NULL, 'ANTRACOL 400 Gr', '15.2', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '83.8', '0', NULL, '83.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(284, '2023-04-15 14:37:54', '368', '2764c76e0eefc81b39597625f66662d962', NULL, '2', '', NULL, '1504202301040082997400120010010000003681234567811.xml', NULL, '1504202301040082997400120010010000003681234567811', NULL, NULL, NULL, 'FITORAZ 500 gr', '17.6', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '133.5', '0', NULL, '133.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(285, '2023-04-15 16:10:42', '369', '204d05794149b83666bf56cae913e803d2', NULL, '2', '', NULL, '1504202301040082997400120010010000003691234567817.xml', NULL, '1504202301040082997400120010010000003691234567817', NULL, NULL, NULL, 'FULL COBRE Litro', '13.7', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '35.9', '0', NULL, '35.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(286, '2023-04-15 16:20:37', '370', '279f5a2e338fc4f35cbb08d5e1b35b50b2', NULL, '2', '', NULL, '1504202301040082997400120010010000003701234567812.xml', NULL, '1504202301040082997400120010010000003701234567812', NULL, NULL, NULL, 'FULL ZIN LITRO', '23.8', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '50.35', '0', NULL, '50.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(287, '2023-04-17 16:43:29', '371', '2cf146fd3ef3678731cc4e3d595428c8a2', NULL, '2', '', NULL, '1704202301040082997400120010010000003711234567817.xml', NULL, '1704202301040082997400120010010000003711234567817', NULL, NULL, NULL, 'PROFICURA 750 Gr', '26.25', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '107.95', '0', NULL, '107.95', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(288, '2023-04-17 16:47:25', '372', '2b43d373b7a4c2ce9ce029bfd066406452', NULL, '2', '', NULL, '1704202301040082997400120010010000003721234567812.xml', NULL, '1704202301040082997400120010010000003721234567812', NULL, NULL, NULL, 'FULL BORO MOLIBDENO 500 cc', '7', 'CUPUERAN CARRERA ALEXANDRA DEL CARMEN', 'alexas6-24@hotmail.com', '1003839196001', 'CARH/ESPEJO/SAN ISIDRO/BOLIVAR', '0991009768', '04', '112.15', '0', NULL, '112.15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(289, '2023-04-17 16:50:14', '373', '22f9aa163bd35b51f03ad571b05f58dc62', NULL, '2', '', NULL, '1704202301040082997400120010010000003731234567818.xml', NULL, '1704202301040082997400120010010000003731234567818', NULL, NULL, NULL, 'PROFICURA 750 Gr', '26.25', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '104.55', '0', NULL, '104.55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(290, '2023-04-18 12:31:14', '374', '26eba57ccfda015c4f50e8680334d27332', NULL, '2', '', NULL, '1804202301040082997400120010010000003741234567818.xml', NULL, '1804202301040082997400120010010000003741234567818', NULL, NULL, NULL, 'PROFICURA 750 Gr', '17.5', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '76.4', '0', NULL, '76.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(291, '2023-04-18 12:34:41', '375', '2fcd32b793543b31bf5766e7af24eb1722', NULL, '2', '', NULL, '1804202301040082997400120010010000003751234567813.xml', NULL, '1804202301040082997400120010010000003751234567813', NULL, NULL, NULL, 'PROFICURA 750 Gr', '17.5', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0981161128', '04', '81.8', '0', NULL, '81.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(292, '2023-04-18 12:40:24', '376', '2a5e1085508e98d0f7bf434cdcea9e50f2', NULL, '2', '', NULL, '1804202301040082997400120010010000003761234567819.xml', NULL, '1804202301040082997400120010010000003761234567819', NULL, NULL, NULL, 'CYROMAWORM 50 Gr', '24.5', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '78.85', '0', NULL, '78.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(293, '2023-04-18 13:00:59', '377', '2e3006b887b0af92603de80ebadfc43a82', NULL, '2', '', NULL, '1804202301040082997400120010010000003771234567814.xml', NULL, '1804202301040082997400120010010000003771234567814', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '25.05', '0', NULL, '25.05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(294, '2023-04-18 14:53:43', '378', '2689530faa2fb4fcdd694b17c88a7884f2', NULL, '2', '', NULL, '1804202301040082997400120010010000003781234567811.xml', NULL, '1804202301040082997400120010010000003781234567811', NULL, NULL, NULL, 'COURAGE LITRO', '15.6', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '148.8', '0', NULL, '148.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(295, '2023-04-18 15:01:07', '379', '20fe9cdeee3d083f04f8c9ac6297a85032', NULL, '2', '', NULL, '1804202301040082997400120010010000003791234567815.xml', NULL, '1804202301040082997400120010010000003791234567815', NULL, NULL, NULL, 'SEAWEED FLUID LITRO', '21.8', 'CUPUERAN CARRERA ALEXANDRA DEL CARMEN', 'alexas6-24@hotmail.com', '1003839196001', 'CARH/ESPEJO/SAN ISIDRO/BOLIVAR', '0991009768', '04', '104.3', '0', NULL, '104.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(296, '2023-04-18 15:05:38', '380', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(297, '2023-04-18 15:05:54', '381', '2fea66faa83f4da64d7d95d8b5eacad9d2', NULL, '2', '', NULL, '1804202301040082997400120010010000003811234567816.xml', NULL, '1804202301040082997400120010010000003811234567816', NULL, NULL, NULL, 'COURAGE LITRO', '15.6', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '129.8', '0', NULL, '129.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(298, '2023-04-19 21:02:42', '379', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(299, '2023-04-19 21:05:14', '479', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(300, '2023-04-19 21:06:48', '379', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(301, '2023-04-19 21:14:22', '479', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(302, '2023-04-19 21:15:07', '379', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(303, '2023-04-19 21:16:31', '479', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(304, '2023-04-19 21:19:17', '480', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(305, '2023-04-19 21:24:09', '381', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(306, '2023-04-20 11:04:48', '481', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(307, '2023-04-20 11:05:04', '482', '290c61e1cc7e4a87dffb465dfe99108262', NULL, '2', '', NULL, '2004202301040082997400120010010000004821234567812.xml', NULL, '2004202301040082997400120010010000004821234567812', NULL, NULL, NULL, 'HORTISEC 200 gr', '7.6', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '46.8', '0', NULL, '46.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(308, '2023-04-20 11:07:05', '483', '22a08342856a350cdb1925f2fc7c10ab02', NULL, '2', '', NULL, '2004202301040082997400120010010000004831234567818.xml', NULL, '2004202301040082997400120010010000004831234567818', NULL, NULL, NULL, 'STIMULUS  30-20 500 cc', '6.2', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '64.9', '0', NULL, '64.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(309, '2023-04-20 11:08:44', '484', '21238eda63dcaea9609f83f616824f9242', NULL, '2', '', NULL, '2004202301040082997400120010010000004841234567813.xml', NULL, '2004202301040082997400120010010000004841234567813', NULL, NULL, NULL, 'PROFICURA 750 Gr', '43.75', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '86.85', '0', NULL, '86.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(310, '2023-04-20 11:11:01', '379', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(311, '2023-04-20 11:11:34', '479', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(312, '2023-04-20 11:11:40', '579', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(313, '2023-04-20 11:11:50', '580', '211e308b6d0d2e54ffa7cc3142675f2682', NULL, '2', '', NULL, '2004202301040082997400120010010000005801234567815.xml', NULL, '2004202301040082997400120010010000005801234567815', NULL, NULL, NULL, 'GLISOLAT  LITRO', '23.7', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '23.7', '0', NULL, '23.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(314, '2023-04-20 11:14:39', '379', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(315, '2023-04-20 11:15:21', '479', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO');
INSERT INTO `comprobante_factura_final` (`id`, `fecha`, `codigo_factura`, `codigo_interno_factura`, `secuencia`, `id_emisor`, `id_receptor`, `xml_no_firmado`, `xml_autorizado`, `factura_pdf`, `clave_acceso`, `id_producto`, `cantidad_producto`, `precio_producto`, `descripcion`, `precio_neto`, `nombres_receptor`, `email_receptor`, `cedula_receptor`, `direccion_receptor`, `celular_receptor`, `tipo_identificacion`, `subtotal`, `iva`, `descuento_general`, `total`, `codigo_factura_credito`, `nomnto_modificacion`, `razon_modficiacion`, `numDocModificado`, `identificacion_nc`, `clave_acceso_guia`, `clave_acceso_factura`, `direccion_partida`, `direccion_llegada`, `razon_social_transportista`, `tipoIdentificacionTransportista`, `fecha_inicio_transporte`, `fecha_final_transporte`, `placa_transportista`, `ruc_transportista`, `motivo_traslado`, `comprobante`, `estado`) VALUES
(316, '2023-04-20 11:15:26', '579', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(317, '2023-04-20 11:15:30', '580', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(318, '2023-04-20 11:15:41', '581', '24dad994cd64147adf1b49ba51c908ea52', NULL, '2', '', NULL, '2004202301040082997400120010010000005811234567810.xml', NULL, '2004202301040082997400120010010000005811234567810', NULL, NULL, NULL, 'GLISOLAT  LITRO', '7.9', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '7.9', '0', NULL, '7.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(319, '2023-04-20 11:40:51', '381', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(320, '2023-04-20 11:41:34', '481', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(321, '2023-04-20 11:41:41', '482', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(322, '2023-04-20 14:23:28', '481', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(323, '2023-04-20 14:24:41', '479', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(324, '2023-04-20 14:24:50', '579', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(325, '2023-04-20 14:25:43', '481', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(326, '2023-04-20 14:25:52', '482', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(327, '2023-04-20 14:26:14', '483', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(328, '2023-04-20 14:26:35', '484', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(329, '2023-04-20 14:26:56', '485', '298eec085630bd1daa2345506d5da0ea92', NULL, '2', '', NULL, '2004202301040082997400120010010000004851234567819.xml', NULL, '2004202301040082997400120010010000004851234567819', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '3.8', '0', NULL, '3.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(330, '2023-04-20 14:36:15', '381', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(331, '2023-04-20 14:36:22', '481', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(332, '2023-04-20 14:36:33', '482', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(333, '2023-04-20 14:36:42', '382', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(334, '2023-04-20 14:36:59', '383', '20c4efac54b5e2a256c2353b4294edc182', NULL, '2', '', NULL, '2004202301040082997400120010010000003831234567814.xml', NULL, '2004202301040082997400120010010000003831234567814', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(335, '2023-04-20 14:38:49', '384', '2c3840ae7e68bf643e58b18e64e8c53092', NULL, '2', '', NULL, '2004202301040082997400120010010000003841234567811.xml', NULL, '2004202301040082997400120010010000003841234567811', NULL, NULL, NULL, 'PILARTHIO 250 CC', '4.6', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '4.6', '0', NULL, '4.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(336, '2023-04-20 15:51:09', '385', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(337, '2023-04-20 15:51:33', '386', '296b6580eb5de5364d07d59c97de48b952', NULL, '2', '', NULL, '2004202301040082997400120010010000003861234567810.xml', NULL, '2004202301040082997400120010010000003861234567810', NULL, NULL, NULL, 'FITORAZ 500 gr', '8.8', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '8.8', '0', NULL, '8.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(338, '2023-04-20 15:53:57', '387', '2da082e61cf770e503ad889ef325dc9052', NULL, '2', '', NULL, '2004202301040082997400120010010000003871234567816.xml', NULL, '2004202301040082997400120010010000003871234567816', NULL, NULL, NULL, 'ZORVEC DE 250 CC', '26.9', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '26.9', '0', NULL, '26.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(339, '2023-04-20 16:31:52', '388', '238f525d3260a8a10337d35093f27c78a2', NULL, '2', '', NULL, '2004202301040082997400120010010000003881234567811.xml', NULL, '2004202301040082997400120010010000003881234567811', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'HERRERA GUERRERO MANUELA MONSERRATH', 'manuherreraguerrero@gmail.com', '1004043236001', 'CARCHI/ESPEJO/SAN ISIDRO', '0939757292', '04', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(340, '2023-04-20 16:34:09', '389', '24b8a24d3b3a9160ffd84b21156fec4632', NULL, '2', '', NULL, '2004202301040082997400120010010000003891234567817.xml', NULL, '2004202301040082997400120010010000003891234567817', NULL, NULL, NULL, 'PILARTHIO 250 CC', '4.6', 'NAIDELYN YUBIRITH REVELO QUISTIAL', 'naidereve2002@gmail.com', '0401969928', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0980054803', '05', '12.3', '0', NULL, '12.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(341, '2023-04-20 23:10:51', '390', '22e93939f52154d0000474e5287c2bec32', NULL, '2', '', NULL, '2004202301040082997400120010010000003901234567812.xml', NULL, '2004202301040082997400120010010000003901234567812', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(342, '2023-04-21 00:24:43', '391', '27026e3b35a5fad33757c15455b70ac7e2', NULL, '2', '', NULL, '2004202301040082997400120010010000003911234567818.xml', NULL, '2004202301040082997400120010010000003911234567818', NULL, NULL, NULL, 'PROFICURA 750 Gr', '17.5', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '134.3', '0', NULL, '134.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(343, '2023-04-21 11:58:02', '392', '2ff50a97abc7eb40e0ffa847302cab8c32', NULL, '2', '', NULL, '2104202301040082997400120010010000003921234567818.xml', NULL, '2104202301040082997400120010010000003921234567818', NULL, NULL, NULL, 'GLISOLAT  LITRO', '23.1', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '117.3', '0', NULL, '117.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(344, '2023-04-21 12:00:05', '393', '250f1ceef565d525a60d08b1adfb0df372', NULL, '2', '', NULL, '2104202301040082997400120010010000003931234567813.xml', NULL, '2104202301040082997400120010010000003931234567813', NULL, NULL, NULL, 'RENDIDOR ESPECIAL', '258.5', 'CUPUERAN CARRERA ALEXANDRA DEL CARMEN', 'alexas6-24@hotmail.com', '1003839196001', 'CARH/ESPEJO/SAN ISIDRO/BOLIVAR', '0991009768', '04', '364.5', '0', NULL, '364.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(345, '2023-04-21 12:15:22', '394', '2f5539d3a4913250e4bc070c0911e5d772', NULL, '2', '', NULL, '2104202301040082997400120010010000003941234567819.xml', NULL, '2104202301040082997400120010010000003941234567819', NULL, NULL, NULL, 'FITORAZ 500 gr', '17.6', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '137.7', '0', NULL, '137.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(346, '2023-04-21 12:27:21', '395', '2ba05b127af15cf77817f2493cb48b4172', NULL, '2', '', NULL, '2104202301040082997400120010010000003951234567814.xml', NULL, '2104202301040082997400120010010000003951234567814', NULL, NULL, NULL, 'GLISOLAT  LITRO', '79', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '79', '0', NULL, '79', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(347, '2023-04-21 12:49:25', '396', '21792bd97f9f177d0c6c7e910f974af382', NULL, '2', '', NULL, '2104202301040082997400120010010000003961234567811.xml', NULL, '2104202301040082997400120010010000003961234567811', NULL, NULL, NULL, 'NUNCHAKU 200 cc', '14.3', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '14.3', '0', NULL, '14.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(348, '2023-04-21 12:50:34', '397', '237e4bf09d35b02f08edc1ce88dfea9ee2', NULL, '2', '', NULL, '2104202301040082997400120010010000003971234567815.xml', NULL, '2104202301040082997400120010010000003971234567815', NULL, NULL, NULL, 'STARNER  200 Gr.', '24.9', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '24.9', '0', NULL, '24.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(349, '2023-04-21 12:51:39', '398', '2e8fb2b86f36e0015a71e7fe2237bca672', NULL, '2', '', NULL, '2104202301040082997400120010010000003981234567810.xml', NULL, '2104202301040082997400120010010000003981234567810', NULL, NULL, NULL, 'BREAK THRU DE 100 cc', '4.7', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '4.7', '0', NULL, '4.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(350, '2023-04-21 12:52:24', '399', '26bad2325671153c3893f0291f82093852', NULL, '2', '', NULL, '2104202301040082997400120010010000003991234567816.xml', NULL, '2104202301040082997400120010010000003991234567816', NULL, NULL, NULL, 'TIESO 100 Gr', '3.5', 'POZO GUAMIALAMA WILSON PABLO', 'pabloguamialamapozo@gmail.com', '0401819685001', 'CARCHI/ESPEJO/SAN ISIDRO/INGUEZA', '0939368522', '04', '3.5', '0', NULL, '3.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(351, '2023-04-21 12:53:25', '400', '21792bd97f9f177d0c6c7e910f974af382', NULL, '2', '', NULL, '2104202301040082997400120010010000004001234567811.xml', NULL, '2104202301040082997400120010010000004001234567811', NULL, NULL, NULL, 'MOJAVE 250 CC', '7.8', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '7.8', '0', NULL, '7.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(352, '2023-04-22 12:52:52', '401', '225a9dce1c9324342cf9d64900b09bcd72', NULL, '2', '', NULL, '2204202301040082997400120010010000004011234567811.xml', NULL, '2204202301040082997400120010010000004011234567811', NULL, NULL, NULL, 'PROFICURA 750 Gr', '17.5', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '79.1', '0', NULL, '79.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(353, '2023-04-22 14:02:20', '402', '2c39988944f5b60370fdc9f305c6b0a6c2', NULL, '2', '', NULL, '2204202301040082997400120010010000004021234567815.xml', NULL, '2204202301040082997400120010010000004021234567815', NULL, NULL, NULL, 'ELTRA LITRO', '84.9', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '835.5', '0', NULL, '835.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(354, '2023-04-22 14:43:06', '403', '282a4308126ec87c18fcdc6e791400c9b2', NULL, '2', '', NULL, '2204202301040082997400120010010000004031234567810.xml', NULL, '2204202301040082997400120010010000004031234567810', NULL, NULL, NULL, 'Sultrivet de 20 ml', '4.8', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '81.4', '0', NULL, '81.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(355, '2023-04-22 18:26:26', '404', '27b7c6b69d66b6fa2b267b9cd1da35f382', NULL, '2', '', NULL, '2204202301040082997400120010010000004041234567816.xml', NULL, '2204202301040082997400120010010000004041234567816', NULL, NULL, NULL, 'FIJAFIJ PLUS 500 cc', '5.5', 'POZO NARVAEZ LUIS GALO', 'luispaznarva22@hotmail.com', '0401593660001', 'CARCHI/ESPEJO/EL ANGEL/PICHINCHA Y JOSE BENIGNO GRIJALVA', '0967083412', '04', '141.2', '0', NULL, '141.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(356, '2023-04-24 15:15:10', '405', '26cc4ca1606fb0d6669a0bb45f37414aa2', NULL, '2', '', NULL, '2404202301040082997400120010010000004051234567810.xml', NULL, '2404202301040082997400120010010000004051234567810', NULL, NULL, NULL, 'PROFICURA 750 Gr', '87.5', 'POZO NARVAEZ LUIS GALO', 'luispaznarva22@hotmail.com', '0401593660001', 'CARCHI/ESPEJO/EL ANGEL/PICHINCHA Y JOSE BENIGNO GRIJALVA', '0967083412', '04', '164.6', '0', NULL, '164.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(357, '2023-04-24 15:18:12', '406', '2fffe41a509019d90caa3f0126a717ac72', NULL, '2', '', NULL, '2404202301040082997400120010010000004061234567816.xml', NULL, '2404202301040082997400120010010000004061234567816', NULL, NULL, NULL, 'CURAMAX M-8  500 Gr', '59', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '196', '0', NULL, '196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(358, '2023-04-24 15:29:35', '407', '219051df62babae089433cfb01ec282862', NULL, '2', '', NULL, '2404202301040082997400120010010000004071234567811.xml', NULL, '2404202301040082997400120010010000004071234567811', NULL, NULL, NULL, 'PROFICURA 750 Gr', '87.5', 'CUPUERAN CARRERA ALEXANDRA DEL CARMEN', 'alexas6-24@hotmail.com', '1003839196001', 'CARH/ESPEJO/SAN ISIDRO/BOLIVAR', '0991009768', '04', '310.9', '0', NULL, '310.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(359, '2023-04-24 15:31:00', '408', '2459029ba931ac585ef9828fff82997142', NULL, '2', '', NULL, '2404202301040082997400120010010000004081234567817.xml', NULL, '2404202301040082997400120010010000004081234567817', NULL, NULL, NULL, 'LI 700 LITRO', '23', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '65.3', '0', NULL, '65.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(360, '2023-04-24 15:31:59', '409', '2523082fed4f67a624a16292dd03d83c52', NULL, '2', '', NULL, '2404202301040082997400120010010000004091234567812.xml', NULL, '2404202301040082997400120010010000004091234567812', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '79.2', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '79.2', '0', NULL, '79.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(361, '2023-04-24 15:34:10', '410', '26cc4ca1606fb0d6669a0bb45f37414aa2', NULL, '2', '', NULL, '2404202301040082997400120010010000004101234567818.xml', NULL, '2404202301040082997400120010010000004101234567818', NULL, NULL, NULL, 'SEAWEED FLUID LITRO', '43.6', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '53.4', '0', NULL, '53.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(362, '2023-04-24 15:37:51', '411', '2aa2407ff77516f8f53713dfc2f70ce1f2', NULL, '2', '', NULL, '2404202301040082997400120010010000004111234567813.xml', NULL, '2404202301040082997400120010010000004111234567813', NULL, NULL, NULL, 'PROFICURA 750 Gr', '43.75', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '73.25', '0', NULL, '73.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(363, '2023-04-24 15:39:29', '412', '2961677357c1b5a49c2158a83d4fef4a22', NULL, '2', '', NULL, '2404202301040082997400120010010000004121234567819.xml', NULL, '2404202301040082997400120010010000004121234567819', NULL, NULL, NULL, 'TOPAS LITRO', '65.4', 'HERRERA GUERRERO MANUELA MONSERRATH', 'manuherreraguerrero@gmail.com', '1004043236001', 'CARCHI/ESPEJO/SAN ISIDRO', '0939757292', '04', '75.2', '0', NULL, '75.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(364, '2023-04-24 15:43:28', '413', '27989bf5409e42b2dcf8dc7a8a6cf088b2', NULL, '2', '', NULL, '2404202301040082997400120010010000004131234567814.xml', NULL, '2404202301040082997400120010010000004131234567814', NULL, NULL, NULL, 'SEAWEED FLUID LITRO', '43.6', 'POZO GUAMIALAMA JOSE MIGUEL', 'jmiguelpozog@gmail.com', '0401152947001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0979441835', '04', '53.4', '0', NULL, '53.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(365, '2023-04-24 15:45:04', '414', '29af29d5707e3832aade025d7154fee372', NULL, '2', '', NULL, '2404202301040082997400120010010000004141234567811.xml', NULL, '2404202301040082997400120010010000004141234567811', NULL, NULL, NULL, 'PROMESS LITRO', '18.1', 'NAIDELYN YUBIRITH REVELO QUISTIAL', 'naidereve2002@gmail.com', '0401969928', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0980054803', '05', '71.5', '0', NULL, '71.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(366, '2023-04-24 15:46:30', '415', '2819547119f66c7cd80980e5e5ef720232', NULL, '2', '', NULL, '2404202301040082997400120010010000004151234567815.xml', NULL, '2404202301040082997400120010010000004151234567815', NULL, NULL, NULL, 'SEAWEED FLUID LITRO', '43.6', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0981161128', '04', '53.4', '0', NULL, '53.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(367, '2023-04-24 15:47:44', '416', '2eaf90ce93009ebaad65f1d7b384154d12', NULL, '2', '', NULL, '2404202301040082997400120010010000004161234567810.xml', NULL, '2404202301040082997400120010010000004161234567810', NULL, NULL, NULL, 'PROMESS LITRO', '18.1', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '47.6', '0', NULL, '47.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(368, '2023-04-24 15:50:41', '417', '243ca533f788a16e9dc4cd3ab1705d56c2', NULL, '2', '', NULL, '2404202301040082997400120010010000004171234567816.xml', NULL, '2404202301040082997400120010010000004171234567816', NULL, NULL, NULL, 'PROFICURA 750 Gr', '43.75', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '73.25', '0', NULL, '73.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(369, '2023-04-24 15:53:15', '418', '2d884e7903f430f146f55e1813bf6f0752', NULL, '2', '', NULL, '2404202301040082997400120010010000004181234567811.xml', NULL, '2404202301040082997400120010010000004181234567811', NULL, NULL, NULL, 'CURAMAX M-8  500 Gr', '29.5', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0981161128', '04', '56.1', '0', NULL, '56.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(370, '2023-04-24 15:55:19', '419', '2955faff849550b356c26b05610aa1eb72', NULL, '2', '', NULL, '2404202301040082997400120010010000004191234567817.xml', NULL, '2404202301040082997400120010010000004191234567817', NULL, NULL, NULL, 'CURAMAX M-8  500 Gr', '29.5', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '42.1', '0', NULL, '42.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(371, '2023-04-24 16:01:58', '420', '23d0664def0c9e3f1be5e59c9211c5e4f2', NULL, '2', '', NULL, '2404202301040082997400120010010000004201234567812.xml', NULL, '2404202301040082997400120010010000004201234567812', NULL, NULL, NULL, 'B - Plex de 100 ml.', '7.8', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '91.1', '0', NULL, '91.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(372, '2023-04-24 17:02:43', '421', '2ba5ac741946aea9e94dc3a3a31fa922d2', NULL, '2', '', NULL, '2404202301040082997400120010010000004211234567818.xml', NULL, '2404202301040082997400120010010000004211234567818', NULL, NULL, NULL, 'Polimast Azul 10 ml', '10', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '58.3', '0', NULL, '58.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(373, '2023-04-26 14:41:22', '422', '2f1af93249d75b00a09f264e87dd2e3f22', NULL, '2', '', NULL, '2604202301040082997400120010010000004221234567812.xml', NULL, '2604202301040082997400120010010000004221234567812', NULL, NULL, NULL, 'BELATHION 50 DE 500 Gr.', '6.2', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '38.4', '0', NULL, '38.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(374, '2023-04-26 14:42:36', '423', '24f3eb090fa3bfb54700cf2596144717c2', NULL, '2', '', NULL, '2604202301040082997400120010010000004231234567818.xml', NULL, '2604202301040082997400120010010000004231234567818', NULL, NULL, NULL, 'ENGEO 250 cc', '43.5', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '43.5', '0', NULL, '43.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(375, '2023-04-26 14:44:57', '424', '2dcd2551ff636776ba1dfa7480d62ef622', NULL, '2', '', NULL, '2604202301040082997400120010010000004241234567813.xml', NULL, '2604202301040082997400120010010000004241234567813', NULL, NULL, NULL, 'CURAFENO 250 cc', '11.6', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '38.2', '0', NULL, '38.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(376, '2023-04-26 14:48:13', '425', '22efebe927c4c8261c79ac2fe2bb478342', NULL, '2', '', NULL, '2604202301040082997400120010010000004251234567819.xml', NULL, '2604202301040082997400120010010000004251234567819', NULL, NULL, NULL, 'SHIELDS UP 100 cc', '4.8', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '61.1', '0', NULL, '61.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(377, '2023-04-26 14:54:40', '426', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(378, '2023-04-26 14:54:47', '427', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(379, '2023-04-26 14:55:36', '428', '24f3eb090fa3bfb54700cf2596144717c2', NULL, '2', '', NULL, '2604202301040082997400120010010000004281234567815.xml', NULL, '2604202301040082997400120010010000004281234567815', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'POZO GUAMIALAMA WILSON PABLO', 'pabloguamialamapozo@gmail.com', '0401819685001', 'CARCHI/ESPEJO/SAN ISIDRO/INGUEZA', '0939368522', '04', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(380, '2023-04-26 15:02:28', '429', '2dfe52277628fb97adf67690b132c32b72', NULL, '2', '', NULL, '2604202301040082997400120010010000004291234567810.xml', NULL, '2604202301040082997400120010010000004291234567810', NULL, NULL, NULL, 'RENDIDOR ESPECIAL', '103.4', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '209.4', '0', NULL, '209.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(381, '2023-04-26 15:08:40', '430', '2ac5449f3ae85416be34a3e7be72f8e9d2', NULL, '2', '', NULL, '2604202301040082997400120010010000004301234567816.xml', NULL, '2604202301040082997400120010010000004301234567816', NULL, NULL, NULL, 'RENDIDOR ESPECIAL', '103.4', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '262.4', '0', NULL, '262.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(382, '2023-04-26 15:11:01', '431', '2ec72d2bb1498f74bc85ba803990940172', NULL, '2', '', NULL, '2604202301040082997400120010010000004311234567811.xml', NULL, '2604202301040082997400120010010000004311234567811', NULL, NULL, NULL, 'SEMBRADOR 15-30-15', '212', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '418.8', '0', NULL, '418.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(383, '2023-04-28 13:16:41', '432', '2c568d5e8619808503e6ea48fd74368a22', NULL, '2', '', NULL, '2804202301040082997400120010010000004321234567816.xml', NULL, '2804202301040082997400120010010000004321234567816', NULL, NULL, NULL, 'ZORVEC DE 250 CC', '26.9', 'YANEZ IMBAQUINGO SERGIO RENAN', 'renanyanez2010@hotmail.com', '0401605738001', 'CARCHI/ESPEJO/SAN ISIDRO/BOLIVAR', '0999542921', '04', '46.4', '0', NULL, '46.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(384, '2023-04-28 13:20:41', '433', '2c568d5e8619808503e6ea48fd74368a22', NULL, '2', '', NULL, '2804202301040082997400120010010000004331234567811.xml', NULL, '2804202301040082997400120010010000004331234567811', NULL, NULL, NULL, 'FULL BORO MOLIBDENO LITRO', '26.6', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '77.35', '0', NULL, '77.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(385, '2023-04-28 13:22:34', '434', '226d28c39f77bb6fad51167ff017b035c2', NULL, '2', '', NULL, '2804202301040082997400120010010000004341234567817.xml', NULL, '2804202301040082997400120010010000004341234567817', NULL, NULL, NULL, 'FIJAFIJ PLUS 500 cc', '5.7', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '37.7', '0', NULL, '37.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(386, '2023-04-28 13:23:52', '435', '2f70cd253a3be9dfe709631c4cb7c5aa42', NULL, '2', '', NULL, '2804202301040082997400120010010000004351234567812.xml', NULL, '2804202301040082997400120010010000004351234567812', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '36', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '58', '0', NULL, '58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(387, '2023-04-28 13:25:31', '436', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(388, '2023-04-28 13:26:50', '437', '22bd05a9d579fdd428fd8e11ef1777f6b2', NULL, '2', '', NULL, '2804202301040082997400120010010000004371234567813.xml', NULL, '2804202301040082997400120010010000004371234567813', NULL, NULL, NULL, 'SPECIAL ENGROSE 500 cc', '5.7', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '40.6', '0', NULL, '40.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(389, '2023-04-28 13:31:03', '438', '27e2925bea9e72ae4d234e95ab86ea0162', NULL, '2', '', NULL, '2804202301040082997400120010010000004381234567819.xml', NULL, '2804202301040082997400120010010000004381234567819', NULL, NULL, NULL, 'PILARTHIO LITRO', '13.6', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '43.1', '0', NULL, '43.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(390, '2023-04-28 13:46:57', '439', '21b50fdc913b10243e1971b281115e8712', NULL, '2', '', NULL, '2804202301040082997400120010010000004391234567814.xml', NULL, '2804202301040082997400120010010000004391234567814', NULL, NULL, NULL, 'Maxin de 100 ml', '9', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '31.4', '0', NULL, '31.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(391, '2023-04-28 14:53:55', '440', '2dfe9e6a51a54ecd8eb8286a5b67a9a572', NULL, '2', '', NULL, '2804202301040082997400120010010000004401234567811.xml', NULL, '2804202301040082997400120010010000004401234567811', NULL, NULL, NULL, 'COSAGRIN 80 Kg', '4.9', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '42.7', '0', NULL, '42.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(392, '2023-04-29 22:57:11', '441', '25ed9b299f39953535fbc054b7fe9a5942', NULL, '2', '', NULL, '2904202301040082997400120010010000004411234567811.xml', NULL, '2904202301040082997400120010010000004411234567811', NULL, NULL, NULL, 'PROFICURA 750 Gr', '8.75', 'QUILCA VILLOTA ALEXANDER MICHAEL', 'michaelquilca45@gmail.com', '1004632665', 'PALO BLANCO', '0981377109', '05', '76.35', '0', NULL, '76.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(393, '2023-04-30 15:45:35', '442', '2f19a84cd5387cc52284533caa19323682', NULL, '2', '', NULL, '3004202301040082997400120010010000004421234567818.xml', NULL, '3004202301040082997400120010010000004421234567818', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '14.4', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0981161128', '04', '121', '0', NULL, '121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(394, '2023-04-30 15:47:46', '443', '2e590cfe57c2bb21d7bbbcd58ad316ea72', NULL, '2', '', NULL, '3004202301040082997400120010010000004431234567813.xml', NULL, '3004202301040082997400120010010000004431234567813', NULL, NULL, NULL, 'ANTOR LITRO', '15.7', 'HERRERA GUERRERO MANUELA MONSERRATH', 'manuherreraguerrero@gmail.com', '1004043236001', 'CARCHI/ESPEJO/SAN ISIDRO', '0939757292', '04', '75.6', '0', NULL, '75.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(395, '2023-04-30 15:50:43', '444', '2480b7c5709f278f51f579877d64fe16d2', NULL, '2', '', NULL, '3004202301040082997400120010010000004441234567819.xml', NULL, '3004202301040082997400120010010000004441234567819', NULL, NULL, NULL, 'BLOSSOM BLEND LITRO', '48.8', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '120.1', '0', NULL, '120.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(396, '2023-04-30 15:52:47', '445', '2dc0f205ce7cbf46df22344aa4df461af2', NULL, '2', '', NULL, '3004202301040082997400120010010000004451234567814.xml', NULL, '3004202301040082997400120010010000004451234567814', NULL, NULL, NULL, 'STIMULUS  30-20 LITRO', '23.8', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '92.2', '0', NULL, '92.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(397, '2023-04-30 15:55:15', '446', '2f236c2419621bd2b13c4d55699c81cfa2', NULL, '2', '', NULL, '3004202301040082997400120010010000004461234567811.xml', NULL, '3004202301040082997400120010010000004461234567811', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '36', 'CUPUERAN CARRERA ALEXANDRA DEL CARMEN', 'alexas6-24@hotmail.com', '1003839196001', 'CARH/ESPEJO/SAN ISIDRO/BOLIVAR', '0991009768', '04', '100.6', '0', NULL, '100.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(398, '2023-04-30 16:01:05', '447', '26155c5c6ca10c83aca0eae543de91e392', NULL, '2', '', NULL, '3004202301040082997400120010010000004471234567815.xml', NULL, '3004202301040082997400120010010000004471234567815', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '7.2', 'NAIDELYN YUBIRITH REVELO QUISTIAL', 'naidereve2002@gmail.com', '0401969928', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0980054803', '05', '89.6', '0', NULL, '89.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(399, '2023-04-30 16:03:00', '448', '26f1ded667ac48f2f5e882577c9df6f4a2', NULL, '2', '', NULL, '3004202301040082997400120010010000004481234567810.xml', NULL, '3004202301040082997400120010010000004481234567810', NULL, NULL, NULL, 'PILARTHIO LITRO', '27.2', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '51', '0', NULL, '51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(400, '2023-04-30 16:04:32', '449', '22b581ec473068ef0993869c97d8328f12', NULL, '2', '', NULL, '3004202301040082997400120010010000004491234567816.xml', NULL, '3004202301040082997400120010010000004491234567816', NULL, NULL, NULL, 'STIMULUS  30-20 LITRO', '11.9', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '101.8', '0', NULL, '101.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(401, '2023-04-30 16:06:20', '450', '260f84ad6e232bdce9ac9bee07eee87382', NULL, '2', '', NULL, '3004202301040082997400120010010000004501234567811.xml', NULL, '3004202301040082997400120010010000004501234567811', NULL, NULL, NULL, 'CURAMAX M-8  500 Gr', '29.5', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '108.25', '0', NULL, '108.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(402, '2023-05-01 19:45:11', '451', '271b9dee550feb280b9be3a277eacb4732', NULL, '2', '', NULL, '0105202301040082997400120010010000004511234567817.xml', NULL, '0105202301040082997400120010010000004511234567817', NULL, NULL, NULL, 'CURAFENO 250 cc', '11.2', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '94.15', '0', NULL, '94.15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(403, '2023-05-03 14:28:59', '452', '288e2fb29f69c4030d5fac88679e99e102', NULL, '2', '', NULL, '0305202301040082997400120010010000004521234567811.xml', NULL, '0305202301040082997400120010010000004521234567811', NULL, NULL, NULL, 'Albendazol 25% Co de 20 cc', '9', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '61.8', '0', NULL, '61.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(404, '2023-05-03 14:40:45', '453', '2dcc1b947586b67852af2b4e8088c04e22', NULL, '2', '', NULL, '0305202301040082997400120010010000004531234567817.xml', NULL, '0305202301040082997400120010010000004531234567817', NULL, NULL, NULL, 'CURAMAX M-8  500 Gr', '29.5', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '73.9', '0', NULL, '73.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(405, '2023-05-03 14:50:15', '454', '28cf08d233a7233ab4f373090c0e6cdef2', NULL, '2', '', NULL, '0305202301040082997400120010010000004541234567812.xml', NULL, '0305202301040082997400120010010000004541234567812', NULL, NULL, NULL, 'FULL BORO MOLIBDENO LITRO', '26.6', 'QUILCA VILLOTA ALEXANDER MICHAEL', 'michaelquilca45@gmail.com', '1004632665', 'PALO BLANCO', '0981377109', '05', '82.5', '0', NULL, '82.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(406, '2023-05-03 14:52:02', '455', '23af898eff242dcc96159519224340d502', NULL, '2', '', NULL, '0305202301040082997400120010010000004551234567818.xml', NULL, '0305202301040082997400120010010000004551234567818', NULL, NULL, NULL, 'BLOSSOM BLEND LITRO', '48.8', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '58.4', '0', NULL, '58.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(407, '2023-05-03 14:53:31', '456', '2e9aaebcd1a4345217bc52b988d73b1b62', NULL, '2', '', NULL, '0305202301040082997400120010010000004561234567813.xml', NULL, '0305202301040082997400120010010000004561234567813', NULL, NULL, NULL, 'FULL MAGNESIO LITRO', '9.6', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0981161128', '04', '44.8', '0', NULL, '44.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(408, '2023-05-04 12:19:23', '457', '20622e00c44d97d3b6ca58b6893c7787d2', NULL, '2', '', NULL, '0405202301040082997400120010010000004571234567813.xml', NULL, '0405202301040082997400120010010000004571234567813', NULL, NULL, NULL, 'FITORAZ 500 gr', '8.8', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '66.1', '0', NULL, '66.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(409, '2023-05-04 12:36:58', '458', '242f72055933cf0b070e5bbeaf865c8712', NULL, '2', '', NULL, '0405202301040082997400120010010000004581234567819.xml', NULL, '0405202301040082997400120010010000004581234567819', NULL, NULL, NULL, 'PROFICURA 750 Gr', '43.75', 'CUPUERAN CARRERA ALEXANDRA DEL CARMEN', 'alexas6-24@hotmail.com', '1003839196001', 'CARH/ESPEJO/SAN ISIDRO/BOLIVAR', '0991009768', '04', '336.15', '0', NULL, '336.15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(410, '2023-05-04 12:39:54', '459', '2ef73764d3b41573d918df2cc8e64da2a2', NULL, '2', '', NULL, '0405202301040082997400120010010000004591234567814.xml', NULL, '0405202301040082997400120010010000004591234567814', NULL, NULL, NULL, 'FIPREX LITRO', '175.6', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '236.8', '0', NULL, '236.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(411, '2023-05-04 12:41:13', '460', '2f2fe2117877998c473d2f84a22bb2b832', NULL, '2', '', NULL, '0405202301040082997400120010010000004601234567811.xml', NULL, '0405202301040082997400120010010000004601234567811', NULL, NULL, NULL, 'STARNER  200 Gr', '99.6', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '99.6', '0', NULL, '99.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(412, '2023-05-04 12:45:02', '461', '2affb6a2628a55c16153851cba4087e392', NULL, '2', '', NULL, '0405202301040082997400120010010000004611234567815.xml', NULL, '0405202301040082997400120010010000004611234567815', NULL, NULL, NULL, 'KASHU LITRO', '83.4', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '83.4', '0', NULL, '83.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(413, '2023-05-04 12:46:29', '462', '2a4a4a1e82e158013f49897fd75c45db82', NULL, '2', '', NULL, '0405202301040082997400120010010000004621234567810.xml', NULL, '0405202301040082997400120010010000004621234567810', NULL, NULL, NULL, 'FULL COBRE Litro', '54.8', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '77.8', '0', NULL, '77.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(414, '2023-05-04 12:47:28', '463', '2b1b3a0867099ff1cfcfe80c736edda692', NULL, '2', '', NULL, '0405202301040082997400120010010000004631234567816.xml', NULL, '0405202301040082997400120010010000004631234567816', NULL, NULL, NULL, 'TOPAS LITRO', '130.8', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '130.8', '0', NULL, '130.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(415, '2023-05-05 15:23:58', '464', '2e570bed49378757cee1fca44b6bb291d2', NULL, '2', '', NULL, '0505202301040082997400120010010000004641234567816.xml', NULL, '0505202301040082997400120010010000004641234567816', NULL, NULL, NULL, 'Polimast Azul 10 ml', '20', 'MERA RIVADENEIRA MONICA ASUNCION', 'mona_mera1980@hotmail.com', '0919802835001', 'CARCHI / ESPEJO / SAN ISIDRO / EL CHARCO COLORADO SN Y CAMINO PALO BLANCO', '0997866652', '04', '20', '0', NULL, '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(416, '2023-05-06 11:59:13', '465', '25a324abaa6eeb95b78fff8aa6cee04fe2', NULL, '2', '', NULL, '0605202301040082997400120010010000004651234567816.xml', NULL, '0605202301040082997400120010010000004651234567816', NULL, NULL, NULL, 'BREAK THRU DE 100 cc', '4.7', 'HERRERA GUERRERO MANUELA MONSERRATH', 'manuherreraguerrero@gmail.com', '1004043236001', 'CARCHI/ESPEJO/SAN ISIDRO', '0939757292', '04', '125.7', '0', NULL, '125.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO');
INSERT INTO `comprobante_factura_final` (`id`, `fecha`, `codigo_factura`, `codigo_interno_factura`, `secuencia`, `id_emisor`, `id_receptor`, `xml_no_firmado`, `xml_autorizado`, `factura_pdf`, `clave_acceso`, `id_producto`, `cantidad_producto`, `precio_producto`, `descripcion`, `precio_neto`, `nombres_receptor`, `email_receptor`, `cedula_receptor`, `direccion_receptor`, `celular_receptor`, `tipo_identificacion`, `subtotal`, `iva`, `descuento_general`, `total`, `codigo_factura_credito`, `nomnto_modificacion`, `razon_modficiacion`, `numDocModificado`, `identificacion_nc`, `clave_acceso_guia`, `clave_acceso_factura`, `direccion_partida`, `direccion_llegada`, `razon_social_transportista`, `tipoIdentificacionTransportista`, `fecha_inicio_transporte`, `fecha_final_transporte`, `placa_transportista`, `ruc_transportista`, `motivo_traslado`, `comprobante`, `estado`) VALUES
(417, '2023-05-06 16:07:19', '466', '2224940e7d36d7717b1e61373de428a1a2', NULL, '2', '', NULL, '0605202301040082997400120010010000004661234567811.xml', NULL, '0605202301040082997400120010010000004661234567811', NULL, NULL, NULL, 'FIPREX LITRO', '44.9', 'MERA RIVADENEIRA MONICA ASUNCION', 'mona_mera1980@hotmail.com', '0919802835001', 'CARCHI / ESPEJO / SAN ISIDRO / EL CHARCO COLORADO SN Y CAMINO PALO BLANCO', '0997866652', '04', '684', '0', NULL, '684', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(418, '2023-05-06 16:11:44', '467', '2b77db05be20ae11ad62dc7aa60e62e632', NULL, '2', '', NULL, '0605202301040082997400120010010000004671234567817.xml', NULL, '0605202301040082997400120010010000004671234567817', NULL, NULL, NULL, 'LI 700 100 cc', '8', 'QUILCA VILLOTA ALEXANDER MICHAEL', 'michaelquilca45@gmail.com', '1004632665', 'PALO BLANCO', '0981377109', '05', '266.9', '0', NULL, '266.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(419, '2023-05-06 16:19:22', '468', '27180236307e430dec3b9990d2127c9f62', NULL, '2', '', NULL, '0605202301040082997400120010010000004681234567812.xml', NULL, '0605202301040082997400120010010000004681234567812', NULL, NULL, NULL, 'PROFICURA 750 Gr', '26.25', 'NAIDELYN YUBIRITH REVELO QUISTIAL', 'naidereve2002@gmail.com', '0401969928', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0980054803', '05', '88.75', '0', NULL, '88.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(420, '2023-05-06 16:42:01', '469', '266848e8d4dc5e4e1befd54af460042ef2', NULL, '2', '', NULL, '0605202301040082997400120010010000004691234567818.xml', NULL, '0605202301040082997400120010010000004691234567818', NULL, NULL, NULL, 'PROFICURA 750 Gr', '26.25', 'QUIROZ BRAYAN', 'brayanquiroz33@gmail.com', '0401615174', 'CARCHI / ESPEJO / SAN ISIDRO / COOPERATIVA IGUAN', '0992327636', '05', '89.65', '0', NULL, '89.65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(421, '2023-05-06 21:20:15', '470', '22f729516118c221cd32ba3e092e5a5542', NULL, '2', '', NULL, '0605202301040082997400120010010000004701234567813.xml', NULL, '0605202301040082997400120010010000004701234567813', NULL, NULL, NULL, 'LI 700 LITRO', '11.8', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '37.25', '0', NULL, '37.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(422, '2023-05-07 14:49:38', '471', '269c3a8553971e91552138f35f53f7e622', NULL, '2', '', NULL, '0705202301040082997400120010010000004711234567813.xml', NULL, '0705202301040082997400120010010000004711234567813', NULL, NULL, NULL, 'RENDIDOR ESPECIAL', '206.8', 'LOPEZ MENESES OSWALDO ALEXANDER', 'oswaldoalopez17@gmail.com', '0450065255', 'CARCHI / ESPEJO / SAN ISIDRO / GERMAN GRIJALVA Y COLON S/N', '0989419521', '05', '206.8', '0', NULL, '206.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(423, '2023-05-07 14:58:30', '472', '2d43f0a707c6b48f66f78e22b3e0aae832', NULL, '2', '', NULL, '0705202301040082997400120010010000004721234567819.xml', NULL, '0705202301040082997400120010010000004721234567819', NULL, NULL, NULL, 'PROFICURA 750 Gr', '122.5', 'MERA RIVADENEIRA MONICA ASUNCION', 'mona_mera1980@hotmail.com', '0919802835001', 'CARCHI / ESPEJO / SAN ISIDRO / EL CHARCO COLORADO SN Y CAMINO PALO BLANCO', '0997866652', '04', '575.3', '0', NULL, '575.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(424, '2023-05-07 15:04:59', '473', '2a5ca663fcc3ba0a7c59fe5d45ea69da62', NULL, '2', '', NULL, '0705202301040082997400120010010000004731234567814.xml', NULL, '0705202301040082997400120010010000004731234567814', NULL, NULL, NULL, 'CASTIGADOR 200 cc', '73.8', 'LOPEZ MENESES OSWALDO ALEXANDER', 'oswaldoalopez17@gmail.com', '0450065255', 'CARCHI / ESPEJO / SAN ISIDRO / GERMAN GRIJALVA Y COLON S/N', '0989419521', '05', '73.8', '0', NULL, '73.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(425, '2023-05-08 12:57:24', '474', '2d38db8b851bb10d708123a44a42082aa2', NULL, '2', '', NULL, '0805202301040082997400120010010000004741234567814.xml', NULL, '0805202301040082997400120010010000004741234567814', NULL, NULL, NULL, 'ONLY - Ca  10 Kg', '92', 'QUIROZ BRAYAN', 'brayanquiroz33@gmail.com', '0401615174', 'CARCHI / ESPEJO / SAN ISIDRO / COOPERATIVA IGUAN', '0992327636', '05', '92', '0', NULL, '92', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(426, '2023-05-08 20:50:24', '475', '23468c24f294560863ccb701f08bac5c32', NULL, '2', '', NULL, '0805202301040082997400120010010000004751234567811.xml', NULL, '0805202301040082997400120010010000004751234567811', NULL, NULL, NULL, 'LI 700 100 cc', '4', 'POZO NARVAEZ LUIS GALO', 'luispaznarva22@hotmail.com', '0401593660001', 'CARCHI/ESPEJO/EL ANGEL/PICHINCHA Y JOSE BENIGNO GRIJALVA', '0967083412', '04', '131.05', '0', NULL, '131.05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(427, '2023-05-10 13:20:45', '476', '221925b12c9daef2062a97712f5cc17ec2', NULL, '2', '', NULL, '1005202301040082997400120010010000004761234567812.xml', NULL, '1005202301040082997400120010010000004761234567812', NULL, NULL, NULL, 'CURATHANE 500 Gr', '35.5', 'QUIROZ BRAYAN', 'brayanquiroz33@gmail.com', '0401615174', 'CARCHI / ESPEJO / SAN ISIDRO / COOPERATIVA IGUAN', '0992327636', '05', '84', '0', NULL, '84', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(428, '2023-05-10 13:22:52', '477', '2211ad9335dc6279cda9d26c71cb605072', NULL, '2', '', NULL, '1005202301040082997400120010010000004771234567818.xml', NULL, '1005202301040082997400120010010000004771234567818', NULL, NULL, NULL, 'MOJAVE LITRO', '28.4', 'LOPEZ MENESES OSWALDO ALEXANDER', 'oswaldoalopez17@gmail.com', '0450065255', 'CARCHI / ESPEJO / SAN ISIDRO / GERMAN GRIJALVA Y COLON S/N', '0989419521', '05', '46.3', '0', NULL, '46.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(429, '2023-05-10 13:23:56', '478', '288263aeaeb666b24084c66b1566730ff2', NULL, '2', '', NULL, '1005202301040082997400120010010000004781234567813.xml', NULL, '1005202301040082997400120010010000004781234567813', NULL, NULL, NULL, 'SPECIAL ENGROSE LITRO', '22', 'QUILCA VILLOTA ALEXANDER MICHAEL', 'michaelquilca45@gmail.com', '1004632665', 'PALO BLANCO', '0981377109', '05', '27.7', '0', NULL, '27.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(430, '2023-05-10 13:25:41', '479', '23a8a42f1d98cad3b249d0c6fab132b1d2', NULL, '2', '', NULL, '1005202301040082997400120010010000004791234567819.xml', NULL, '1005202301040082997400120010010000004791234567819', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '36', 'NAIDELYN YUBIRITH REVELO QUISTIAL', 'naidereve2002@gmail.com', '0401969928', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0980054803', '05', '36', '0', NULL, '36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(431, '2023-05-10 13:27:40', '579', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(432, '2023-05-10 13:30:53', '485', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(433, '2023-05-10 13:31:59', '486', '2002e9aeaaa59c79038b8416fb5ba6fb02', NULL, '2', '', NULL, '1005202301040082997400120010010000004861234567817.xml', NULL, '1005202301040082997400120010010000004861234567817', NULL, NULL, NULL, 'FULL BORO MOLIBDENO LITRO', '13.3', 'QUIROZ BRAYAN', 'brayanquiroz33@gmail.com', '0401615174', 'CARCHI / ESPEJO / SAN ISIDRO / COOPERATIVA IGUAN', '0992327636', '05', '13.3', '0', NULL, '13.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(434, '2023-05-10 13:35:21', '487', '2945e5fc64491a837eea785e7dac4f6dd2', NULL, '2', '', NULL, '1005202301040082997400120010010000004871234567812.xml', NULL, '1005202301040082997400120010010000004871234567812', NULL, NULL, NULL, 'FULL BORO MOLIBDENO LITRO', '13.3', 'POZO GUAMIALAMA WILSON PABLO', 'pabloguamialamapozo@gmail.com', '0401819685001', 'CARCHI/ESPEJO/SAN ISIDRO/INGUEZA', '0939368522', '04', '40', '0', NULL, '40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(435, '2023-05-10 13:39:29', '488', '22fbe09abbbe7d5d60d01e197762b47942', NULL, '2', '', NULL, '1005202301040082997400120010010000004881234567818.xml', NULL, '1005202301040082997400120010010000004881234567818', NULL, NULL, NULL, 'CARBIN LITRO', '54.8', 'MERA RIVADENEIRA MONICA ASUNCION', 'mona_mera1980@hotmail.com', '0919802835001', 'CARCHI / ESPEJO / SAN ISIDRO / EL CHARCO COLORADO SN Y CAMINO PALO BLANCO', '0997866652', '04', '287', '0', NULL, '287', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(436, '2023-05-10 17:44:24', '489', '2495cd515939d1058f8624baab3ea97f12', NULL, '2', '', NULL, '1005202301040082997400120010010000004891234567813.xml', NULL, '1005202301040082997400120010010000004891234567813', NULL, NULL, NULL, 'LI 700 100 cc', '4', 'QUIROZ BRAYAN', 'brayanquiroz33@gmail.com', '0401615174', 'CARCHI / ESPEJO / SAN ISIDRO / COOPERATIVA IGUAN', '0992327636', '05', '4', '0', NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(437, '2023-05-10 18:31:18', '490', '251eaa2c248056d62630559bf3af70e8e2', NULL, '2', '', NULL, '1005202301040082997400120010010000004901234567819.xml', NULL, '1005202301040082997400120010010000004901234567819', NULL, NULL, NULL, 'FITORAZ 500 gr', '17.6', 'CHALAPU                 CHALACAN MARIA NARCISA', 'chalacanm730@gmail.com', '0400746038', 'CARCHI / ESPEJO / SAN ISIDRO / CALLE SUCRE S/N', '0990492176', '05', '121.55', '0', NULL, '121.55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(438, '2023-05-10 18:39:04', '491', '293a30314429181af8d370f30f20011ab2', NULL, '2', '', NULL, '1005202301040082997400120010010000004911234567814.xml', NULL, '1005202301040082997400120010010000004911234567814', NULL, NULL, NULL, 'Oxitetra. 200 L.A. de 100 ml', '9.8', 'CHALAPU                 CHALACAN MARIA NARCISA', 'chalacanm730@gmail.com', '0400746038', 'CARCHI / ESPEJO / SAN ISIDRO / CALLE SUCRE S/N', '0990492176', '05', '47.4', '0', NULL, '47.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(439, '2023-05-12 12:48:00', '492', '2450e71ab062a4736d9393cb62117bac52', NULL, '2', '', NULL, '1205202301040082997400120010010000004921234567819.xml', NULL, '1205202301040082997400120010010000004921234567819', NULL, NULL, NULL, 'CURAMAX M-8  500 Gr', '29.5', 'CHALAPU                 CHALACAN MARIA NARCISA', 'chalacanm730@gmail.com', '0400746038', 'CARCHI / ESPEJO / SAN ISIDRO / CALLE SUCRE S/N', '0990492176', '05', '64', '0', NULL, '64', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(440, '2023-05-12 12:52:13', '493', '21243eba079ed6c4b524cc1306de712e52', NULL, '2', '', NULL, '1205202301040082997400120010010000004931234567814.xml', NULL, '1205202301040082997400120010010000004931234567814', NULL, NULL, NULL, 'DIFECOR 100 cc', '22.5', 'QUIROZ BRAYAN', 'brayanquiroz33@gmail.com', '0401615174', 'CARCHI / ESPEJO / SAN ISIDRO / COOPERATIVA IGUAN', '0992327636', '05', '84.7', '0', NULL, '84.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(441, '2023-05-12 12:55:14', '494', '21b00d810cfebf5cfc98f5bc44ab459562', NULL, '2', '', NULL, '1205202301040082997400120010010000004941234567811.xml', NULL, '1205202301040082997400120010010000004941234567811', NULL, NULL, NULL, 'BLOSSOM BLEND LITRO', '48.8', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '148.7', '0', NULL, '148.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(442, '2023-05-12 12:57:16', '495', '27bd1f1f327d9b1f1b09da4cd19a5d5fb2', NULL, '2', '', NULL, '1205202301040082997400120010010000004951234567815.xml', NULL, '1205202301040082997400120010010000004951234567815', NULL, NULL, NULL, 'ABAX de 200 cc', '25.2', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '143.9', '0', NULL, '143.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(443, '2023-05-12 12:59:04', '496', '25d972f787657b26c4eaf0cc8ea2b0e4d2', NULL, '2', '', NULL, '1205202301040082997400120010010000004961234567810.xml', NULL, '1205202301040082997400120010010000004961234567810', NULL, NULL, NULL, 'FULL AE LITRO', '24.5', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '109.7', '0', NULL, '109.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(444, '2023-05-12 13:00:41', '497', '26db239545e3e1de8a353f9f20e1947f72', NULL, '2', '', NULL, '1205202301040082997400120010010000004971234567816.xml', NULL, '1205202301040082997400120010010000004971234567816', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '36', 'QUILCA VILLOTA ALEXANDER MICHAEL', 'michaelquilca45@gmail.com', '1004632665', 'PALO BLANCO', '0981377109', '05', '92.9', '0', NULL, '92.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(445, '2023-05-12 13:02:05', '498', '2c6ddd4d40b521b7381c3d6065b8c881e2', NULL, '2', '', NULL, '1205202301040082997400120010010000004981234567811.xml', NULL, '1205202301040082997400120010010000004981234567811', NULL, NULL, NULL, 'OXITHANE 500 Gr', '84', 'LOPEZ MENESES OSWALDO ALEXANDER', 'oswaldoalopez17@gmail.com', '0450065255', 'CARCHI / ESPEJO / SAN ISIDRO / GERMAN GRIJALVA Y COLON S/N', '0989419521', '05', '84', '0', NULL, '84', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(446, '2023-05-12 13:03:03', '499', '23c8b224524f94925de5e38aa4b47d93e2', NULL, '2', '', NULL, '1205202301040082997400120010010000004991234567817.xml', NULL, '1205202301040082997400120010010000004991234567817', NULL, NULL, NULL, 'CURATHANE 500 Gr', '85.2', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE Y COLON', '0981161128', '04', '85.2', '0', NULL, '85.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(447, '2023-05-18 22:45:32', '500', '248ff65d19655128fb3442944a24c5f2a2', NULL, '2', '', NULL, '1805202301040082997400120010010000005001234567818.xml', NULL, '1805202301040082997400120010010000005001234567818', NULL, NULL, NULL, 'CURAMAX M-8  500 Gr', '17.7', 'MENESES JIMENEZ MIGUEL ANGEL', 'finca_santarosa7@yahoo.com', '0401124102001', 'CARCHI / ESPEJO / LA ESPERANZA', '0959960196', '04', '140.4', '0', NULL, '140.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(448, '2023-05-18 22:52:21', '501', '24d088f140d54d3180dc161783222895b2', NULL, '2', '', NULL, '1805202301040082997400120010010000005011234567813.xml', NULL, '1805202301040082997400120010010000005011234567813', NULL, NULL, NULL, 'GLISOLAT  LITRO', '38.5', 'MENESES JIMENEZ MIGUEL ANGEL', 'finca_santarosa7@yahoo.com', '0401124102001', 'CARCHI / ESPEJO / LA ESPERANZA', '0959960196', '04', '38.5', '0', NULL, '38.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(449, '2023-05-21 14:20:07', '502', '267439cf5ca11cff311d4000677262ef12', NULL, '2', '', NULL, '2105202301040082997400120010010000005021234567810.xml', NULL, '2105202301040082997400120010010000005021234567810', NULL, NULL, NULL, 'DIFENICC LITRO', '30.3', 'MENESES JIMENEZ MIGUEL ANGEL', 'finca_santarosa7@yahoo.com', '0401124102001', 'CARCHI / ESPEJO / LA ESPERANZA', '0959960196', '04', '241.2', '0', NULL, '241.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(450, '2023-05-21 14:24:49', '503', '20f5b1909ff6228dd698d212331a39da72', NULL, '2', '', NULL, '2105202301040082997400120010010000005031234567816.xml', NULL, '2105202301040082997400120010010000005031234567816', NULL, NULL, NULL, 'MOJAVE LITRO', '28.4', 'QUILCA VILLOTA ALEXANDER MICHAEL', 'michaelquilca45@gmail.com', '1004632665', 'PALO BLANCO', '0981377109', '05', '148.3', '0', NULL, '148.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(451, '2023-05-21 14:32:35', '504', '28f00b8309af9600417055659b4107aaa2', NULL, '2', '', NULL, '2105202301040082997400120010010000005041234567811.xml', NULL, '2105202301040082997400120010010000005041234567811', NULL, NULL, NULL, 'SPECIAL ENGROSE LITRO', '176', 'MERA RIVADENEIRA MONICA ASUNCION', 'mona_mera1980@hotmail.com', '0919802835001', 'CARCHI / ESPEJO / SAN ISIDRO / EL CHARCO COLORADO SN Y CAMINO PALO BLANCO', '0997866652', '04', '970.1', '0', NULL, '970.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(452, '2023-05-21 14:47:22', '505', '20f4620535d0769119a345bf26e25d4602', NULL, '2', '', NULL, '2105202301040082997400120010010000005051234567817.xml', NULL, '2105202301040082997400120010010000005051234567817', NULL, NULL, NULL, 'FITORAZ 500 gr', '26.4', 'CHALAPU                 CHALACAN MARIA NARCISA', 'chalacanm730@gmail.com', '0400746038', 'CARCHI / ESPEJO / SAN ISIDRO / CALLE SUCRE S/N', '0990492176', '05', '105.8', '0', NULL, '105.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(453, '2023-05-21 14:50:43', '506', '2ba82c439bd5e26c7aa1a4e6e0bf9d6382', NULL, '2', '', NULL, '2105202301040082997400120010010000005061234567812.xml', NULL, '2105202301040082997400120010010000005061234567812', NULL, NULL, NULL, 'SEAWEED FLUID 500 cc', '11.7', 'QUIROZ BRAYAN', 'brayanquiroz33@gmail.com', '0401615174', 'CARCHI / ESPEJO / SAN ISIDRO / COOPERATIVA IGUAN', '0992327636', '05', '133.3', '0', NULL, '133.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(454, '2023-05-21 15:23:12', '507', '24476fac08217607ba2e5dcce25065ce52', NULL, '2', '', NULL, '2105202301040082997400120010010000005071234567818.xml', NULL, '2105202301040082997400120010010000005071234567818', NULL, NULL, NULL, 'FITORAZ 500 gr', '17.6', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '112.3', '0', NULL, '112.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(455, '2023-05-21 15:32:24', '508', '24a99393b050d8459ee40575408a9767e2', NULL, '2', '', NULL, '2105202301040082997400120010010000005081234567813.xml', NULL, '2105202301040082997400120010010000005081234567813', NULL, NULL, NULL, 'OXITHANE 500 Gr', '28', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '255', '0', NULL, '255', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(456, '2023-05-21 15:36:26', '509', '24505218d261e68f85aaee08d2f9043522', NULL, '2', '', NULL, '2105202301040082997400120010010000005091234567819.xml', NULL, '2105202301040082997400120010010000005091234567819', NULL, NULL, NULL, 'OXITHANE 500 Gr', '28', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '229', '0', NULL, '229', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(457, '2023-05-21 22:32:47', '510', '28a2219c903c97da23553b16955cb5f3d2', NULL, '2', '', NULL, '2105202301040082997400120010010000005101234567814.xml', NULL, '2105202301040082997400120010010000005101234567814', NULL, NULL, NULL, 'FITORAZ 500 gr', '17.6', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '126.55', '0', NULL, '126.55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(458, '2023-05-25 12:17:26', '511', '20006b80acabfb7a4e05643df52c18af02', NULL, '2', '', NULL, '2505202301040082997400120010010000005111234567818.xml', NULL, '2505202301040082997400120010010000005111234567818', NULL, NULL, NULL, 'PROFIMETH 500', '43.5', 'MENESES JIMENEZ MIGUEL ANGEL', 'finca_santarosa7@yahoo.com', '0401124102001', 'CARCHI / ESPEJO / LA ESPERANZA', '0959960196', '04', '88.7', '0', NULL, '88.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(459, '2023-05-25 12:18:48', '512', '2d797eeeedf26b1a3639cc24c9e5014842', NULL, '2', '', NULL, '2505202301040082997400120010010000005121234567813.xml', NULL, '2505202301040082997400120010010000005121234567813', NULL, NULL, NULL, 'OPERA de 150 cc', '32', 'CHALAPU                 CHALACAN MARIA NARCISA', 'chalacanm730@gmail.com', '0400746038', 'CARCHI / ESPEJO / SAN ISIDRO / CALLE SUCRE S/N', '0990492176', '05', '78.2', '0', NULL, '78.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(460, '2023-05-25 12:20:20', '513', '2ba71a0f828681a2bf6c916a1eb5ef8372', NULL, '2', '', NULL, '2505202301040082997400120010010000005131234567819.xml', NULL, '2505202301040082997400120010010000005131234567819', NULL, NULL, NULL, 'SEAWEED FLUID LITRO', '43.6', 'QUIROZ BRAYAN', 'brayanquiroz33@gmail.com', '0401615174', 'CARCHI / ESPEJO / SAN ISIDRO / COOPERATIVA IGUAN', '0992327636', '05', '88.9', '0', NULL, '88.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(461, '2023-05-25 12:22:51', '514', '247e97d4d037fcd4e78b14c66628076802', NULL, '2', '', NULL, '2505202301040082997400120010010000005141234567814.xml', NULL, '2505202301040082997400120010010000005141234567814', NULL, NULL, NULL, 'CIRCON 100 Gr', '17', 'LOPEZ MENESES OSWALDO ALEXANDER', 'oswaldoalopez17@gmail.com', '0450065255', 'CARCHI / ESPEJO / SAN ISIDRO / GERMAN GRIJALVA Y COLON S/N', '0989419521', '05', '98', '0', NULL, '98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(462, '2023-05-25 12:24:31', '515', '25d6d833f95d8c5b69afdd5856d1363502', NULL, '2', '', NULL, '2505202301040082997400120010010000005151234567811.xml', NULL, '2505202301040082997400120010010000005151234567811', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '28.8', 'QUILCA VILLOTA ALEXANDER MICHAEL', 'michaelquilca45@gmail.com', '1004632665', 'PALO BLANCO', '0981377109', '05', '85.7', '0', NULL, '85.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(463, '2023-05-25 20:32:12', '516', '25ea381381cfb2acf0f76f18244238f1a2', NULL, '2', '', NULL, '2505202301040082997400120010010000005161234567815.xml', NULL, '2505202301040082997400120010010000005161234567815', NULL, NULL, NULL, '18 -46 - 0  de 50 Kg', '200', 'PAPUEZAN PEREZ JOSE MARIA', 'paspuezan.josemaria89@gmail.com', '0400578050', 'CARCHI / ESPEJO / SAN ISIDRO/ BARRIO NORTE/ CALLE SUCRE', '0982955971', '05', '200', '0', NULL, '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(464, '2023-05-25 20:34:01', '517', '28312deee9d47c2f335e9b2fb69b780b42', NULL, '2', '', NULL, '2505202301040082997400120010010000005171234567810.xml', NULL, '2505202301040082997400120010010000005171234567810', NULL, NULL, NULL, 'ONLY - Ca  10 Kg', '184', 'PAPUEZAN PEREZ JOSE MARIA', 'paspuezan.josemaria89@gmail.com', '0400578050', 'CARCHI / ESPEJO / SAN ISIDRO/ BARRIO NORTE/ CALLE SUCRE', '0982955971', '05', '184', '0', NULL, '184', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(465, '2023-05-27 14:49:48', '518', '2120721f8e40784781d5bddf77992d90d2', NULL, '2', '', NULL, '2705202301040082997400120010010000005181234567815.xml', NULL, '2705202301040082997400120010010000005181234567815', NULL, NULL, NULL, 'CURATHANE 500 Gr', '21.3', 'MENESES JIMENEZ MIGUEL ANGEL', 'finca_santarosa7@yahoo.com', '0401124102001', 'CARCHI / ESPEJO / LA ESPERANZA', '0959960196', '04', '103.5', '0', NULL, '103.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(466, '2023-05-27 14:55:35', '519', '2fae731f82004b07e755867565cfd2d642', NULL, '2', '', NULL, '2705202301040082997400120010010000005191234567810.xml', NULL, '2705202301040082997400120010010000005191234567810', NULL, NULL, NULL, 'PIRESTAR LITRO', '27.9', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '86.8', '0', NULL, '86.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(467, '2023-05-27 15:05:36', '520', '21ce537d84d7821e4b0b803ab673589912', NULL, '2', '', NULL, '2705202301040082997400120010010000005201234567816.xml', NULL, '2705202301040082997400120010010000005201234567816', NULL, NULL, NULL, 'PROFIMETH 500', '17.4', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '118.15', '0', NULL, '118.15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(468, '2023-05-29 14:23:36', '521', '261129ca60ac167427351cdde72b68ccd2', NULL, '2', '', NULL, '2905202301040082997400120010010000005211234567810.xml', NULL, '2905202301040082997400120010010000005211234567810', NULL, NULL, NULL, 'DIFENICC LITRO', '60.6', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0982755911', '04', '107.4', '0', NULL, '107.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(469, '2023-05-29 14:27:36', '522', '261129ca60ac167427351cdde72b68ccd2', NULL, '2', '', NULL, '2905202301040082997400120010010000005221234567816.xml', NULL, '2905202301040082997400120010010000005221234567816', NULL, NULL, NULL, 'DIFENICC LITRO', '60.6', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '91.8', '0', NULL, '91.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(470, '2023-05-29 14:51:23', '523', '25ddb759e041212110174cb3101b3b82f2', NULL, '2', '', NULL, '2905202301040082997400120010010000005231234567811.xml', NULL, '2905202301040082997400120010010000005231234567811', NULL, NULL, NULL, 'SPECIAL ENGROSE LITRO', '132', 'CHALAPU                 CHALACAN MARIA NARCISA', 'chalacanm730@gmail.com', '0400746038', 'CARCHI / ESPEJO / SAN ISIDRO / CALLE SUCRE S/N', '0990492176', '05', '132', '0', NULL, '132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(471, '2023-05-29 14:53:04', '524', '259c73c8e984fa6ceba8ec726310ad2392', NULL, '2', '', NULL, '2905202301040082997400120010010000005241234567817.xml', NULL, '2905202301040082997400120010010000005241234567817', NULL, NULL, NULL, 'FULL POTASIO LITRO', '141.6', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '141.6', '0', NULL, '141.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(472, '2023-05-29 14:54:22', '525', '24fef03359e470a715b7639f55fc4c87a2', NULL, '2', '', NULL, '2905202301040082997400120010010000005251234567812.xml', NULL, '2905202301040082997400120010010000005251234567812', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '86.4', 'QUIROZ BRAYAN', 'brayanquiroz33@gmail.com', '0401615174', 'CARCHI / ESPEJO / SAN ISIDRO / COOPERATIVA IGUAN', '0992327636', '05', '158.8', '0', NULL, '158.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(473, '2023-06-01 13:30:11', '526', '238734dba93a77406cf422e820a8a16482', NULL, '2', '', NULL, '0106202301040082997400120010010000005261234567810.xml', NULL, '0106202301040082997400120010010000005261234567810', NULL, NULL, NULL, 'LI 700 100 cc', '4', 'POZO GUAMA JORDAN ALEXANDER', 'pozoguamajordan38@gmail.com', '0450128038', 'CARCHI  / ESPEJO / SAN ISIDRO / CHITACASPI', '0994007519', '05', '85.9', '0', NULL, '85.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(474, '2023-06-02 14:20:39', '527', '25a41042198d432853cc4d514ed1fbe3b2', NULL, '2', '', NULL, '0206202301040082997400120010010000005271234567810.xml', NULL, '0206202301040082997400120010010000005271234567810', NULL, NULL, NULL, 'NAKAR LITRO', '31.6', 'MENESES JIMENEZ MIGUEL ANGEL', 'finca_santarosa7@yahoo.com', '0401124102001', 'CARCHI / ESPEJO / LA ESPERANZA', '0959960196', '04', '193.1', '0', NULL, '193.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(475, '2023-06-02 14:31:15', '528', '2287f89976a2d4ae00974bb09232707f32', NULL, '2', '', NULL, '0206202301040082997400120010010000005281234567816.xml', NULL, '0206202301040082997400120010010000005281234567816', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'MENESES JIMENEZ MIGUEL ANGEL', 'finca_santarosa7@yahoo.com', '0401124102001', 'CARCHI / ESPEJO / LA ESPERANZA', '0959960196', '04', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(476, '2023-06-02 15:39:08', '529', '2ef6d19432cc87eadc424a17e3bfac2072', NULL, '2', '', NULL, '0206202301040082997400120010010000005291234567811.xml', NULL, '0206202301040082997400120010010000005291234567811', NULL, NULL, NULL, 'BELATHION 50 DE 500  gr', '64', 'HERRERA GUERRERO MANUELA MONSERRATH', 'manuherreraguerrero@gmail.com', '1004043236001', 'CARCHI/ESPEJO/SAN ISIDRO', '0939757292', '04', '64', '0', NULL, '64', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(477, '2023-06-02 15:53:24', '530', '2adf05240b501a62c2a7b9d16092b6f572', NULL, '2', '', NULL, '0206202301040082997400120010010000005301234567817.xml', NULL, '0206202301040082997400120010010000005301234567817', NULL, NULL, NULL, 'MOJAVE 250 CC', '67.2', 'MERA RIVADENEIRA MONICA ASUNCION', 'mona_mera1980@hotmail.com', '0919802835001', 'CARCHI / ESPEJO / SAN ISIDRO / EL CHARCO COLORADO SN Y CAMINO PALO BLANCO', '0997866652', '04', '309.8', '0', NULL, '309.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(478, '2023-06-02 15:57:35', '531', '2dfac075c3544021b596fbe37f2c477772', NULL, '2', '', NULL, '0206202301040082997400120010010000005311234567812.xml', NULL, '0206202301040082997400120010010000005311234567812', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '36', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '172.25', '0', NULL, '172.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(479, '2023-06-02 16:02:24', '532', '29c4a5e233d40c6ea8814ce43938417a72', NULL, '2', '', NULL, '0206202301040082997400120010010000005321234567818.xml', NULL, '0206202301040082997400120010010000005321234567818', NULL, NULL, NULL, 'LI 700 100 cc', '4', 'PAPUEZAN PEREZ JOSE MARIA', 'paspuezan.josemaria89@gmail.com', '0400578050', 'CARCHI / ESPEJO / SAN ISIDRO/ BARRIO NORTE/ CALLE SUCRE', '0982955971', '05', '85.9', '0', NULL, '85.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(480, '2023-06-02 16:35:30', '533', '2efae05108d6893505f046a80428af38b2', NULL, '2', '', NULL, '0206202301040082997400120010010000005331234567813.xml', NULL, '0206202301040082997400120010010000005331234567813', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'GUAPAZ LOPEZ SANDRA JULIANA', 'julianaguapaz@gmail.com', '0401823703', 'JULIO ANDRADE', '0968807888', '05', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(481, '2023-06-02 16:38:30', '534', '2efae05108d6893505f046a80428af38b2', NULL, '2', '', NULL, '0206202301040082997400120010010000005341234567819.xml', NULL, '0206202301040082997400120010010000005341234567819', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'TRUJILLO ERAZO GILBER', 'gilbertrujillo74@hotmail.com', '0401120142001', 'CARCHI / ESPEJO / LA LIBERTAD ', '0967218715', '04', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(482, '2023-06-02 17:03:39', '535', '2b0d9cc70b2e9c36ba288836023f8d71f2', NULL, '2', '', NULL, '0206202301040082997400120010010000005351234567814.xml', NULL, '0206202301040082997400120010010000005351234567814', NULL, NULL, NULL, 'PROFIMETH 500 Gr', '17', 'TRUJILLO ERAZO GILBER', 'gilbertrujillo74@hotmail.com', '0401120142001', 'CARCHI / ESPEJO / LA LIBERTAD ', '0967218715', '04', '183.85', '0', NULL, '183.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(483, '2023-06-02 20:46:40', '536', '2cf101569588c28cdd0e2c734598ae8452', NULL, '2', '', NULL, '0206202301040082997400120010010000005361234567811.xml', NULL, '0206202301040082997400120010010000005361234567811', NULL, NULL, NULL, 'SKIPPER 200 Gr', '18.2', 'POZO GUAMA JORDAN ALEXANDER', 'pozoguamajordan38@gmail.com', '0450128038', 'CARCHI  / ESPEJO / SAN ISIDRO / CHITACASPI', '0994007519', '05', '167.75', '0', NULL, '167.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(484, '2023-06-02 21:12:58', '537', '2e2e84d3a5140ae94f2b43f332f9910d22', NULL, '2', '', NULL, '0206202301040082997400120010010000005371234567815.xml', NULL, '0206202301040082997400120010010000005371234567815', NULL, NULL, NULL, 'SOLL 500 gr', '31.5', 'TRUJILLO ERAZO GILBER GEOVANNY', 'gilbertrujillo74@hotmail.com', '0401120142001', 'CARCHI / ESPEJO / LA LIBERTAD ', '0967218715', '04', '395.2', '0', NULL, '395.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(485, '2023-06-02 21:19:22', '538', '2d03892ee74f66426cb672f944e3c91132', NULL, '2', '', NULL, '0206202301040082997400120010010000005381234567810.xml', NULL, '0206202301040082997400120010010000005381234567810', NULL, NULL, NULL, 'SOLL 500 gr', '56.7', 'TRUJILLO ERAZO GILBER GEOVANNY', 'gilbertrujillo74@hotmail.com', '0401120142001', 'CARCHI / ESPEJO / LA LIBERTAD ', '0967218715', '04', '714.23', '0', NULL, '714.23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(486, '2023-06-02 21:27:45', '539', '2f5ce773119bc555f1ee1ed19e301c8f62', NULL, '2', '', NULL, '0206202301040082997400120010010000005391234567816.xml', NULL, '0206202301040082997400120010010000005391234567816', NULL, NULL, NULL, 'Flumezona  de 10 ml', '3.8', 'REINA YAZAN MARILSA ENCARNACION', 'marilsareina@hotmail.com', '0401338181001', 'CARCHI/MIRA / MIRA / PRINCIPAL', '0983611124', '04', '68.8', '0', NULL, '68.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(487, '2023-06-04 03:26:45', '539', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(488, '2023-06-04 03:45:03', '539', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(489, '2023-06-04 04:17:19', '540', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(490, '2023-06-04 04:17:23', '539', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(491, '2023-06-04 13:40:33', '540', '27336c8fdb88134957eca0e4cee1730cb2', NULL, '2', '', NULL, '0406202301040082997400120010010000005401234567810.xml', NULL, '0406202301040082997400120010010000005401234567810', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'POZO GUAMA JORDAN ALEXANDER', 'pozoguamajordan38@gmail.com', '0450128038', 'CARCHI  / ESPEJO / SAN ISIDRO / CHITACASPI', '0994007519', '05', '94.65', '0', NULL, '94.65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(492, '2023-06-04 14:22:58', '541', '20771d920a922b712cea39ed8fa658ace2', NULL, '2', '', NULL, '0406202301040082997400120010010000005411234567816.xml', NULL, '0406202301040082997400120010010000005411234567816', NULL, NULL, NULL, 'ONLY - Ca  10 Kg', '184', 'QUINTANCHALA LUIS ARSECIO', 'qluisarsecio@gmail.com', '0400804779', 'CARCHI / ESPEJO / EL ANGEL / SAN MIGUEL DE CHABAYAN', '0983058353', '05', '184', '0', NULL, '184', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(493, '2023-06-04 14:26:02', '542', '22b97f3e7518cf546132c012ca351ba6e2', NULL, '2', '', NULL, '0406202301040082997400120010010000005421234567811.xml', NULL, '0406202301040082997400120010010000005421234567811', NULL, NULL, NULL, 'LI 700 LITRO', '11.8', 'QUINTANCHALA LUIS ARSECIO', 'qluisarsecio@gmail.com', '0400804779', 'CARCHI / ESPEJO / EL ANGEL / SAN MIGUEL DE CHABAYAN', '0983058353', '05', '435.8', '0', NULL, '435.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(494, '2023-06-04 14:32:08', '543', '2c53cee99db1a309b96285d0de69df9402', NULL, '2', '', NULL, '0406202301040082997400120010010000005431234567817.xml', NULL, '0406202301040082997400120010010000005431234567817', NULL, NULL, NULL, 'CURATHANE 500 Gr', '14.2', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI/ESPEJO/SAN ISIDRO/PRINCIPAL', '0999475230', '04', '131', '0', NULL, '131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(495, '2023-06-05 15:13:12', '544', '23a81f6ef67a1ffd3275aaeb39930b65a2', NULL, '2', '', NULL, '0506202301040082997400120010010000005441234567817.xml', NULL, '0506202301040082997400120010010000005441234567817', NULL, NULL, NULL, 'MOJAVE 250 CC', '48.6', 'PAPUEZAN PEREZ JOSE MARIA', 'paspuezan.josemaria89@gmail.com', '0400578050', 'CARCHI / ESPEJO / SAN ISIDRO/ BARRIO NORTE/ CALLE SUCRE', '0982955971', '05', '92.8', '0', NULL, '92.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(496, '2023-06-05 15:36:20', '545', '23bf044614cf4b8532f2a867a11f368542', NULL, '2', '', NULL, '0506202301040082997400120010010000005451234567812.xml', NULL, '0506202301040082997400120010010000005451234567812', NULL, NULL, NULL, 'COURAGE LITRO', '15.6', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI/ESPEJO/SAN ISIDRO/SUCRE', '0980447546', '04', '91.5', '0', NULL, '91.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(497, '2023-06-05 15:40:41', '546', '253e06e0c59b3f4c6cf5f4775892e143d2', NULL, '2', '', NULL, '0506202301040082997400120010010000005461234567818.xml', NULL, '0506202301040082997400120010010000005461234567818', NULL, NULL, NULL, 'PROMESS LITRO', '36.2', 'JIMENEZ MITES JORGE BAYARDO', 'facturas.oljt@gmail.com', '0400443099001', 'CARCHI/ESPEJO/LA LIBERTAD /VIA A LA RESERVA ECOLOGICA', '0991798397', '04', '113.6', '0', NULL, '113.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(498, '2023-06-05 15:43:12', '547', '23a81f6ef67a1ffd3275aaeb39930b65a2', NULL, '2', '', NULL, '0506202301040082997400120010010000005471234567813.xml', NULL, '0506202301040082997400120010010000005471234567813', NULL, NULL, NULL, 'FISH FERTILIZER LITRO', '58.8', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA/IBARRA/SAGRARIO/ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '148.9', '0', NULL, '148.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(499, '2023-06-05 21:56:27', '548', '2524b24699e57ee69c7b18089994844ce2', NULL, '2', '', NULL, '0506202301040082997400120010010000005481234567819.xml', NULL, '0506202301040082997400120010010000005481234567819', NULL, NULL, NULL, 'Sultrivet de 20 ml', '4.8', 'TITUAÃ‘A BOLAÃ‘OS YOLANDA ESPERANZA', 'tituayolanda61@gmail.com', '0400729943', 'CARCHI / ESPEJO / SAN ISIDRO / BARRIO SANTA ROSA', '0979613556', '05', '58.35', '0', NULL, '58.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(500, '2023-06-05 21:58:46', '549', '2b6321ae07b9984080da304e61cd6451a2', NULL, '2', '', NULL, '0506202301040082997400120010010000005491234567814.xml', NULL, '0506202301040082997400120010010000005491234567814', NULL, NULL, NULL, 'B - Plex de 20 ml', '3.2', 'RUANAO TINUAÃ‘A JUAN CARLOS', 'ruanojuan445@gmail.com', '0401614938', 'CARCHI / ESPEJO / SAN ISIDRO / BARRIO SANTA ROSA', '0981962371', '05', '57.9', '0', NULL, '57.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(501, '2023-06-05 22:02:46', '550', '21a17578bd4ddab0823051c1a6b1a90922', NULL, '2', '', NULL, '0506202301040082997400120010010000005501234567811.xml', NULL, '0506202301040082997400120010010000005501234567811', NULL, NULL, NULL, 'Sultrivet de 20 ml', '4.8', 'RUANO TITUAÃ‘A JUAN CARLOS', 'ruanojuan445@gmail.com', '0401614938', 'CARCHI / ESPEJO / SAN ISIDRO / BARRIO SANTA ROSA', '0981962371', '05', '57.3', '0', NULL, '57.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(502, '2023-06-08 15:35:20', '551', '2a07254c42f21e33e7356c70e6ac0aaf72', NULL, '2', '', NULL, '0806202301040082997400120010010000005511234567819.xml', NULL, '0806202301040082997400120010010000005511234567819', NULL, NULL, NULL, 'BELATHION 50 DE 500  gr', '12.8', 'TITUAÃ‘A BOLAÃ‘OS YOLANDA ESPERANZA', 'tituayolanda61@gmail.com', '0400729943', 'CARCHI / ESPEJO / SAN ISIDRO / BARRIO SANTA ROSA', '0979613556', '05', '98.8', '0', NULL, '98.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(503, '2023-06-08 15:38:24', '552', '2f202772abda892b1b47f05f9e84607f72', NULL, '2', '', NULL, '0806202301040082997400120010010000005521234567814.xml', NULL, '0806202301040082997400120010010000005521234567814', NULL, NULL, NULL, 'Sultrivet   de 100 ml', '13', 'PAPUEZAN PEREZ JOSE MARIA', 'paspuezan.josemaria89@gmail.com', '0400578050', 'CARCHI / ESPEJO / SAN ISIDRO/ BARRIO NORTE/ CALLE SUCRE', '0982955971', '05', '84.4', '0', NULL, '84.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(504, '2023-06-08 15:56:10', '553', '2c28ea736031f5b2c8a778c307167dc132', NULL, '2', '', NULL, '0806202301040082997400120010010000005531234567811.xml', NULL, '0806202301040082997400120010010000005531234567811', NULL, NULL, NULL, 'SOLL 500 gr', '126', 'POZO GUAMA JORDAN ALEXANDER', 'pozoguamajordan38@gmail.com', '0450128038', 'CARCHI  / ESPEJO / SAN ISIDRO / CHITACASPI', '0994007519', '05', '126', '0', NULL, '126', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(505, '2023-06-08 15:58:40', '554', '2eec926409396eb9e2e9103ff43e0c7df2', NULL, '2', '', NULL, '0806202301040082997400120010010000005541234567815.xml', NULL, '0806202301040082997400120010010000005541234567815', NULL, NULL, NULL, 'DACONIL LITRO', '56.8', 'MERA RIVADENEIRA MONICA ASUNCION', 'mona_mera1980@hotmail.com', '0919802835001', 'CARCHI / ESPEJO / SAN ISIDRO / EL CHARCO COLORADO SN Y CAMINO PALO BLANCO', '0997866652', '04', '130.3', '0', NULL, '130.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(506, '2023-06-08 16:00:12', '555', '22fe44d59752ea7535e8b1b3c1a1794a72', NULL, '2', '', NULL, '0806202301040082997400120010010000005551234567810.xml', NULL, '0806202301040082997400120010010000005551234567810', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '57.6', 'CHALAPU                 CHALACAN MARIA NARCISA', 'chalacanm730@gmail.com', '0400746038', 'CARCHI / ESPEJO / SAN ISIDRO / CALLE SUCRE S/N', '0990492176', '05', '105.2', '0', NULL, '105.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(507, '2023-06-08 16:02:08', '556', '24264916c2d4770cd90fefa4b84e16cac2', NULL, '2', '', NULL, '0806202301040082997400120010010000005561234567816.xml', NULL, '0806202301040082997400120010010000005561234567816', NULL, NULL, NULL, 'FULL ALGAE LITRO', '49', 'QUIROZ BRAYAN', 'brayanquiroz33@gmail.com', '0401615174', 'CARCHI / ESPEJO / SAN ISIDRO / COOPERATIVA IGUAN', '0992327636', '05', '83.1', '0', NULL, '83.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(508, '2023-06-08 21:12:13', '557', '2d554fad5ff0c1f81c70016c7c83201ce2', NULL, '2', '', NULL, '0806202301040082997400120010010000005571234567811.xml', NULL, '0806202301040082997400120010010000005571234567811', NULL, NULL, NULL, 'SCORE EJEMPLO', '0.75', 'REINA YAZAN MARILSA ENCARNACION', 'marilsareina@hotmail.com', '0401338181001', 'CARCHI MIRA MIRA PRINCIPAL', '0983611124', '04', '0.75', '0', NULL, '0.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO');
INSERT INTO `comprobante_factura_final` (`id`, `fecha`, `codigo_factura`, `codigo_interno_factura`, `secuencia`, `id_emisor`, `id_receptor`, `xml_no_firmado`, `xml_autorizado`, `factura_pdf`, `clave_acceso`, `id_producto`, `cantidad_producto`, `precio_producto`, `descripcion`, `precio_neto`, `nombres_receptor`, `email_receptor`, `cedula_receptor`, `direccion_receptor`, `celular_receptor`, `tipo_identificacion`, `subtotal`, `iva`, `descuento_general`, `total`, `codigo_factura_credito`, `nomnto_modificacion`, `razon_modficiacion`, `numDocModificado`, `identificacion_nc`, `clave_acceso_guia`, `clave_acceso_factura`, `direccion_partida`, `direccion_llegada`, `razon_social_transportista`, `tipoIdentificacionTransportista`, `fecha_inicio_transporte`, `fecha_final_transporte`, `placa_transportista`, `ruc_transportista`, `motivo_traslado`, `comprobante`, `estado`) VALUES
(509, '2023-06-08 21:17:06', '558', '2c7f6c1eed46ff159b8ff297ef09939452', NULL, '2', '', NULL, '0806202301040082997400120010010000005581234567817.xml', NULL, '0806202301040082997400120010010000005581234567817', NULL, NULL, NULL, 'SCORE EJEMPLO', '0.75', 'NAIDELYN YUBIRITH REVELO QUISTIAL', 'naidereve2002@gmail.com', '0401969928', 'CARCHI ESPEJO SAN ISIDRO SUCRE Y COLON', '0980054803', '05', '0.75', '0', NULL, '0.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(510, '2023-06-08 21:42:36', '559', '20115b66664d69b7bf574863c68b05b772', NULL, '2', '', NULL, '0806202301040082997400120010010000005591234567812.xml', NULL, '0806202301040082997400120010010000005591234567812', NULL, NULL, NULL, 'SCORE EJEMPLO', '0.75', 'NAIDELYN YUBIRITH REVELO QUISTIAL', 'naidereve2002@gmail.com', '0401969928', 'CARCHI ESPEJO SAN ISIDRO SUCRE Y COLON', '0980054803', '05', '0.75', '0', NULL, '0.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(511, '2023-06-09 23:38:33', '560', '23412215c3de6105f27d6091e550cda7c2', NULL, '2', '', NULL, '0906202301040082997400120010010000005601234567812.xml', NULL, '0906202301040082997400120010010000005601234567812', NULL, NULL, NULL, 'SCORE EJEMPLO', '0.65', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI ESPEJO SAN ISIDRO SUCRE Y COLON', '0981161128', '04', '0.65', '0', NULL, '0.65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(512, '2023-06-11 00:17:42', '561', '278b055a90fa0ae4e63a2bd029ec7555b2', NULL, '2', '', NULL, '1006202301040082997400120010010000005611234567810.xml', NULL, '1006202301040082997400120010010000005611234567810', NULL, NULL, NULL, 'SOLL 500 gr', '12.6', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '77.6', '0', NULL, '77.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(513, '2023-06-11 00:19:57', '562', '25e9383ddee9a5ef2aad897eb57b278c32', NULL, '2', '', NULL, '1006202301040082997400120010010000005621234567816.xml', NULL, '1006202301040082997400120010010000005621234567816', NULL, NULL, NULL, 'STIMULUS  3020 LITRO', '11.9', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI ESPEJO SAN ISIDRO PRINCIPAL', '0982755911', '04', '36.2', '0', NULL, '36.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(514, '2023-06-11 00:21:38', '563', '29fa8fe549ccfa595b354a2f48aa6bc9a2', NULL, '2', '', NULL, '1006202301040082997400120010010000005631234567811.xml', NULL, '1006202301040082997400120010010000005631234567811', NULL, NULL, NULL, 'AVALON DE 100 CC', '9.4', 'HERRERA GUERRERO MANUELA MONSERRATH', 'manuherreraguerrero@gmail.com', '1004043236001', 'CARCHI ESPEJO SAN ISIDRO', '0939757292', '04', '38.6', '0', NULL, '38.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(515, '2023-06-11 00:23:56', '564', '2d02c9d19b1259606f43a946e06ef7a822', NULL, '2', '', NULL, '1006202301040082997400120010010000005641234567817.xml', NULL, '1006202301040082997400120010010000005641234567817', NULL, NULL, NULL, 'LI 700 LITRO', '11.8', 'REINA YAZAN MARILSA ENCARNACION', 'marilsareina@hotmail.com', '0401338181001', 'CARCHI MIRA MIRA PRINCIPAL', '0983611124', '04', '67.4', '0', NULL, '67.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(516, '2023-06-11 00:27:31', '565', '2a983d8d5e8ff45d785d924bb729612842', NULL, '2', '', NULL, '1006202301040082997400120010010000005651234567812.xml', NULL, '1006202301040082997400120010010000005651234567812', NULL, NULL, NULL, 'COSAGRIN 80 Kg', '19.6', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA IBARRA SAGRARIO ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '60.6', '0', NULL, '60.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(517, '2023-06-11 00:29:12', '566', '28d4dc8917c83aafb2cf25682b9c48a1f2', NULL, '2', '', NULL, '1006202301040082997400120010010000005661234567818.xml', NULL, '1006202301040082997400120010010000005661234567818', NULL, NULL, NULL, 'FULL BORO MOLIBDENO LITRO', '26.6', 'JIMENEZ MITES JORGE BAYARDO', 'facturas.oljt@gmail.com', '0400443099001', 'CARCHIESPEJOLA LIBERTAD VIA A LA RESERVA ECOLOGICA', '0991798397', '04', '55.4', '0', NULL, '55.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(518, '2023-06-11 00:34:33', '567', '23f34ae844e6f1fbba238e8064e48ae122', NULL, '2', '', NULL, '1006202301040082997400120010010000005671234567813.xml', NULL, '1006202301040082997400120010010000005671234567813', NULL, NULL, NULL, 'FITORAZ 500 gr', '8.8', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '78.65', '0', NULL, '78.65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(519, '2023-06-11 00:36:39', '568', '270745ee61beb08217f8f7cf8d26112352', NULL, '2', '', NULL, '1006202301040082997400120010010000005681234567819.xml', NULL, '1006202301040082997400120010010000005681234567819', NULL, NULL, NULL, 'MOJAVE 250 CC', '8.1', 'QUIROZ BRAYAN', 'brayanquiroz33@gmail.com', '0401615174', 'CARCHI  ESPEJO  SAN ISIDRO  COOPERATIVA IGUAN', '0992327636', '05', '20.5', '0', NULL, '20.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(520, '2023-06-11 13:24:19', '569', '2a848b96c029f9ab7b4881b1cb03624812', NULL, '2', '', NULL, '1106202301040082997400120010010000005691234567819.xml', NULL, '1106202301040082997400120010010000005691234567819', NULL, NULL, NULL, 'COURAGE LITRO', '31.2', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA IBARRA SAGRARIO ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '149', '0', NULL, '149', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(521, '2023-06-11 13:25:44', '570', '2a156907d1ecff9baa418d5baa0ebf03e2', NULL, '2', '', NULL, '1106202301040082997400120010010000005701234567814.xml', NULL, '1106202301040082997400120010010000005701234567814', NULL, NULL, NULL, 'FULL COBRE Litro', '27.4', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '88.2', '0', NULL, '88.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(522, '2023-06-11 13:27:35', '571', '2aaa16d52bc5c8932305f37bd971653022', NULL, '2', '', NULL, '1106202301040082997400120010010000005711234567811.xml', NULL, '1106202301040082997400120010010000005711234567811', NULL, NULL, NULL, 'THANAVIN 100 GR', '28', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '32.9', '0', NULL, '32.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(523, '2023-06-11 13:35:19', '572', '2a848b96c029f9ab7b4881b1cb03624812', NULL, '2', '', NULL, '1106202301040082997400120010010000005721234567815.xml', NULL, '1106202301040082997400120010010000005721234567815', NULL, NULL, NULL, 'SEAWEED FLUID LITRO', '87.2', 'REINA YAZAN MARILSA ENCARNACION', 'marilsareina@hotmail.com', '0401338181001', 'CARCHI MIRA MIRA PRINCIPAL', '0983611124', '04', '87.2', '0', NULL, '87.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(524, '2023-06-11 13:37:40', '573', '25dcefc8eb01f5b46d1fc0324234e01d62', NULL, '2', '', NULL, '1106202301040082997400120010010000005731234567810.xml', NULL, '1106202301040082997400120010010000005731234567810', NULL, NULL, NULL, 'ENGEO LITRO', '147', 'RUANO TITUAÃ‘A JUAN CARLOS', 'ruanojuan445@gmail.com', '0401614938', 'CARCHI ESPEJO SAN ISIDRO BARRIO SANTA ROSA', '0981962371', '05', '147', '0', NULL, '147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(525, '2023-06-12 18:48:09', '574', '2a5d0c061f410971c8329a9d3a0e264032', NULL, '2', '', NULL, '1206202301040082997400120010010000005741234567810.xml', NULL, '1206202301040082997400120010010000005741234567810', NULL, NULL, NULL, 'FULL BORO MOLIBDENO LITRO', '79.8', 'NAIDELYN YUBIRITH REVELO QUISTIAL', 'naidereve2002@gmail.com', '0401969928', 'CARCHI ESPEJO SAN ISIDRO SUCRE Y COLON', '0980054803', '05', '79.8', '0', NULL, '79.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(526, '2023-06-12 18:50:19', '575', '2c5b60cd55971ece3a94c782c8d761d552', NULL, '2', '', NULL, '1206202301040082997400120010010000005751234567816.xml', NULL, '1206202301040082997400120010010000005751234567816', NULL, NULL, NULL, 'ANTOR LITRO', '15.7', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI ESPEJO SAN ISIDRO SUCRE Y COLON', '0981161128', '04', '62.5', '0', NULL, '62.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(527, '2023-06-12 18:51:23', '576', '296bc85b27e1973fece01f773ca604ed72', NULL, '2', '', NULL, '1206202301040082997400120010010000005761234567811.xml', NULL, '1206202301040082997400120010010000005761234567811', NULL, NULL, NULL, 'TOPAS LITRO', '65.4', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI ESPEJO SAN ISIDRO PRINCIPAL', '0982755911', '04', '65.4', '0', NULL, '65.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(528, '2023-06-12 18:52:23', '577', '296bc85b27e1973fece01f773ca604ed72', NULL, '2', '', NULL, '1206202301040082997400120010010000005771234567817.xml', NULL, '1206202301040082997400120010010000005771234567817', NULL, NULL, NULL, 'STIMULUS 30 20 LITRO', '71.4', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '71.4', '0', NULL, '71.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(529, '2023-06-12 18:53:11', '578', '22631eb451b0301082fc5d012e74a675d2', NULL, '2', '', NULL, '1206202301040082997400120010010000005781234567812.xml', NULL, '1206202301040082997400120010010000005781234567812', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '86.4', 'REINA YAZAN MARILSA ENCARNACION', 'marilsareina@hotmail.com', '0401338181001', 'CARCHI MIRA MIRA PRINCIPAL', '0983611124', '04', '86.4', '0', NULL, '86.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(530, '2023-06-12 18:54:19', '579', '2c5b60cd55971ece3a94c782c8d761d552', NULL, '2', '', NULL, '1206202301040082997400120010010000005791234567818.xml', NULL, '1206202301040082997400120010010000005791234567818', NULL, NULL, NULL, 'BLOSSOM BLEND LITRO', '146.4', 'CUPUERAN CARRERA ALEXANDRA DEL CARMEN', 'alexas6-24@hotmail.com', '1003839196001', 'CARH ESPEJO SAN ISIDRO BOLIVAR', '0991009768', '04', '146.4', '0', NULL, '146.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(531, '2023-06-12 18:57:20', '580', '2aa8815134c25429526355cb17794d45a2', NULL, '2', '', NULL, '1206202301040082997400120010010000005801234567813.xml', NULL, '1206202301040082997400120010010000005801234567813', NULL, NULL, NULL, 'SOLL 500 gr', '6.3', 'PAPUEZAN PEREZ JOSE MARIA', 'paspuezan.josemaria89@gmail.com', '0400578050', 'CARCHI ESPEJO SAN ISIDRO  BARRIO NORTE  CALLE SUCRE', '0982955971', '05', '6.3', '0', NULL, '6.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(532, '2023-06-12 19:20:54', '581', '2e2b4e026a4fd888847d47aec9e2fdd2b2', NULL, '2', '', NULL, '1206202301040082997400120010010000005811234567819.xml', NULL, '1206202301040082997400120010010000005811234567819', NULL, NULL, NULL, 'ANTRACOL 400 Gr', '7.6', 'POZO GUAMA JORDAN ALEXANDER', 'pozoguamajordan38@gmail.com', '0450128038', 'CARCHI  ESPEJO SAN ISIDRO CHITACASPI', '0994007519', '05', '11.1', '0', NULL, '11.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(533, '2023-06-12 19:24:47', '582', '23dbac5aa4a003a1e573b4617eafc4f3a2', NULL, '2', '', NULL, '1206202301040082997400120010010000005821234567814.xml', NULL, '1206202301040082997400120010010000005821234567814', NULL, NULL, NULL, 'DISFOL PH 100 cc', '1.8', 'QUIROZ BRAYAN', 'brayanquiroz33@gmail.com', '0401615174', 'CARCHI  ESPEJO  SAN ISIDRO  COOPERATIVA IGUAN', '0992327636', '05', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(534, '2023-06-12 19:25:55', '583', '22362c538e534f8dde16a86043e9c82112', NULL, '2', '', NULL, '1206202301040082997400120010010000005831234567811.xml', NULL, '1206202301040082997400120010010000005831234567811', NULL, NULL, NULL, 'Diclofenaco  100 plus de 10 ml', '3.9', 'POZO GUAMIALAMA JOSE MIGUEL', 'jmiguelpozog@gmail.com', '0401152947001', 'CARCHI ESPEJO SAN ISIDRO PRINCIPAL', '0979441835', '04', '3.9', '0', NULL, '3.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(535, '2023-06-13 13:15:57', '584', '238991c7ea51af377785b6afcbbfde8b72', NULL, '2', '', NULL, '1306202301040082997400120010010000005841234567811.xml', NULL, '1306202301040082997400120010010000005841234567811', NULL, NULL, NULL, 'COSAGRIN 80 Kg', '49', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '76.2', '0', NULL, '76.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(536, '2023-06-13 13:21:44', '585', '249e82584f59f957bdd07c0beb5000c782', NULL, '2', '', NULL, '1306202301040082997400120010010000005851234567815.xml', NULL, '1306202301040082997400120010010000005851234567815', NULL, NULL, NULL, 'FULL POTASIO LITRO', '118', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '164.8', '0', NULL, '164.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(537, '2023-06-15 20:39:13', '586', '2df80fae8ba5a93c3964edb9c3d499a162', NULL, '2', '', NULL, '1506202301040082997400120010010000005861234567811.xml', NULL, '1506202301040082997400120010010000005861234567811', NULL, NULL, NULL, 'AVALON 100 cc', '4.6', 'ESPAÃ‘A POZO SEGUNDO ISIDRO', 'isidroespana64@gmail.com', '0400446241001', 'CARCHI ESPEJO INGUEZA', '0994132689', '04', '4.6', '0', NULL, '4.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(538, '2023-06-20 00:53:29', '587', '293e18d10b757fcff6e08ed4165406cce2', NULL, '2', '', NULL, '1906202301040082997400120010010000005871234567813.xml', NULL, '1906202301040082997400120010010000005871234567813', NULL, NULL, NULL, 'DISFOL PH 100 cc', '1.8', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '93.05', '0', NULL, '93.05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(539, '2023-06-20 22:58:15', '588', '216afa1021263bfeeb6dd81307efb3f962', NULL, '2', '', NULL, '2006202301040082997400120010010000005881234567811.xml', NULL, '2006202301040082997400120010010000005881234567811', NULL, NULL, NULL, 'COSAGRIN 80 Kg', '4.9', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI ESPEJO SAN ISIDRO PRINCIPAL', '0999475230', '04', '83.4', '0', NULL, '83.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(540, '2023-06-20 23:01:41', '589', '245a593ec1a2cc3b37931aabee3c62d782', NULL, '2', '', NULL, '2006202301040082997400120010010000005891234567817.xml', NULL, '2006202301040082997400120010010000005891234567817', NULL, NULL, NULL, 'COSAGRIN 80 Kg', '4.9', 'PABON CASTRO MARCO PABEL', 'marcopabon1980@gmail.com', '1003081187001', 'CARCHI ESPEJO SAN ISIDRO PRINCIPAL', '0999475230', '04', '83.4', '0', NULL, '83.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(541, '2023-06-27 20:04:22', '590', '2c86f5abf08830c14657fd260ad23f7972', NULL, '2', '', NULL, '2706202301040082997400120010010000005901234567814.xml', NULL, '2706202301040082997400120010010000005901234567814', NULL, NULL, NULL, 'ONLY Ca  10 Kg', '235', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '606.8', '0', NULL, '606.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(542, '2023-06-27 20:48:14', '591', '2567a4ccd02fb6389b73aac7e0b9b2d382', NULL, '2', '', NULL, '2706202301040082997400120010010000005911234567811.xml', NULL, '2706202301040082997400120010010000005911234567811', NULL, NULL, NULL, 'STIMULUS  30 20 LITRO', '58', 'ESPAÃ‘A POZO SEGUNDO ISIDRO', 'isidroespana64@gmail.com', '0400446241001', 'CARCHI ESPEJO INGUEZA', '0994132689', '04', '230', '0', NULL, '230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(543, '2023-06-27 20:49:40', '592', '2be9768d651d9fd8ab2f8a608e596c5782', NULL, '2', '', NULL, '2706202301040082997400120010010000005921234567815.xml', NULL, '2706202301040082997400120010010000005921234567815', NULL, NULL, NULL, 'FULL BORO MOLIBDENO LITRO', '104', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA IBARRA SAGRARIO ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '104', '0', NULL, '104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(544, '2023-06-27 20:51:57', '593', '2c87ee7af6400ea5497cfa2ec29ed5a0b2', NULL, '2', '', NULL, '2706202301040082997400120010010000005931234567810.xml', NULL, '2706202301040082997400120010010000005931234567810', NULL, NULL, NULL, 'BLOSSOM BLEND LITRO', '195.2', 'CUPUERAN CARRERA ALEXANDRA DEL CARMEN', 'alexas6-24@hotmail.com', '1003839196001', 'CARH ESPEJO SAN ISIDRO BOLIVAR', '0991009768', '04', '195.2', '0', NULL, '195.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(545, '2023-06-27 20:54:15', '594', '29e45dd591f8872af46c46ff0bad53ee62', NULL, '2', '', NULL, '2706202301040082997400120010010000005941234567816.xml', NULL, '2706202301040082997400120010010000005941234567816', NULL, NULL, NULL, 'ELTRA LITRO', '141.5', 'PALMA MOSQUERA EDISON PATRICIO', 'palmam76@hotmail.com', '0401143185001', 'CARCHI ESPEJO SAN ISIDRO PRINCIPAL', '0982755911', '04', '141.5', '0', NULL, '141.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(546, '2023-06-27 20:56:32', '595', '2942f093e86fe99d7fab7eb1c849fed9a2', NULL, '2', '', NULL, '2706202301040082997400120010010000005951234567811.xml', NULL, '2706202301040082997400120010010000005951234567811', NULL, NULL, NULL, 'ANTOR LITRO', '31.4', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI ESPEJO SAN ISIDRO SUCRE Y COLON', '0981161128', '04', '118.4', '0', NULL, '118.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(547, '2023-06-27 21:00:21', '596', '2e5f152348beb4cef332135eff25b1ebd2', NULL, '2', '', NULL, '2706202301040082997400120010010000005961234567817.xml', NULL, '2706202301040082997400120010010000005961234567817', NULL, NULL, NULL, 'STARNER  200 Gr.', '298.8', 'JIMENEZ MITES JORGE BAYARDO', 'facturas.oljt@gmail.com', '0400443099001', 'CARCHIESPEJOLA LIBERTAD VIA A LA RESERVA ECOLOGICA', '0991798397', '04', '298.8', '0', NULL, '298.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(548, '2023-06-29 13:35:01', '597', '28516e41c4c0e52f59dc0b98cffe30b782', NULL, '2', '', NULL, '2906202301040082997400120010010000005971234567811.xml', NULL, '2906202301040082997400120010010000005971234567811', NULL, NULL, NULL, 'RENDIDOR ESPECIAL', '610.8', 'POZO GUAMIALAMA JOSE MIGUEL', 'jmiguelpozog@gmail.com', '0401152947001', 'CARCHI ESPEJO SAN ISIDRO PRINCIPAL', '0979441835', '04', '610.8', '0', NULL, '610.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(549, '2023-07-05 14:53:41', '598', '2a27dc67694e87cbacb3192ddd12a98822', NULL, '2', '', NULL, '0507202301040082997400120010010000005981234567818.xml', NULL, '0507202301040082997400120010010000005981234567818', NULL, NULL, NULL, 'ELTRA LITRO', '28.3', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '104.1', '0', NULL, '104.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(550, '2023-07-05 15:26:33', '599', '262eae8da45db079b5a4ef975900a9f382', NULL, '2', '', NULL, '0507202301040082997400120010010000005991234567813.xml', NULL, '0507202301040082997400120010010000005991234567813', NULL, NULL, NULL, 'SEMBRADOR 153015', '260', 'YANEZ IMBAQUINGO JOSE GONZALO', 'gonzaloyanez148@hotmail.com', '1002331682001', 'CARCHI ESPEJO SAN ISIDRO CALLE 24 DE MAYO', '0989423713', '04', '310.5', '0', NULL, '310.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(551, '2023-07-05 15:47:03', '600', '2dd03497c2662bfa54306916b0fe17a252', NULL, '2', '', NULL, '0507202301040082997400120010010000006001234567817.xml', NULL, '0507202301040082997400120010010000006001234567817', NULL, NULL, NULL, 'LI 700 100 cc', '6', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '100.6', '0', NULL, '100.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(552, '2023-07-06 14:57:25', '601', '217ed4e3b267ed180f7aa0d14ea9ab6402', NULL, '2', '', NULL, '0607202301040082997400120010010000006011234567817.xml', NULL, '0607202301040082997400120010010000006011234567817', NULL, NULL, NULL, 'RENDIDOR ESPECIAL', '50.5', 'TAIMAL ZAMBRANO WILSON RAMIRO', 'base4x4@hotmail.com', '1003267869001', 'CARCHI ESPEJO SAN ISIDRO PANAMERICANA SUR', '0980613463', '04', '50.5', '0', NULL, '50.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(553, '2023-07-06 15:23:13', '602', '20b44150c26e62983bc4ab00c9dfdeea52', NULL, '2', '', NULL, '0607202301040082997400120010010000006021234567812.xml', NULL, '0607202301040082997400120010010000006021234567812', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '50.4', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '111.1', '0', NULL, '111.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(554, '2023-07-06 15:40:15', '603', '2041e3f1bb6bfb6a5f567a48fe65853ad2', NULL, '2', '', NULL, '0607202301040082997400120010010000006031234567818.xml', NULL, '0607202301040082997400120010010000006031234567818', NULL, NULL, NULL, 'DESNUKADOR LITRO', '29.4', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA IBARRA SAGRARIO ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '115', '0', NULL, '115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(555, '2023-07-06 16:27:26', '604', '20da6a16fef7c44755e23370792ea01072', NULL, '2', '', NULL, '0607202301040082997400120010010000006041234567813.xml', NULL, '0607202301040082997400120010010000006041234567813', NULL, NULL, NULL, 'ANTRACOL 400 Gr', '7.4', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI ESPEJO SAN ISIDRO SUCRE Y COLON', '0981161128', '04', '95.9', '0', NULL, '95.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(556, '2023-07-09 14:50:16', '605', '21cb48a65d7e8bba69bb7540ea288fb792', NULL, '2', '', NULL, '0907202301040082997400120010010000006051234567812.xml', NULL, '0907202301040082997400120010010000006051234567812', NULL, NULL, NULL, 'SEMBRADOR 153015', '306', 'MERA RIVADENEIRA MONICA ASUNCION', 'mona_mera1980@hotmail.com', '0919802835001', 'CARCHI  ESPEJO  SAN ISIDRO  EL CHARCO COLORADO SN Y CAMINO PALO BLANCO', '0997866652', '04', '494', '0', NULL, '494', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(557, '2023-07-11 00:48:28', '606', '29962716715b4423fb8473418e67a9aa82', NULL, '2', '', NULL, '1007202301040082997400120010010000006061234567810.xml', NULL, '1007202301040082997400120010010000006061234567810', NULL, NULL, NULL, 'CURAMAX M 8  500 Gr', '5.9', 'ORTEGA BENALCAZAR ANGEL EDISON', 'ortega.angeled@gmail.com', '0401148804001', 'CARCHI ESPEJO SAN ISIDRO CALLE 10 DE AGOSTO', '0985990052', '04', '47.65', '0', NULL, '47.65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(558, '2023-07-11 01:00:50', '607', '22d29ca7829654b979473f0803e8b6e9f2', NULL, '2', '', NULL, '1007202301040082997400120010010000006071234567816.xml', NULL, '1007202301040082997400120010010000006071234567816', NULL, NULL, NULL, 'ANTRACOL 400 Gr', '15.2', 'ORTEGA BENALCAZAR ANGEL EDISON', 'ortega.angeled@gmail.com', '0401148804001', 'CARCHI ESPEJO SAN ISIDRO CALLE 10 DE AGOSTO', '0985990052', '04', '80.4', '0', NULL, '80.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(559, '2023-07-17 13:48:27', '608', '23f4cdfc882bc8f558b57b611429b076f2', NULL, '2', '', NULL, '1707202301040082997400120010010000006081234567813.xml', NULL, '1707202301040082997400120010010000006081234567813', NULL, NULL, NULL, 'FIJAFIJ PLUS 500 cc', '5.5', 'CUPUERAN CARRERA BAYRON CRISTOBAL', 'bayroncupueran@gmail.com', '1719505560001', 'CARCHI ESPEJO SAN ISIDRO ELOY ALFARO Y PANAMERICANA NORTE', '0991333814', '04', '278.7', '0', NULL, '278.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(560, '2023-07-18 13:10:24', '609', '29a791276dab888f13195e4af7ac0521a2', NULL, '2', '', NULL, '1807202301040082997400120010010000006091234567813.xml', NULL, '1807202301040082997400120010010000006091234567813', NULL, NULL, NULL, 'HAMMER 500 gr', '31', 'CUPUERAN CARRERA BAYRON CRISTOBAL', 'bayroncupueran@gmail.com', '1719505560001', 'CARCHI ESPEJO SAN ISIDRO ELOY ALFARO Y PANAMERICANA NORTE', '0991333814', '04', '240.9', '0', NULL, '240.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(561, '2023-07-18 22:23:47', '610', '217215cbf523858d3cf86491a94a201d32', NULL, '2', '', NULL, '1807202301040082997400120010010000006101234567819.xml', NULL, '1807202301040082997400120010010000006101234567819', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '43.2', 'ARTURO ALFONSO GUAPAZ FLORES', 'guapazfloresa@gmail.com', '040074089001', 'CARCHI ESPEJO PARROQUIA EL ANGEL BARRIO LOS TAURAS', '0982916302', '06', '156.9', '0', NULL, '156.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(562, '2023-07-18 22:23:59', '611', '2c8f0505f90ca4654d676a23b850037692', NULL, '2', '', NULL, '1807202301040082997400120010010000006111234567814.xml', NULL, '1807202301040082997400120010010000006111234567814', NULL, NULL, NULL, 'NAKAR 250 cc', '36.4', 'ARTURO ALFONSO GUAPAZ FLORES', 'guapazfloresa@gmail.com', '040074089001', 'CARCHI ESPEJO PARROQUIA EL ANGEL BARRIO LOS TAURAS', '0982916302', '06', '148.9', '0', NULL, '148.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(563, '2023-07-19 13:18:50', '612', '2961b2ede2eef0d5805bcab7846657c8b2', NULL, '2', '', NULL, '1907202301040082997400120010010000006121234567814.xml', NULL, '1907202301040082997400120010010000006121234567814', NULL, NULL, NULL, 'NAKAR 250 cc', '36.4', 'ARTURO ALFONSO GUAPAZ FLORES', 'guapazfloresa@gmail.com', '040074089001', 'CARCHI ESPEJO PARROQUIA EL ANGEL BARRIO LOS TAURAS', '0982916302', '06', '247.9', '0', NULL, '247.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(564, '2023-07-19 13:28:37', '613', '22457cb552e7277b79d975bbfde4e3aa52', NULL, '2', '', NULL, '1907202301040082997400120010010000006131234567811.xml', NULL, '1907202301040082997400120010010000006131234567811', NULL, NULL, NULL, 'FULL COBRE Litro', '13.4', 'ESPAÃ‘A POZO SEGUNDO ISIDRO', 'isidroespana64@gmail.com', '0400446241001', 'CARCHI ESPEJO INGUEZA', '0994132689', '04', '289.4', '0', NULL, '289.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(565, '2023-07-19 13:33:31', '614', '2db856f46af317cd600636a4fe4d572062', NULL, '2', '', NULL, '1907202301040082997400120010010000006141234567815.xml', NULL, '1907202301040082997400120010010000006141234567815', NULL, NULL, NULL, 'FULL COBRE Litro', '13.4', 'ORTEGA BENALCAZAR ANGEL EDISON', 'ortega.angeled@gmail.com', '0401148804001', 'CARCHI ESPEJO SAN ISIDRO CALLE 10 DE AGOSTO', '0985990052', '04', '519.4', '0', NULL, '519.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(566, '2023-07-24 15:23:11', '615', '2bef2392f4efcdb93fe9d5954d95acfa12', NULL, '2', '', NULL, '2407202301040082997400120010010000006151234567811.xml', NULL, '2407202301040082997400120010010000006151234567811', NULL, NULL, NULL, 'NUNCHAKU LITRO', '117.8', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '230.9', '0', NULL, '230.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(567, '2023-07-24 15:24:38', '616', '25162f46693341fd037f5dc33b1caecb72', NULL, '2', '', NULL, '2407202301040082997400120010010000006161234567817.xml', NULL, '2407202301040082997400120010010000006161234567817', NULL, NULL, NULL, 'LI 700 100 cc', '4', 'TAIMAL ZAMBRANO WILSON RAMIRO', 'base4x4@hotmail.com', '1003267869001', 'CARCHI ESPEJO SAN ISIDRO PANAMERICANA SUR', '0980613463', '04', '77', '0', NULL, '77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(568, '2023-07-24 15:31:35', '617', '2babf9ebaa22184b666e49f59be97d3b62', NULL, '2', '', NULL, '2407202301040082997400120010010000006171234567812.xml', NULL, '2407202301040082997400120010010000006171234567812', NULL, NULL, NULL, 'ELTRA 250 cc', '15.2', 'ESPAÃ‘A POZO SEGUNDO ISIDRO', 'isidroespana64@gmail.com', '0400446241001', 'CARCHI ESPEJO INGUEZA', '0994132689', '04', '101.4', '0', NULL, '101.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(569, '2023-07-24 15:33:14', '618', '23c8475af6d36216d34fd74ded7ccf2d92', NULL, '2', '', NULL, '2407202301040082997400120010010000006181234567818.xml', NULL, '2407202301040082997400120010010000006181234567818', NULL, NULL, NULL, 'ELTRA LITRO', '56.6', 'ORTEGA BENALCAZAR ANGEL EDISON', 'ortega.angeled@gmail.com', '0401148804001', 'CARCHI ESPEJO SAN ISIDRO CALLE 10 DE AGOSTO', '0985990052', '04', '84.6', '0', NULL, '84.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(570, '2023-07-24 15:34:58', '619', '28c421be11737dcff650394d55734678e2', NULL, '2', '', NULL, '2407202301040082997400120010010000006191234567813.xml', NULL, '2407202301040082997400120010010000006191234567813', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '72', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA IBARRA SAGRARIO ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '128.6', '0', NULL, '128.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(571, '2023-07-24 20:09:04', '620', '2c2e7957901755b0711d947461926fca12', NULL, '2', '', NULL, '2407202301040082997400120010010000006201234567819.xml', NULL, '2407202301040082997400120010010000006201234567819', NULL, NULL, NULL, 'FIJAFIJ  PLUS LITRO', '9', 'REINA YAZAN MARILSA ENCARNACION', 'marilsareina@hotmail.com', '0401338181001', 'CARCHI MIRA MIRA PRINCIPAL', '0983611124', '04', '154.2', '0', NULL, '154.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(572, '2023-07-27 19:09:02', '621', '26a29565cb121da4211f7b258e4e01ca52', NULL, '2', '', NULL, '2707202301040082997400120010010000006211234567818.xml', NULL, '2707202301040082997400120010010000006211234567818', NULL, NULL, NULL, 'FITORAZ 500 gr', '8.8', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI ESPEJO SAN ISIDRO SUCRE Y COLON', '0981161128', '04', '76.25', '0', NULL, '76.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(573, '2023-07-27 19:12:19', '622', '2a1cb44399e5fa826bf3cca86664e03522', NULL, '2', '', NULL, '2707202301040082997400120010010000006221234567813.xml', NULL, '2707202301040082997400120010010000006221234567813', NULL, NULL, NULL, 'STIMULUS  30 20 LITRO', '47.6', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '369.2', '0', NULL, '369.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(574, '2023-07-27 19:29:20', '623', '2de9c0d831008b1af5cd69b0963f92bf82', NULL, '2', '', NULL, '2707202301040082997400120010010000006231234567819.xml', NULL, '2707202301040082997400120010010000006231234567819', NULL, NULL, NULL, 'BLOSSOM BLEND LITRO', '73.2', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA IBARRA SAGRARIO ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '384', '0', NULL, '384', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(575, '2023-07-27 19:32:22', '624', '248e402672bc51f262921a4d604c2a08b2', NULL, '2', '', NULL, '2707202301040082997400120010010000006241234567814.xml', NULL, '2707202301040082997400120010010000006241234567814', NULL, NULL, NULL, 'ENGEO 250 cc', '43.5', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '125.9', '0', NULL, '125.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(576, '2023-07-28 00:41:27', '625', '29cf434b1b6de3a9a3aeb525f39aeb77e2', NULL, '2', '', NULL, '2707202301040082997400120010010000006251234567811.xml', NULL, '2707202301040082997400120010010000006251234567811', NULL, NULL, NULL, 'FULL COBRE LITRO', '27.4', 'YARUSCUAN CUASTUMAL TATIANA GABRIELA', 'yaruscuannataly12@gmail.com', '0401970322', 'CARCHI ESPEJO PARROQUIA EL ANGEL BARRIO BELLAVISTA', '0995263981', '05', '248.8', '0', NULL, '248.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(577, '2023-07-28 16:03:10', '626', '2c5021b5c0fc1eac25f9796be25c4621b2', NULL, '2', '', NULL, '2807202301040082997400120010010000006261234567811.xml', NULL, '2807202301040082997400120010010000006261234567811', NULL, NULL, NULL, 'MOJAVE 250 cc', '8.1', 'YARUSCUAN CUASTUMAL TATIANA GABRIELA', 'yaruscuannataly12@gmail.com', '0401970322', 'CARCHI ESPEJO PARROQUIA EL ANGEL BARRIO BELLAVISTA', '0995263981', '05', '208.1', '0', NULL, '208.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(578, '2023-07-28 16:06:50', '627', '2492c9157adc3169ed56c1816b2b369342', NULL, '2', '', NULL, '2807202301040082997400120010010000006271234567815.xml', NULL, '2807202301040082997400120010010000006271234567815', NULL, NULL, NULL, 'GrafoleÃ³n NF de 20 ml', '7.7', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '197.4', '0', NULL, '197.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(579, '2023-07-28 16:20:15', '628', '21d31dc5cc9662e1fcd4abffbcfb08a072', NULL, '2', '', NULL, '2807202301040082997400120010010000006281234567810.xml', NULL, '2807202301040082997400120010010000006281234567810', NULL, NULL, NULL, 'Synedem de 25 cc', '6.7', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA IBARRA SAGRARIO ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '113', '0', NULL, '113', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(580, '2023-07-28 17:49:42', '629', '285d73f323b9e892fd46f4ac749c28b222', NULL, '2', '', NULL, '2807202301040082997400120010010000006291234567816.xml', NULL, '2807202301040082997400120010010000006291234567816', NULL, NULL, NULL, 'FULL COBRE LITRO', '13.4', 'ESPAÃ‘A POZO SEGUNDO ISIDRO', 'isidroespana64@gmail.com', '0400446241001', 'CARCHI ESPEJO INGUEZA', '0994132689', '04', '131.6', '0', NULL, '131.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(581, '2023-07-28 20:34:18', '630', '26232d899eef653f33d9e1c480d9949652', NULL, '2', '', NULL, '2807202301040082997400120010010000006301234567811.xml', NULL, '2807202301040082997400120010010000006301234567811', NULL, NULL, NULL, 'MOJAVE 250 cc', '16.2', 'CEVALLOS MENA INES ELENA', 'ineselena.cev72@gmail.com', '0401068291001', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITE Y CUATRO DE MAYO', '09801712', '04', '115.2', '0', NULL, '115.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(582, '2023-07-28 20:41:43', '631', '2cab1ca33b256649b8fa7cb724e0bd4a82', NULL, '2', '', NULL, '2807202301040082997400120010010000006311234567817.xml', NULL, '2807202301040082997400120010010000006311234567817', NULL, NULL, NULL, 'SPECIAL ENGROSE LITRO', '33.75', 'TAIMAL ZAMBRANO WILSON RAMIRO', 'base4x4@hotmail.com', '1003267869001', 'CARCHI ESPEJO SAN ISIDRO PANAMERICANA SUR', '0980613463', '04', '195.05', '0', NULL, '195.05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(583, '2023-07-28 20:48:41', '632', '28df04c22634d883d5ea233e5a20014ea2', NULL, '2', '', NULL, '2807202301040082997400120010010000006321234567812.xml', NULL, '2807202301040082997400120010010000006321234567812', NULL, NULL, NULL, 'PROFICURA 750 Gr', '26.25', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '258.55', '0', NULL, '258.55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(584, '2023-07-29 01:56:46', '633', '2fb68313442fe4678d259c7c94f4724082', NULL, '2', '', NULL, '2807202301040082997400120010010000006331234567818.xml', NULL, '2807202301040082997400120010010000006331234567818', NULL, NULL, NULL, 'DACONIL LITRO', '14.3', 'ORTEGA BENALCAZAR ANGEL EDISON', 'ortega.angeled@gmail.com', '0401148804001', 'CARCHI ESPEJO SAN ISIDRO CALLE 10 DE AGOSTO', '0985990052', '04', '114.8', '0', NULL, '114.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(585, '2023-07-31 00:44:22', '634', '28ee5cb00e4db765b7c97b79a8f98fbb92', NULL, '2', '', NULL, '3007202301040082997400120010010000006341234567810.xml', NULL, '3007202301040082997400120010010000006341234567810', NULL, NULL, NULL, 'NAKAR LITRO', '32', 'MARTINEZ QUIROZ ALEXANDER FERNANDO', 'feralex178@gmail.com', '0450098942', 'CARCHI ESPEJO SAN ISIDRO ', '0967225792', '05', '93.3', '0', NULL, '93.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(586, '2023-07-31 16:20:54', '635', '2b38e80a965394d529e48d406410a74172', NULL, '2', '', NULL, '3107202301040082997400120010010000006351234567810.xml', NULL, '3107202301040082997400120010010000006351234567810', NULL, NULL, NULL, 'CURAMAX M 8  500 Gr', '59', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '266', '0', NULL, '266', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(587, '2023-07-31 16:30:18', '636', '2ccc242a4f23d3e4bbe9dbb1ff02885852', NULL, '2', '', NULL, '3107202301040082997400120010010000006361234567816.xml', NULL, '3107202301040082997400120010010000006361234567816', NULL, NULL, NULL, 'TOPAS LITRO', '65.4', 'CEVALLOS MENA INES ELENA', 'ineselena.cev72@gmail.com', '0401068291001', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITE Y CUATRO DE MAYO', '09801712', '04', '175.5', '0', NULL, '175.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(588, '2023-07-31 16:45:45', '637', '2c18a4980d0d10ad12bd5c24ee07632ca2', NULL, '2', '', NULL, '3107202301040082997400120010010000006371234567811.xml', NULL, '3107202301040082997400120010010000006371234567811', NULL, NULL, NULL, 'FULL Ca. B.Esp. Litro', '39.9', 'MARTINEZ QUIROZ ALEXANDER FERNANDO', 'feralex178@gmail.com', '0450098942', 'CARCHI ESPEJO SAN ISIDRO ', '0967225792', '05', '146.8', '0', NULL, '146.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(589, '2023-08-02 15:11:28', '638', '21a427f38f33ef59dcfe3f288fd7bfb292', NULL, '2', '', NULL, '0208202301040082997400120010010000006381234567817.xml', NULL, '0208202301040082997400120010010000006381234567817', NULL, NULL, NULL, 'GLISOLAT  LITRO', '15.4', 'CHAMORRO VARGAS ANA LUCIA', 'anitachamorro485@gmail.com', '0402133045', 'CARCHI ESPEJO SAN ISIDRO VIA CHITACASPI', '095472372', '05', '15.4', '0', NULL, '15.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(590, '2023-08-02 17:05:35', '639', '28e46fe0acd3ebc790b2689b4e5c2a9722', NULL, '2', '', NULL, '0208202301040082997400120010010000006391234567812.xml', NULL, '0208202301040082997400120010010000006391234567812', NULL, NULL, NULL, 'FIJAFIJ PLUS 500 cc', '5.7', 'CUPUERAN CARRERA BAYRON CRISTOBAL', 'bayroncupueran@gmail.com', '1719505560001', 'CARCHI ESPEJO SAN ISIDRO ELOY ALFARO Y PANAMERICANA NORTE', '0991333814', '04', '307.6', '0', NULL, '307.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(591, '2023-08-02 18:02:48', '640', '2fe73d660ee640fb9400d3423b7d3592d2', NULL, '2', '', NULL, '0208202301040082997400120010010000006401234567818.xml', NULL, '0208202301040082997400120010010000006401234567818', NULL, NULL, NULL, 'FIJAFIJ PLUS 500 cc', '5.7', 'CEVALLOS MENA INES ELENA', 'ineselena.cev72@gmail.com', '0401068291001', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITE Y CUATRO DE MAYO', '09801712', '04', '329.4', '0', NULL, '329.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(592, '2023-08-02 18:43:44', '641', '24a437c5edd20bbe4989df3ff45b69ec22', NULL, '2', '', NULL, '0208202301040082997400120010010000006411234567813.xml', NULL, '0208202301040082997400120010010000006411234567813', NULL, NULL, NULL, 'SEAWEED FLUID LITRO', '21.8', 'CUPUERAN CARRERA BAYRON CRISTOBAL', 'bayroncupueran@gmail.com', '1719505560001', 'CARCHI ESPEJO SAN ISIDRO ELOY ALFARO Y PANAMERICANA NORTE', '0991333814', '04', '21.8', '0', NULL, '21.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(593, '2023-08-04 11:52:57', '642', '2dd9e8e138c5f03b6156d0ad4f6c97db92', NULL, '2', '', NULL, '0408202301040082997400120010010000006421234567818.xml', NULL, '0408202301040082997400120010010000006421234567818', NULL, NULL, NULL, 'SPECIAL ENGROSE LITRO', '65.4', 'TAIMAL ZAMBRANO WILSON RAMIRO', 'base4x4@hotmail.com', '1003267869001', 'CARCHI ESPEJO SAN ISIDRO PANAMERICANA SUR', '0980613463', '04', '104.4', '0', NULL, '104.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(594, '2023-08-04 11:55:17', '643', '2ec6813d355f46f96c3b91ff382f850c82', NULL, '2', '', NULL, '0408202301040082997400120010010000006431234567813.xml', NULL, '0408202301040082997400120010010000006431234567813', NULL, NULL, NULL, 'FULL POTASIO LITRO', '69.6', 'ESPAÃ‘A POZO SEGUNDO ISIDRO', 'isidroespana64@gmail.com', '0400446241001', 'CARCHI ESPEJO INGUEZA', '0994132689', '04', '111.6', '0', NULL, '111.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(595, '2023-08-04 11:58:35', '644', '25832011d9bb26de15aaf9445111c800b2', NULL, '2', '', NULL, '0408202301040082997400120010010000006441234567819.xml', NULL, '0408202301040082997400120010010000006441234567819', NULL, NULL, NULL, 'CURAMAX M 8  500 Gr', '33.6', 'CHAMORRO VARGAS ANA LUCIA', 'anitachamorro485@gmail.com', '0402133045', 'CARCHI ESPEJO SAN ISIDRO VIA CHITACASPI', '095472372', '05', '95.5', '0', NULL, '95.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(596, '2023-08-04 12:01:57', '645', '20e5beb98ebdc9bc0436bacec3c3394f32', NULL, '2', '', NULL, '0408202301040082997400120010010000006451234567814.xml', NULL, '0408202301040082997400120010010000006451234567814', NULL, NULL, NULL, 'THALA LITRO', '135.9', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '135.9', '0', NULL, '135.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(597, '2023-08-04 12:05:09', '646', '22cc6c156ec0307f507246d048cc0eeb72', NULL, '2', '', NULL, '0408202301040082997400120010010000006461234567811.xml', NULL, '0408202301040082997400120010010000006461234567811', NULL, NULL, NULL, 'TIESO 100 Gr Methomyl', '42', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA IBARRA SAGRARIO ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '133.2', '0', NULL, '133.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(598, '2023-08-04 12:09:26', '647', '261e818b6b8661e2c6a34d9c61835a09c2', NULL, '2', '', NULL, '0408202301040082997400120010010000006471234567815.xml', NULL, '0408202301040082997400120010010000006471234567815', NULL, NULL, NULL, 'NUNCHAKU LITRO', '117.8', 'QUIROZ BRAYAN', 'brayanquiroz33@gmail.com', '0401615174', 'CARCHI  ESPEJO  SAN ISIDRO  COOPERATIVA IGUAN', '0992327636', '05', '117.8', '0', NULL, '117.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO');
INSERT INTO `comprobante_factura_final` (`id`, `fecha`, `codigo_factura`, `codigo_interno_factura`, `secuencia`, `id_emisor`, `id_receptor`, `xml_no_firmado`, `xml_autorizado`, `factura_pdf`, `clave_acceso`, `id_producto`, `cantidad_producto`, `precio_producto`, `descripcion`, `precio_neto`, `nombres_receptor`, `email_receptor`, `cedula_receptor`, `direccion_receptor`, `celular_receptor`, `tipo_identificacion`, `subtotal`, `iva`, `descuento_general`, `total`, `codigo_factura_credito`, `nomnto_modificacion`, `razon_modficiacion`, `numDocModificado`, `identificacion_nc`, `clave_acceso_guia`, `clave_acceso_factura`, `direccion_partida`, `direccion_llegada`, `razon_social_transportista`, `tipoIdentificacionTransportista`, `fecha_inicio_transporte`, `fecha_final_transporte`, `placa_transportista`, `ruc_transportista`, `motivo_traslado`, `comprobante`, `estado`) VALUES
(599, '2023-08-04 12:11:35', '648', '255afb943c39cce313de8bb4c0f9ce56b2', NULL, '2', '', NULL, '0408202301040082997400120010010000006481234567810.xml', NULL, '0408202301040082997400120010010000006481234567810', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '57.6', 'MARTINEZ QUIROZ ALEXANDER FERNANDO', 'feralex178@gmail.com', '0450098942', 'CARCHI ESPEJO SAN ISIDRO ', '0967225792', '05', '141.4', '0', NULL, '141.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(600, '2023-08-04 12:22:58', '649', '2f67e5eb6ea99c35cdfa6c968554146472', NULL, '2', '', NULL, '0408202301040082997400120010010000006491234567816.xml', NULL, '0408202301040082997400120010010000006491234567816', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '57.6', 'GUAPAZ FLORES ARTURO ALFONSO', 'guapazfloresa@gmail.com', '040074089001', 'CARCHI ESPEJO PARROQUIA EL ANGEL BARRIO LOS TAURAS', '0982916302', '06', '444.8', '0', NULL, '444.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(601, '2023-08-04 22:37:57', '650', '2efe73e527d0bf22ba80599b27f6969022', NULL, '2', '', NULL, '0408202301040082997400120010010000006501234567811.xml', NULL, '0408202301040082997400120010010000006501234567811', NULL, NULL, NULL, 'FIJAFIJ  PLUS LITRO', '9', 'CUPUERAN CARRERA BAYRON CRISTOBAL', 'bayroncupueran@gmail.com', '1719505560001', 'CARCHI ESPEJO SAN ISIDRO ELOY ALFARO Y PANAMERICANA NORTE', '0991333814', '04', '533.4', '0', NULL, '533.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(602, '2023-08-05 22:42:13', '651', '26027a9bc0ddd3d4f75d5cb101d9322092', NULL, '2', '', NULL, '0508202301040082997400120010010000006511234567811.xml', NULL, '0508202301040082997400120010010000006511234567811', NULL, NULL, NULL, 'FITORAZ 500 gr', '35.2', 'CUPUERAN CARRERA BAYRON CRISTOBAL', 'bayroncupueran@gmail.com', '1719505560001', 'CARCHI ESPEJO SAN ISIDRO ELOY ALFARO Y PANAMERICANA NORTE', '0991333814', '04', '303.8', '0', NULL, '303.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(603, '2023-08-05 22:54:16', '652', '2f1c86dcad10316cdc48c9dbf7f0b6b0d2', NULL, '2', '', NULL, '0508202301040082997400120010010000006521234567817.xml', NULL, '0508202301040082997400120010010000006521234567817', NULL, NULL, NULL, 'THALA 250 cc', '31.4', 'YARUSCUAN CUASTUMAL TATIANA GABRIELA', 'yaruscuannataly12@gmail.com', '0401970322', 'CARCHI ESPEJO PARROQUIA EL ANGEL BARRIO BELLAVISTA', '0995263981', '05', '84.2', '0', NULL, '84.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(604, '2023-08-05 23:16:19', '653', '23cfe7015f28bfa33f4a31fc288573f1c2', NULL, '2', '', NULL, '0508202301040082997400120010010000006531234567812.xml', NULL, '0508202301040082997400120010010000006531234567812', NULL, NULL, NULL, 'FITORAZ 500 gr', '35.2', 'ESPAÃ‘A POZO SEGUNDO ISIDRO', 'isidroespana64@gmail.com', '0400446241001', 'CARCHI ESPEJO INGUEZA', '0994132689', '04', '183.4', '0', NULL, '183.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(605, '2023-08-05 23:21:33', '654', '2ddadf6c6336684b737f50382522d4fda2', NULL, '2', '', NULL, '0508202301040082997400120010010000006541234567818.xml', NULL, '0508202301040082997400120010010000006541234567818', NULL, NULL, NULL, 'FULL COBRE LITRO', '13.7', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI ESPEJO SAN ISIDRO SUCRE Y COLON', '0981161128', '04', '89.8', '0', NULL, '89.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(606, '2023-08-07 20:03:28', '655', '2bf156a80c302d06a3659355820caea422', NULL, '2', '', NULL, '0708202301040082997400120010010000006551234567812.xml', NULL, '0708202301040082997400120010010000006551234567812', NULL, NULL, NULL, 'Tyloconbisone de 20 ml.', '6.8', 'CALPA CALPA THALIA DAYANA', 'dayanacalpa51@gmail.com', '0402100143', 'CARCHI ESPEJO SAN ISIDRO CHITACASPI', '0993796174', '05', '95.02', '0', NULL, '95.02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(607, '2023-08-09 16:21:26', '656', '2af873be084400bfdf000d7cea71fe2002', NULL, '2', '', NULL, '0908202301040082997400120010010000006561234567817.xml', NULL, '0908202301040082997400120010010000006561234567817', NULL, NULL, NULL, 'SHIELDS UP 250 cc', '21.2', 'JIMENEZ POZO VICTOR HUGO', 'jimenez4312@gmail.com', '0401704135001', 'CARCHI ESPEJO BARRIO LA ESPERANZA', '0983707923', '04', '21.2', '0', NULL, '21.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(608, '2023-08-10 23:42:38', '657', '2529977a77b068dc7f736ac36c36467ce2', NULL, '2', '', NULL, '1008202301040082997400120010010000006571234567815.xml', NULL, '1008202301040082997400120010010000006571234567815', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'CEVALLOS MENA INES ELENA', 'ineselena.cev72@gmail.com', '0401068291001', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITE Y CUATRO DE MAYO', '09801712', '04', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(609, '2023-08-10 23:48:54', '658', '28cb58366873d862b5cb10b2d067b5e7a2', NULL, '2', '', NULL, '1008202301040082997400120010010000006581234567810.xml', NULL, '1008202301040082997400120010010000006581234567810', NULL, NULL, NULL, 'LI 700 100 cc', '2', 'VALENCIA HERRERIA YADIRA ELISABETH', 'yadyvalencia@live.com', '0401582994', 'CARCHI ESPEJO EL ANGEL SALINAS Y JOSE BENIGNO', '0961323165', '05', '2', '0', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(610, '2023-08-10 23:53:25', '659', '27ff77f03228693b687dad154bf7fe5df2', NULL, '2', '', NULL, '1008202301040082997400120010010000006591234567816.xml', NULL, '1008202301040082997400120010010000006591234567816', NULL, NULL, NULL, 'SOLL 500 gr', '12', 'VALENCIA HERRERIA YADIRA ELISABETH', 'yadyvalencia@live.com', '0401582994', 'CARCHI ESPEJO EL ANGEL SALINAS Y JOSE BENIGNO', '0961323165', '05', '117.2', '0', NULL, '117.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(611, '2023-08-11 00:04:08', '660', '205cedd75200a213c5b14345363a4eba82', NULL, '2', '', NULL, '1008202301040082997400120010010000006601234567811.xml', NULL, '1008202301040082997400120010010000006601234567811', NULL, NULL, NULL, 'ONLY Ca  10 Kg', '46', 'BORJA LOPEZ  LEONARDO ALVARO', 'alvarin78jd@hotmail.com', '1715997548001', 'PICHINCHA QUITO EL CONDADO ', '0989212838', '04', '46', '0', NULL, '46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(612, '2023-08-11 00:04:21', '661', '243ad98d9f7e387059b562b694605f67b2', NULL, '2', '', NULL, '1008202301040082997400120010010000006611234567817.xml', NULL, '1008202301040082997400120010010000006611234567817', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.8', 'JIMENEZ POZO VICTOR HUGO', 'jimenez4312@gmail.com', '0401704135001', 'CARCHI ESPEJO BARRIO LA ESPERANZA', '0983707923', '04', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(613, '2023-08-11 00:04:35', '662', '26de0e885bb6f3d4a8359a0d41764af142', NULL, '2', '', NULL, '1008202301040082997400120010010000006621234567812.xml', NULL, '1008202301040082997400120010010000006621234567812', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.8', 'CHAMORRO VARGAS ANA LUCIA', 'anitachamorro485@gmail.com', '0402133045', 'CARCHI ESPEJO SAN ISIDRO VIA CHITACASPI', '095472372', '05', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(614, '2023-08-11 00:04:47', '663', '25a2d57aecf904f385dbb03a4430a02d32', NULL, '2', '', NULL, '1008202301040082997400120010010000006631234567818.xml', NULL, '1008202301040082997400120010010000006631234567818', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.8', 'MENDEZ POZO NANCY CECILIA', 'mendezpozonancy09@gmail.con', '0401243472001', 'CARCHI ESPEJO SAN ISIDRO  ESMERALDAS', '0985691646', '04', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(615, '2023-08-11 00:16:42', '664', '2cdba5a55f35b0b6a0e09ba6557b1e54e2', NULL, '2', '', NULL, '1008202301040082997400120010010000006641234567813.xml', NULL, '1008202301040082997400120010010000006641234567813', NULL, NULL, NULL, 'LI 700 LITRO', '11.5', 'MENDEZ POZO NANCY CECILIA', 'mendezpozonancy09@gmail.con', '0401243472001', 'CARCHI ESPEJO SAN ISIDRO  ESMERALDAS', '0985691646', '04', '96.5', '0', NULL, '96.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(616, '2023-08-11 00:21:23', '665', '2b00ae13bd9fcecbb25c54cd15a6f01312', NULL, '2', '', NULL, '1008202301040082997400120010010000006651234567819.xml', NULL, '1008202301040082997400120010010000006651234567819', NULL, NULL, NULL, 'SUPER PRO. FLOR.  12 40 3', '6.4', 'VALENCIA HERRERIA YADIRA ELISABETH', 'yadyvalencia@live.com', '0401582994', 'CARCHI ESPEJO EL ANGEL SALINAS Y JOSE BENIGNO', '0961323165', '05', '85.2', '0', NULL, '85.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(617, '2023-08-11 20:37:12', '666', '228b44ff5d30b11d1e2584f936239d7302', NULL, '2', '', NULL, '1108202301040082997400120010010000006661234567819.xml', NULL, '1108202301040082997400120010010000006661234567819', NULL, NULL, NULL, 'ELTRA LITRO', '56.6', 'POZO ENRIQUEZ NELLY ISAURA', 'nellypozo140@gmail.com', '0401700430', 'CARCHI ESPEJO MORTIÃ‘AL', '0983605538', '05', '366.1', '0', NULL, '366.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(618, '2023-08-11 21:50:29', '667', '2f8c9fbf54b06c9267958f3bf38cc39a52', NULL, '2', '', NULL, '1108202301040082997400120010010000006671234567814.xml', NULL, '1108202301040082997400120010010000006671234567814', NULL, NULL, NULL, 'ONLY Ca  10 Kg', '460', 'YANEZ IMBAQUINGO JOSE GONZALO', 'gonzaloyanez148@hotmail.com', '1002331682001', 'CARCHI ESPEJO SAN ISIDRO CALLE 24 DE MAYO', '0989423713', '04', '460', '0', NULL, '460', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(619, '2023-08-14 11:03:49', '668', '262585ec9d092fca2ca475ef17201b1402', NULL, '2', '', NULL, '1408202301040082997400120010010000006681234567813.xml', NULL, '1408202301040082997400120010010000006681234567813', NULL, NULL, NULL, 'SOLL 500 gr', '12', 'POZO ENRIQUEZ NELLY ISAURA', 'nellypozo140@gmail.com', '0401700430', 'CARCHI ESPEJO MORTIÃ‘AL', '0983605538', '05', '114', '0', NULL, '114', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(620, '2023-08-14 11:16:42', '669', '245523ad6f79321962fd294a717e9f8272', NULL, '2', '', NULL, '1408202301040082997400120010010000006691234567819.xml', NULL, '1408202301040082997400120010010000006691234567819', NULL, NULL, NULL, 'MIROS LITRO', '20.6', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '249.95', '0', NULL, '249.95', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(621, '2023-08-14 13:32:24', '670', '20e7234394b8d023df5f71c790dafb2282', NULL, '2', '', NULL, '1408202301040082997400120010010000006701234567814.xml', NULL, '1408202301040082997400120010010000006701234567814', NULL, NULL, NULL, 'CURAMAX M 8  500 Gr', '53.1', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '321.3', '0', NULL, '321.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(622, '2023-08-14 13:37:40', '671', '296c7233a055810250d986f3a2b1322e52', NULL, '2', '', NULL, '1408202301040082997400120010010000006711234567811.xml', NULL, '1408202301040082997400120010010000006711234567811', NULL, NULL, NULL, 'TOPAS LITRO', '65', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '317.5', '0', NULL, '317.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(623, '2023-08-14 13:44:11', '672', '2728df6aa39e6f218beded4cd0bf742302', NULL, '2', '', NULL, '1408202301040082997400120010010000006721234567815.xml', NULL, '1408202301040082997400120010010000006721234567815', NULL, NULL, NULL, 'BLOSSOM BLEND 500 cc', '12.6', 'CEVALLOS MENA INES ELENA', 'ineselena.cev72@gmail.com', '0401068291001', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITE Y CUATRO DE MAYO', '09801712', '04', '197', '0', NULL, '197', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(624, '2023-08-14 14:01:19', '673', '22348cfe169369d9c17523dd471208d362', NULL, '2', '', NULL, '1408202301040082997400120010010000006731234567810.xml', NULL, '1408202301040082997400120010010000006731234567810', NULL, NULL, NULL, 'COSAGRIN 80 Kg', '24.5', 'ESPAÃ‘A POZO SEGUNDO ISIDRO', 'isidroespana64@gmail.com', '0400446241001', 'CARCHI ESPEJO INGUEZA', '0994132689', '04', '566.3', '0', NULL, '566.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(625, '2023-08-15 16:34:39', '674', '260d2e1f5a371eea06317de6283b2cbf22', NULL, '2', '', NULL, '1508202301040082997400120010010000006741234567810.xml', NULL, '1508202301040082997400120010010000006741234567810', NULL, NULL, NULL, 'ENGEO LITRO', '73.5', 'POZO GUAMIALAMA JOSE MIGUEL', 'jmiguelpozog@gmail.com', '0401152947001', 'CARCHI ESPEJO SAN ISIDRO PRINCIPAL', '0979441835', '04', '121', '0', NULL, '121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(626, '2023-08-19 15:25:29', '675', '2f72ecc1b3b6c5316716cdbfe3173b10d2', NULL, '2', '', NULL, '1908202301040082997400120010010000006751234567814.xml', NULL, '1908202301040082997400120010010000006751234567814', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.9', 'CALPA CALPA THALIA DAYANA', 'dayanacalpa51@gmail.com', '0402100143', 'CARCHI ESPEJO SAN ISIDRO CHITACASPI', '0993796174', '05', '53', '0', NULL, '53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(627, '2023-08-19 15:26:36', '676', '2f24412356c4dc1aeb634e052fe5fc1b92', NULL, '2', '', NULL, '1908202301040082997400120010010000006761234567811.xml', NULL, '1908202301040082997400120010010000006761234567811', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.9', 'MENDEZ POZO NANCY CECILIA', 'mendezpozonancy09@gmail.con', '0401243472001', 'CARCHI ESPEJO SAN ISIDRO  ESMERALDAS', '0985691646', '04', '53', '0', NULL, '53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(628, '2023-08-19 15:29:44', '677', '253f2f9b8fca611e68bce9af87c4b4fa82', NULL, '2', '', NULL, '1908202301040082997400120010010000006771234567815.xml', NULL, '1908202301040082997400120010010000006771234567815', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.9', 'CALPA CALPA THALIA DAYANA', 'dayanacalpa51@gmail.com', '0402100143', 'CARCHI ESPEJO SAN ISIDRO CHITACASPI', '0993796174', '05', '53', '0', NULL, '53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(629, '2023-08-19 15:30:00', '678', '2aa8e76c3ffedfbb10d3a54ac987453552', NULL, '2', '', NULL, '1908202301040082997400120010010000006781234567810.xml', NULL, '1908202301040082997400120010010000006781234567810', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.9', 'CALPA CALPA THALIA DAYANA', 'dayanacalpa51@gmail.com', '0402100143', 'CARCHI ESPEJO SAN ISIDRO CHITACASPI', '0993796174', '05', '53', '0', NULL, '53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(630, '2023-08-19 15:44:48', '679', '2c040894f5b830e1382b171813f044fe42', NULL, '2', '', NULL, '1908202301040082997400120010010000006791234567816.xml', NULL, '1908202301040082997400120010010000006791234567816', NULL, NULL, NULL, 'SEMBRADOR 153015', '423', 'POZO GUAMIALAMA JOSE MIGUEL', 'jmiguelpozog@gmail.com', '0401152947001', 'CARCHI ESPEJO SAN ISIDRO PRINCIPAL', '0979441835', '04', '423', '0', NULL, '423', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(631, '2023-08-20 00:42:35', '680', '2a050a0af4c56d3a0cb5ad723b075c29c2', NULL, '2', '', NULL, '1908202301040082997400120010010000006801234567811.xml', NULL, '1908202301040082997400120010010000006801234567811', NULL, NULL, NULL, 'DIFECOR 100 cc', '4.3', 'JIMENEZ POZO VICTOR HUGO', 'jimenez4312@gmail.com', '0401704135001', 'CARCHI ESPEJO BARRIO LA ESPERANZA', '0983707923', '04', '26.2', '0', NULL, '26.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(632, '2023-08-20 00:42:52', '681', '24cc7b8637dead5b47bc2617945cfe7162', NULL, '2', '', NULL, '1908202301040082997400120010010000006811234567817.xml', NULL, '1908202301040082997400120010010000006811234567817', NULL, NULL, NULL, 'DIFECOR 100 cc', '4.3', 'JIMENEZ POZO VICTOR HUGO', 'jimenez4312@gmail.com', '0401704135001', 'CARCHI ESPEJO BARRIO LA ESPERANZA', '0983707923', '04', '26.2', '0', NULL, '26.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(633, '2023-08-20 14:46:24', '682', '28394ef65e084bd835b2b957a7bc23dde2', NULL, '2', '', NULL, '2008202301040082997400120010010000006821234567815.xml', NULL, '2008202301040082997400120010010000006821234567815', NULL, NULL, NULL, 'ANTRACOL 400 Gr', '7.8', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '208.45', '0', NULL, '208.45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(634, '2023-08-21 12:21:58', '683', '244d3338bf2430106eeb4c226222337442', NULL, '2', '', NULL, '2108202301040082997400120010010000006831234567815.xml', NULL, '2108202301040082997400120010010000006831234567815', NULL, NULL, NULL, 'THALA LITRO', '91.2', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA IBARRA SAGRARIO ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '263.4', '0', NULL, '263.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(635, '2023-08-21 12:30:40', '684', '2b97e18f7cc096a2eebaf20f6b4afd5fa2', NULL, '2', '', NULL, '2108202301040082997400120010010000006841234567810.xml', NULL, '2108202301040082997400120010010000006841234567810', NULL, NULL, NULL, 'PROFIMETH 500 Gr Met Prop', '26.1', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '137.15', '0', NULL, '137.15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(636, '2023-08-21 12:46:20', '685', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(637, '2023-08-21 13:32:50', '686', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(638, '2023-08-22 02:13:50', '687', '218f8c0d523c5e8d42fa2682a7e4136952', NULL, '2', '', NULL, '2108202301040082997400120010010000006871234567817.xml', NULL, '2108202301040082997400120010010000006871234567817', NULL, NULL, NULL, 'FULL CALCIO  500 cc.', '6.3', 'POZO ENRIQUEZ NELLY ISAURA', 'nellypozo140@gmail.com', '0401700430', 'CARCHI ESPEJO MORTIÃ‘AL', '0983605538', '05', '29.8', '0', NULL, '29.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(639, '2023-08-22 02:14:52', '686', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(640, '2023-08-22 02:16:14', '687', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(641, '2023-08-22 12:02:56', '787', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(642, '2023-08-22 18:18:11', '687', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(643, '2023-08-22 18:18:19', '787', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(644, '2023-08-22 20:03:52', '687', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(645, '2023-08-22 20:04:05', '787', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(646, '2023-08-22 20:24:13', '788', '2d53b704b8db15cc55bfcc4ea2387313a2', NULL, '2', '', NULL, '2208202301040082997400120010010000007881234567810.xml', NULL, '2208202301040082997400120010010000007881234567810', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.9', 'JIMENEZ POZO VICTOR HUGO', 'jimenez4312@gmail.com', '0401704135001', 'CARCHI ESPEJO BARRIO LA ESPERANZA', '0983707923', '04', '1.9', '0', NULL, '1.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(647, '2023-08-22 20:28:24', '687', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(648, '2023-08-23 13:25:49', '787', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(649, '2023-08-23 13:27:01', '688', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(650, '2023-08-23 13:27:36', '689', '267c6f7cbe73345abeb8f296c925b43d32', NULL, '2', '', NULL, '2308202301040082997400120010010000006891234567817.xml', NULL, '2308202301040082997400120010010000006891234567817', NULL, NULL, NULL, 'ELTRA LITRO', '28.3', 'CEVALLOS MENA INES ELENA', 'ineselena.cev72@gmail.com', '0401068291001', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITE Y CUATRO DE MAYO', '09801712', '04', '223.7', '0', NULL, '223.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(651, '2023-08-23 18:48:51', '690', '25473915c9fb5cd2e72b929eb74efbb412', NULL, '2', '', NULL, '2308202301040082997400120010010000006901234567812.xml', NULL, '2308202301040082997400120010010000006901234567812', NULL, NULL, NULL, 'FITORAZ 500 gr', '43.5', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '223.1', '0', NULL, '223.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(652, '2023-08-23 18:52:19', '691', '2659c9ac54633e6fd6c2f388fee9b5a922', NULL, '2', '', NULL, '2308202301040082997400120010010000006911234567818.xml', NULL, '2308202301040082997400120010010000006911234567818', NULL, NULL, NULL, 'FULL POTASIO 500 cc', '6', 'ORTEGA BENALCAZAR ANGEL EDISON', 'ortega.angeled@gmail.com', '0401148804001', 'CARCHI ESPEJO SAN ISIDRO CALLE 10 DE AGOSTO', '0985990052', '04', '131.2', '0', NULL, '131.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(653, '2023-08-24 20:25:56', '692', '2ebdafab4984686f4b1311aacac94d4372', NULL, '2', '', NULL, '2408202301040082997400120010010000006921234567818.xml', NULL, '2408202301040082997400120010010000006921234567818', NULL, NULL, NULL, 'ESFIRE 200 cc', '15', 'ORTEGA BENALCAZAR ANGEL EDISON', 'ortega.angeled@gmail.com', '0401148804001', 'CARCHI ESPEJO SAN ISIDRO CALLE 10 DE AGOSTO', '0985990052', '04', '130.5', '0', NULL, '130.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(654, '2023-08-24 21:16:00', '693', '27959d17a21ccb6f9b5207b2b6acff6b72', NULL, '2', '', NULL, '2408202301040082997400120010010000006931234567813.xml', NULL, '2408202301040082997400120010010000006931234567813', NULL, NULL, NULL, 'ONLY Ca  10 Kg', '282', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '282', '0', NULL, '282', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(655, '2023-08-24 21:21:53', '694', '25cb76003b464c6a81ecf3dbafcb3ebf22', NULL, '2', '', NULL, '2408202301040082997400120010010000006941234567819.xml', NULL, '2408202301040082997400120010010000006941234567819', NULL, NULL, NULL, 'ENGEO LITRO', '147', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA IBARRA SAGRARIO ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '411.5', '0', NULL, '411.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(656, '2023-08-24 21:29:21', '695', '2e16e96292751bbd59b71474c3b6b1a6d2', NULL, '2', '', NULL, '2408202301040082997400120010010000006951234567814.xml', NULL, '2408202301040082997400120010010000006951234567814', NULL, NULL, NULL, 'ELTRA LITRO', '28.3', 'TAIMAL ZAMBRANO WILSON RAMIRO', 'base4x4@hotmail.com', '1003267869001', 'CARCHI ESPEJO SAN ISIDRO PANAMERICANA SUR', '0980613463', '04', '203.35', '0', NULL, '203.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(657, '2023-08-25 15:05:27', '696', '22ea05384071037fe271fca6e1ea64dc22', NULL, '2', '', NULL, '2508202301040082997400120010010000006961234567814.xml', NULL, '2508202301040082997400120010010000006961234567814', NULL, NULL, NULL, 'DACONIL LITRO', '14.3', 'ORTEGA BENALCAZAR ANGEL EDISON', 'ortega.angeled@gmail.com', '0401148804001', 'CARCHI ESPEJO SAN ISIDRO CALLE 10 DE AGOSTO', '0985990052', '04', '50.7', '0', NULL, '50.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(658, '2023-08-26 18:18:06', '697', '29dd311849928a5e35da2cad1e9af89732', NULL, '2', '', NULL, '2608202301040082997400120010010000006971234567814.xml', NULL, '2608202301040082997400120010010000006971234567814', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '64.8', 'ESPAÃ‘A POZO SEGUNDO ISIDRO', 'isidroespana64@gmail.com', '0400446241001', 'CARCHI ESPEJO INGUEZA', '0994132689', '04', '149.7', '0', NULL, '149.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(659, '2023-08-26 18:29:20', '698', '2392c6af27292812a5915220dbc85c5812', NULL, '2', '', NULL, '2608202301040082997400120010010000006981234567811.xml', NULL, '2608202301040082997400120010010000006981234567811', NULL, NULL, NULL, 'LI 700 LITRO', '11.5', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '264.5', '0', NULL, '264.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(660, '2023-08-26 18:40:15', '699', '2df2dcb85c6d9af619db839b5c011ec0c2', NULL, '2', '', NULL, '2608202301040082997400120010010000006991234567815.xml', NULL, '2608202301040082997400120010010000006991234567815', NULL, NULL, NULL, 'HAMMER 500 gr', '6.2', 'MENDEZ POZO NANCY CECILIA', 'mendezpozonancy09@gmail.con', '0401243472001', 'CARCHI ESPEJO SAN ISIDRO  ESMERALDAS', '0985691646', '04', '134.7', '0', NULL, '134.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(661, '2023-08-26 18:46:56', '700', '24b54230c407063842c8bd535dc0ecbcf2', NULL, '2', '', NULL, '2608202301040082997400120010010000007001234567819.xml', NULL, '2608202301040082997400120010010000007001234567819', NULL, NULL, NULL, 'HAMMER 500 gr', '31', 'REINA YAZAN MARILSA ENCARNACION', 'marilsareina@hotmail.com', '0401338181001', 'CARCHI MIRA MIRA PRINCIPAL', '0983611124', '04', '230.2', '0', NULL, '230.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(662, '2023-08-29 00:03:33', '670', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(663, '2023-08-29 00:04:17', '770', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(664, '2023-08-30 20:21:30', '771', '256cc443fdac3e8b4756013a7058b49ae2', NULL, '2', '', NULL, '3008202301040082997400120010010000007711234567812.xml', NULL, '3008202301040082997400120010010000007711234567812', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.8', 'UGSHA MARCO', 'marco01futbol@outlook.es', '0401751326', 'CARCHI ESPEJO SAN VICENTE CALLE ESMERALDAS', '0993567994', '05', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(665, '2023-08-30 20:27:09', '772', '29bd25ca3c66ae7a6bc2dac10a36838fd2', NULL, '2', '', NULL, '3008202301040082997400120010010000007721234567818.xml', NULL, '3008202301040082997400120010010000007721234567818', NULL, NULL, NULL, 'INDICATE LITRO', '12.45', 'UGSHA MARCO', 'marco01futbol@outlook.es', '0401751326', 'CARCHI ESPEJO SAN VICENTE CALLE ESMERALDAS', '0993567994', '05', '184.45', '0', NULL, '184.45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(666, '2023-08-30 20:40:54', '773', '24a354f301952d90aa056b88362075dd92', NULL, '2', '', NULL, '3008202301040082997400120010010000007731234567813.xml', NULL, '3008202301040082997400120010010000007731234567813', NULL, NULL, NULL, 'THALA 250 cc', '30.8', 'UGSHA MARCO', 'marco01futbol@outlook.es', '0401751326', 'CARCHI ESPEJO SAN VICENTE CALLE ESMERALDAS', '0993567994', '05', '30.8', '0', NULL, '30.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(667, '2023-08-30 21:03:05', '774', '22e9cabf8da406dce24a28857936ae83a2', NULL, '2', '', NULL, '3008202301040082997400120010010000007741234567819.xml', NULL, '3008202301040082997400120010010000007741234567819', NULL, NULL, NULL, 'COURAGE LITRO', '46.8', 'UGSHA MARCO', 'marco01futbol@outlook.es', '0401751326', 'CARCHI ESPEJO SAN VICENTE CALLE ESMERALDAS', '0993567994', '05', '381', '0', NULL, '381', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(668, '2023-08-30 21:59:19', '775', '2be2306dec2fb65c3da0bb97c4dda907d2', NULL, '2', '', NULL, '3008202301040082997400120010010000007751234567814.xml', NULL, '3008202301040082997400120010010000007751234567814', NULL, NULL, NULL, 'FIJAFIJ PLUS 500 cc', '5.7', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '254.35', '0', NULL, '254.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(669, '2023-08-30 22:05:45', '776', '27820ac705bcb1f9e23a2b94bb247749c2', NULL, '2', '', NULL, '3008202301040082997400120010010000007761234567811.xml', NULL, '3008202301040082997400120010010000007761234567811', NULL, NULL, NULL, 'PROFICURA 750 Gr', '17.5', 'ORTEGA BENALCAZAR ANGEL EDISON', 'ortega.angeled@gmail.com', '0401148804001', 'CARCHI ESPEJO SAN ISIDRO CALLE 10 DE AGOSTO', '0985990052', '04', '130.5', '0', NULL, '130.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(670, '2023-09-03 17:14:01', '876', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(671, '2023-09-03 17:19:21', '678', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(672, '2023-09-03 17:19:48', '778', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(673, '2023-09-03 19:01:19', '779', '2436090874c80f197901fafb606c365ce2', NULL, '2', '', NULL, '0309202301040082997400120010010000007791234567815.xml', NULL, '0309202301040082997400120010010000007791234567815', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.8', 'CEVALLOS MENA INES ELENA', 'ineselena.cev72@gmail.com', '0401068291001', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITE Y CUATRO DE MAYO', '09801712', '04', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(674, '2023-09-04 19:58:49', '780', '2404437cc958325ee19862f5ddee9de562', NULL, '2', '', NULL, '0409202301040082997400120010010000007801234567815.xml', NULL, '0409202301040082997400120010010000007801234567815', NULL, NULL, NULL, 'Vetalgina de 100 ml', '16.35', 'ESPAÃ‘A ENRIQUEZ KEVIN ESTEBAN', 'kevinespaa744@hotmail.es', '0401878665', 'CARCHI ESPEJO INGUEZA', '0999112849', '05', '80.2', '0', NULL, '80.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(675, '2023-09-04 22:04:24', '781', '229a171cdc677fa83e3ee6d382d981ab62', NULL, '2', '', NULL, '0409202301040082997400120010010000007811234567810.xml', NULL, '0409202301040082997400120010010000007811234567810', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.8', 'TARAPUES VALENZUELA VICENTE PABLO', 'pablotarapues73@gmail.com', '0401024815001', 'CARCHI ESPEJO SAN ISIDRO CALLE DIEZ DE AGOSTO', '0981098595', '04', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(676, '2023-09-04 22:17:31', '679', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(677, '2023-09-04 22:21:43', '779', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(678, '2023-09-04 22:22:32', '680', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(679, '2023-09-04 22:22:42', '780', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(680, '2023-09-04 22:23:43', '684', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(681, '2023-09-04 22:24:09', '784', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(682, '2023-09-04 22:29:01', '678', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(683, '2023-09-04 22:29:27', '679', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(684, '2023-09-04 22:32:26', '779', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(685, '2023-09-04 22:32:49', '680', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(686, '2023-09-04 22:33:21', '780', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(687, '2023-09-04 22:36:19', '681', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(688, '2023-09-04 22:36:28', '781', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(689, '2023-09-04 22:37:18', '684', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(690, '2023-09-04 22:37:39', '685', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(691, '2023-09-04 22:37:47', '785', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(692, '2023-09-04 22:38:44', '689', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(693, '2023-09-04 22:38:54', '789', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(694, '2023-09-04 22:47:59', '700', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(695, '2023-09-04 22:48:07', '800', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(696, '2023-09-04 22:48:20', '701', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(697, '2023-09-04 22:48:44', '702', '2cf57bdcc6b08548817803a3a52acfbf62', NULL, '2', '', NULL, '0409202301040082997400120010010000007021234567811.xml', NULL, '0409202301040082997400120010010000007021234567811', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.8', 'ESPAÃ‘A ENRIQUEZ KEVIN ESTEBAN', 'kevinespaa744@hotmail.es', '0401878665', 'CARCHI ESPEJO INGUEZA', '0999112849', '05', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(698, '2023-09-04 23:35:14', '703', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(699, '2023-09-04 23:35:51', '704', '279ca4822d60e17f87492718dcf1361322', NULL, '2', '', NULL, '0409202301040082997400120010010000007041234567810.xml', NULL, '0409202301040082997400120010010000007041234567810', NULL, NULL, NULL, 'FITORAZ 500 gr', '17.6', 'TARAPUES VALENZUELA VICENTE PABLO', 'pablotarapues73@gmail.com', '0401024815001', 'CARCHI ESPEJO SAN ISIDRO CALLE DIEZ DE AGOSTO', '0981098595', '04', '42', '0', NULL, '42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(700, '2023-09-04 23:37:01', '705', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(701, '2023-09-04 23:50:16', '704', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(702, '2023-09-04 23:54:21', '705', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(703, '2023-09-04 23:54:44', '706', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(704, '2023-09-04 23:55:22', '704', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(705, '2023-09-04 23:55:33', '705', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(706, '2023-09-04 23:55:40', '706', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(707, '2023-09-04 23:58:51', '707', '279ca4822d60e17f87492718dcf1361322', NULL, '2', '', NULL, '0409202301040082997400120010010000007071234567817.xml', NULL, '0409202301040082997400120010010000007071234567817', NULL, NULL, NULL, 'FITORAZ 500 gr', '17.6', 'UGSHA MARCO', 'marco01futbol@outlook.es', '0401751326', 'CARCHI ESPEJO SAN VICENTE CALLE ESMERALDAS', '0993567994', '05', '42', '0', NULL, '42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(708, '2023-09-04 23:59:57', '708', '2f4004a554651d3ff1a471271b50512c52', NULL, '2', '', NULL, '0409202301040082997400120010010000007081234567812.xml', NULL, '0409202301040082997400120010010000007081234567812', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.8', 'CALPA CALPA THALIA DAYANA', 'dayanacalpa51@gmail.com', '0402100143', 'CARCHI ESPEJO SAN ISIDRO CHITACASPI', '0993796174', '05', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(709, '2023-09-05 14:50:48', '709', '26642d0514aa230cf8f58c98c788105d22', NULL, '2', '', NULL, '0509202301040082997400120010010000007091234567812.xml', NULL, '0509202301040082997400120010010000007091234567812', NULL, NULL, NULL, 'FITORAZ 500 gr', '17.6', 'CEVALLOS MENA INES ELENA', 'ineselena.cev72@gmail.com', '0401068291001', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITE Y CUATRO DE MAYO', '09801712', '04', '42', '0', NULL, '42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO');
INSERT INTO `comprobante_factura_final` (`id`, `fecha`, `codigo_factura`, `codigo_interno_factura`, `secuencia`, `id_emisor`, `id_receptor`, `xml_no_firmado`, `xml_autorizado`, `factura_pdf`, `clave_acceso`, `id_producto`, `cantidad_producto`, `precio_producto`, `descripcion`, `precio_neto`, `nombres_receptor`, `email_receptor`, `cedula_receptor`, `direccion_receptor`, `celular_receptor`, `tipo_identificacion`, `subtotal`, `iva`, `descuento_general`, `total`, `codigo_factura_credito`, `nomnto_modificacion`, `razon_modficiacion`, `numDocModificado`, `identificacion_nc`, `clave_acceso_guia`, `clave_acceso_factura`, `direccion_partida`, `direccion_llegada`, `razon_social_transportista`, `tipoIdentificacionTransportista`, `fecha_inicio_transporte`, `fecha_final_transporte`, `placa_transportista`, `ruc_transportista`, `motivo_traslado`, `comprobante`, `estado`) VALUES
(710, '2023-09-05 14:53:42', '710', '2df220acc98ff2517068581fadd26224e2', NULL, '2', '', NULL, '0509202301040082997400120010010000007101234567818.xml', NULL, '0509202301040082997400120010010000007101234567818', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.8', 'TARAPUES VALENZUELA VICENTE PABLO', 'pablotarapues73@gmail.com', '0401024815001', 'CARCHI ESPEJO SAN ISIDRO CALLE DIEZ DE AGOSTO', '0981098595', '04', '33.3', '0', NULL, '33.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(711, '2023-09-05 14:57:44', '711', '2a943d9e7316c0c068a92cc31579ddb2d2', NULL, '2', '', NULL, '0509202301040082997400120010010000007111234567813.xml', NULL, '0509202301040082997400120010010000007111234567813', NULL, NULL, NULL, 'PROFICURA 750 Gr', '17.5', 'TARAPUES VALENZUELA VICENTE PABLO', 'pablotarapues73@gmail.com', '0401024815001', 'CARCHI ESPEJO SAN ISIDRO CALLE DIEZ DE AGOSTO', '0981098595', '04', '192.3', '0', NULL, '192.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(712, '2023-09-05 15:58:56', '712', '2164d7b643fb3bbda55b41ca79b0390b52', NULL, '2', '', NULL, '0509202301040082997400120010010000007121234567819.xml', NULL, '0509202301040082997400120010010000007121234567819', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.8', 'TEQUIZ CHALACAN LESLY DAYANA', 'leslytequiz53@gmail.com', '0401966478', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITIMILLA', '0988726797', '05', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(713, '2023-09-05 16:06:06', '713', '2ccae4230cf02d8b1934161bbf4df67af2', NULL, '2', '', NULL, '0509202301040082997400120010010000007131234567814.xml', NULL, '0509202301040082997400120010010000007131234567814', NULL, NULL, NULL, 'FITORAZ 500 gr', '17.4', 'TEQUIZ CHALACAN LESLY DAYANA', 'leslytequiz53@gmail.com', '0401966478', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITIMILLA', '0988726797', '05', '125.8', '0', NULL, '125.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(714, '2023-09-05 16:11:04', '714', '2a308451dfbcb50c4b47ab3eb68628aa02', NULL, '2', '', NULL, '0509202301040082997400120010010000007141234567811.xml', NULL, '0509202301040082997400120010010000007141234567811', NULL, NULL, NULL, 'PILARTHIO 250 CC', '4.5', 'TEQUIZ CHALACAN LESLY DAYANA', 'leslytequiz53@gmail.com', '0401966478', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITIMILLA', '0988726797', '05', '35.8', '0', NULL, '35.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(715, '2023-09-05 16:21:57', '715', '2975047ed8b2287e2ac7c5ad28f9468e42', NULL, '2', '', NULL, '0509202301040082997400120010010000007151234567815.xml', NULL, '0509202301040082997400120010010000007151234567815', NULL, NULL, NULL, 'PROFICURA 750 Gr', '8.75', 'TARAPUES VALENZUELA VICENTE PABLO', 'pablotarapues73@gmail.com', '0401024815001', 'CARCHI ESPEJO SAN ISIDRO CALLE DIEZ DE AGOSTO', '0981098595', '04', '106.2', '0', NULL, '106.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(716, '2023-09-05 16:24:35', '716', '2994d5d803ebf7c7eede8daefa4274a362', NULL, '2', '', NULL, '0509202301040082997400120010010000007161234567810.xml', NULL, '0509202301040082997400120010010000007161234567810', NULL, NULL, NULL, 'INVICTO 250 Gr', '31.6', 'ESPAÃ‘A ENRIQUEZ KEVIN ESTEBAN', 'kevinespaa744@hotmail.es', '0401878665', 'CARCHI ESPEJO INGUEZA', '0999112849', '05', '79.3', '0', NULL, '79.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(717, '2023-09-05 17:10:14', '717', '28e6b8fbd2a2f208d868fa8abd377df142', NULL, '2', '', NULL, '0509202301040082997400120010010000007171234567816.xml', NULL, '0509202301040082997400120010010000007171234567816', NULL, NULL, NULL, 'SEAWEED FLUID LITRO', '152.6', 'ESPAÃ‘A TRUJILLO LUIS ISIDRO', 'luis.311264@hotmail.com', '0400720132001', 'CARCHI ESPEJO SAN ISIDRO CALLE JUAN MONTALVO', '0994627985', '04', '638.8', '0', NULL, '638.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(718, '2023-09-06 00:29:35', '718', '23601b18f7adf25381f6f76e482b1574a2', NULL, '2', '', NULL, '0509202301040082997400120010010000007181234567811.xml', NULL, '0509202301040082997400120010010000007181234567811', NULL, NULL, NULL, 'STARNER  200 Gr.', '24.5', 'ESPAÃ‘A ENRIQUEZ KEVIN ESTEBAN', 'kevinespaa744@hotmail.es', '0401878665', 'CARCHI ESPEJO INGUEZA', '0999112849', '05', '352.3', '0', NULL, '352.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(719, '2023-09-13 15:07:54', '719', '2e0e3d31971ab96273a026956702062492', NULL, '2', '', NULL, '1309202301040082997400120010010000007191234567811.xml', NULL, '1309202301040082997400120010010000007191234567811', NULL, NULL, NULL, 'HAMMER 500 gr', '12.4', 'VALENCIA HERRERIA YADIRA ELISABETH', 'yadyvalencia@live.com', '0401582994', 'CARCHI ESPEJO EL ANGEL SALINAS Y JOSE BENIGNO', '0961323165', '05', '160.55', '0', NULL, '160.55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(720, '2023-09-13 22:00:17', '720', '28f1055d1524621c46b7aa9c46466c3972', NULL, '2', '', NULL, '1309202301040082997400120010010000007201234567817.xml', NULL, '1309202301040082997400120010010000007201234567817', NULL, NULL, NULL, 'DACONIL LITRO', '28.6', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '214.15', '0', NULL, '214.15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(721, '2023-09-13 22:17:33', '721', '28e98e3858d45d792e54347424fd3cde02', NULL, '2', '', NULL, '1309202301040082997400120010010000007211234567812.xml', NULL, '1309202301040082997400120010010000007211234567812', NULL, NULL, NULL, 'COSAGRIN 80 Kg', '50', 'ESPAÃ‘A TRUJILLO LUIS ISIDRO', 'luis.311264@hotmail.com', '0400720132001', 'CARCHI ESPEJO SAN ISIDRO CALLE JUAN MONTALVO', '0994627985', '04', '632.2', '0', NULL, '632.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(722, '2023-09-13 22:37:58', '722', '2e02a5d9c8385824df38da0cbd2dc32012', NULL, '2', '', NULL, '1309202301040082997400120010010000007221234567818.xml', NULL, '1309202301040082997400120010010000007221234567818', NULL, NULL, NULL, 'MOJAVE LITRO', '84', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '265.5', '0', NULL, '265.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(723, '2023-09-13 23:19:37', '723', '2ccab202d83e240c80f3aaf27a8c21a0d2', NULL, '2', '', NULL, '1309202301040082997400120010010000007231234567813.xml', NULL, '1309202301040082997400120010010000007231234567813', NULL, NULL, NULL, 'CURAMAX M 8  500 Gr', '23.6', 'ESPAÃ‘A ENRIQUEZ KEVIN ESTEBAN', 'kevinespaa744@hotmail.es', '0401878665', 'CARCHI ESPEJO INGUEZA', '0999112849', '05', '184.1', '0', NULL, '184.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(724, '2023-09-14 00:34:43', '724', '2756bdaa669770c8edcdaa640313bea642', NULL, '2', '', NULL, '1309202301040082997400120010010000007241234567819.xml', NULL, '1309202301040082997400120010010000007241234567819', NULL, NULL, NULL, 'Purgante 400 gr.', '2', 'PEREZ NICOLALDE ESTEBAN DAVID', 'pereznicolalde@hotmail.com', '1716748924', 'CARCHI ESPEJO SAN ISIDRO CARLISAMA', '0994819444', '05', '84.11', '0', NULL, '84.11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(725, '2023-09-15 13:26:16', '725', '20a4d0107b4e7432e19abc1c3270dd7ad2', NULL, '2', '', NULL, '1509202301040082997400120010010000007251234567813.xml', NULL, '1509202301040082997400120010010000007251234567813', NULL, NULL, NULL, 'NUNCHAKU 200 cc', '14.4', 'GAON LOMAS STIFF FERNANDO', 'stifffer_16@hotmail.com', '0401777248001', 'CARCHI HUACA BARRIO LA CALERA', '0962632550', '04', '21.6', '0', NULL, '21.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(726, '2023-09-15 16:33:07', '726', '24bf507fdc1b52fc1161a2d80e7dc19802', NULL, '2', '', NULL, '1509202301040082997400120010010000007261234567819.xml', NULL, '1509202301040082997400120010010000007261234567819', NULL, NULL, NULL, 'LI 700 LITRO', '11.5', 'GAON LOMAS STIFF FERNANDO', 'stifffer_16@hotmail.com', '0401777248001', 'CARCHI HUACA BARRIO LA CALERA', '0962632550', '04', '560.3', '0', NULL, '560.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(727, '2023-09-15 16:45:55', '727', '28045d052953ecc7b9fde41990fee65c32', NULL, '2', '', NULL, '1509202301040082997400120010010000007271234567814.xml', NULL, '1509202301040082997400120010010000007271234567814', NULL, NULL, NULL, 'PROFIMETH 500 Gr Met Prop', '17.4', 'PEREZ NICOLALDE ESTEBAN DAVID', 'pereznicolalde@hotmail.com', '1716748924', 'CARCHI ESPEJO SAN ISIDRO CARLISAMA', '0994819444', '05', '132.4', '0', NULL, '132.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(728, '2023-09-15 16:56:37', '728', '2bea915b8109f38e4570c6ddde9d453762', NULL, '2', '', NULL, '1509202301040082997400120010010000007281234567811.xml', NULL, '1509202301040082997400120010010000007281234567811', NULL, NULL, NULL, 'NAKAR LITRO', '63.4', 'ESPAÃ‘A TRUJILLO LUIS ISIDRO', 'luis.311264@hotmail.com', '0400720132001', 'CARCHI ESPEJO SAN ISIDRO CALLE JUAN MONTALVO', '0994627985', '04', '552.8', '0', NULL, '552.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(729, '2023-09-15 17:12:28', '729', '2008c6fb81f64cbd8c57a5014d7ad04a62', NULL, '2', '', NULL, '1509202301040082997400120010010000007291234567815.xml', NULL, '1509202301040082997400120010010000007291234567815', NULL, NULL, NULL, 'COSAGRIN 80 Kg', '49', 'GAON LOMAS STIFF FERNANDO', 'stifffer_16@hotmail.com', '0401777248001', 'CARCHI HUACA BARRIO LA CALERA', '0962632550', '04', '458.4', '0', NULL, '458.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(730, '2023-09-15 17:17:19', '730', '228f48ef0f473377533962fdfb790b6bc2', NULL, '2', '', NULL, '1509202301040082997400120010010000007301234567810.xml', NULL, '1509202301040082997400120010010000007301234567810', NULL, NULL, NULL, 'COSAGRIN 80 Kg', '44.1', 'CEVALLOS MENA INES ELENA', 'ineselena.cev72@gmail.com', '0401068291001', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITE Y CUATRO DE MAYO', '09801712', '04', '584.3', '0', NULL, '584.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(731, '2023-09-16 12:48:40', '830', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(732, '2023-09-16 12:50:22', '732', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(733, '2023-09-16 12:50:59', '733', '22bbef827794b15a128eec9bebc529fa72', NULL, '2', '', NULL, '1609202301040082997400120010010000007331234567811.xml', NULL, '1609202301040082997400120010010000007331234567811', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.8', 'ESPAÃ‘A TRUJILLO LUIS ISIDRO', 'luis.311264@hotmail.com', '0400720132001', 'CARCHI ESPEJO SAN ISIDRO CALLE JUAN MONTALVO', '0994627985', '04', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(734, '2023-09-16 12:58:07', '734', '2c688da5481bbf94ee2bf0ea340db0eca2', NULL, '2', '', NULL, '1609202301040082997400120010010000007341234567817.xml', NULL, '1609202301040082997400120010010000007341234567817', NULL, NULL, NULL, 'STIMULUS DESARROLLO LITRO', '75.6', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '599.45', '0', NULL, '599.45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(735, '2023-09-18 21:14:15', '735', '2d45acf4c7aef9ae2ad4677577b6155a02', NULL, '2', '', NULL, '1809202301040082997400120010010000007351234567811.xml', NULL, '1809202301040082997400120010010000007351234567811', NULL, NULL, NULL, 'ONLY Ca  10 Kg', '94', 'UGSHA MARCO', 'marco01futbol@outlook.es', '0401751326', 'CARCHI ESPEJO SAN VICENTE CALLE ESMERALDAS', '0993567994', '05', '94', '0', NULL, '94', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(736, '2023-09-18 21:24:28', '736', '2e73d93d23fb9fb5cc40979551a1b2cbf2', NULL, '2', '', NULL, '1809202301040082997400120010010000007361234567817.xml', NULL, '1809202301040082997400120010010000007361234567817', NULL, NULL, NULL, 'SOLL 500 gr', '18', 'ORTEGA BENALCAZAR ANGEL EDISON', 'ortega.angeled@gmail.com', '0401148804001', 'CARCHI ESPEJO SAN ISIDRO CALLE 10 DE AGOSTO', '0985990052', '04', '145', '0', NULL, '145', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(737, '2023-09-18 21:32:08', '737', '2c2b58b635771d0bc4d34a8a7dd33dfc92', NULL, '2', '', NULL, '1809202301040082997400120010010000007371234567812.xml', NULL, '1809202301040082997400120010010000007371234567812', NULL, NULL, NULL, 'FIPREX DE 250', '38.7', 'ESPAÃ‘A ENRIQUEZ KEVIN ESTEBAN', 'kevinespaa744@hotmail.es', '0401878665', 'CARCHI ESPEJO INGUEZA', '0999112849', '05', '247.4', '0', NULL, '247.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(738, '2023-09-18 22:16:35', '738', '236e5592f1aee6924ad8021386e8602802', NULL, '2', '', NULL, '1809202301040082997400120010010000007381234567818.xml', NULL, '1809202301040082997400120010010000007381234567818', NULL, NULL, NULL, 'FIJAFIJ PLUS 500 cc', '5.7', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '170.2', '0', NULL, '170.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(739, '2023-09-28 15:28:51', '739', '2ffbea0f98da4d4a1087bd839dbbf7c552', NULL, '2', '', NULL, '2809202301040082997400120010010000007391234567817.xml', NULL, '2809202301040082997400120010010000007391234567817', NULL, NULL, NULL, 'PILARTHIO 250 CC', '9.2', 'NENGER ENRIQUEZ MARIA BERTILA', 'nengermari@gmail.com', '0400773362', 'CARCHI  ESPEJO SAN ISIDRO VIA MORTIÃ‘AL', '0990996155', '05', '109.5', '0', NULL, '109.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(740, '2023-09-28 16:05:37', '740', '2aaa50393fa8c8b746ce87dd04a7c5f8e2', NULL, '2', '', NULL, '2809202301040082997400120010010000007401234567812.xml', NULL, '2809202301040082997400120010010000007401234567812', NULL, NULL, NULL, 'Diclofenaco  100 plus de 10 ml', '4.1', 'NENGER ENRIQUEZ MARIA BERTILA', 'nengermari@gmail.com', '0400773362', 'CARCHI  ESPEJO SAN ISIDRO VIA MORTIÃ‘AL', '0990996155', '05', '64.71', '0', NULL, '64.71', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(741, '2023-09-28 16:10:26', '741', '28fcd97d86692a878b63cd38ea717da912', NULL, '2', '', NULL, '2809202301040082997400120010010000007411234567818.xml', NULL, '2809202301040082997400120010010000007411234567818', NULL, NULL, NULL, 'Purgante 400 gr.', '2', 'NENGER ENRIQUEZ MARIA BERTILA', 'nengermari@gmail.com', '0400773362', 'CARCHI  ESPEJO SAN ISIDRO VIA MORTIÃ‘AL', '0990996155', '05', '84.4', '0', NULL, '84.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(742, '2023-10-02 22:08:05', '742', '2d460e3c6cfa4e17423b037ceb7eeb0582', NULL, '2', '', NULL, '0210202301040082997400120010010000007421234567817.xml', NULL, '0210202301040082997400120010010000007421234567817', NULL, NULL, NULL, 'FIJAFIJ PLUS 500 cc', '5.7', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '468.6', '0', NULL, '468.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(743, '2023-10-02 22:28:16', '743', '2bb78d883f7c2b772b9231c04369ed2a32', NULL, '2', '', NULL, '0210202301040082997400120010010000007431234567812.xml', NULL, '0210202301040082997400120010010000007431234567812', NULL, NULL, NULL, 'DACONIL LITRO', '13.9', 'NENGER ENRIQUEZ MARIA BERTILA', 'nengermari@gmail.com', '0400773362', 'CARCHI  ESPEJO SAN ISIDRO VIA MORTIÃ‘AL', '0990996155', '05', '124.4', '0', NULL, '124.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(744, '2023-10-02 22:43:46', '744', '21ffcc900532d3fdb0e5424ea34d995b12', NULL, '2', '', NULL, '0210202301040082997400120010010000007441234567818.xml', NULL, '0210202301040082997400120010010000007441234567818', NULL, NULL, NULL, 'DIFENICC 100 cc', '4.4', 'TEQUIZ CHALACAN LESLY DAYANA', 'leslytequiz53@gmail.com', '0401966478', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITIMILLA', '0988726797', '05', '239.15', '0', NULL, '239.15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(745, '2023-10-02 22:47:08', '745', '278767945fffa1aeb0bc2813b4171459d2', NULL, '2', '', NULL, '0210202301040082997400120010010000007451234567813.xml', NULL, '0210202301040082997400120010010000007451234567813', NULL, NULL, NULL, 'CURAMAX M 8  500 Gr', '56', 'CALPA CALPA THALIA DAYANA', 'dayanacalpa51@gmail.com', '0402100143', 'CARCHI ESPEJO SAN ISIDRO CHITACASPI', '0993796174', '05', '219.8', '0', NULL, '219.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(746, '2023-10-02 22:57:29', '746', '23b2a63e1853c4af2b028dcfa73d75bb72', NULL, '2', '', NULL, '0210202301040082997400120010010000007461234567819.xml', NULL, '0210202301040082997400120010010000007461234567819', NULL, NULL, NULL, 'SPECIAL ENGROSE 20 LITROS', '170', 'MERA RIVADENEIRA MONICA ASUNCION', 'mona_mera1980@hotmail.com', '0919802835001', 'CARCHI  ESPEJO  SAN ISIDRO  EL CHARCO COLORADO SN Y CAMINO PALO BLANCO', '0997866652', '04', '737', '0', NULL, '737', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(747, '2023-10-02 23:07:58', '747', '20a98b760323567b6504e39f664750a232', NULL, '2', '', NULL, '0210202301040082997400120010010000007471234567814.xml', NULL, '0210202301040082997400120010010000007471234567814', NULL, NULL, NULL, 'FULL COBRE LITRO', '54.8', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '365.7', '0', NULL, '365.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(748, '2023-10-03 17:18:19', '748', '24599d8d30fceb8f083fd4c8bf6bd077b2', NULL, '2', '', NULL, '0310202301040082997400120010010000007481234567814.xml', NULL, '0310202301040082997400120010010000007481234567814', NULL, NULL, NULL, 'HAMMER 500 gr', '24.8', 'MENDEZ POZO NANCY CECILIA', 'mendezpozonancy09@gmail.con', '0401243472001', 'CARCHI ESPEJO SAN ISIDRO  ESMERALDAS', '0985691646', '04', '373.9', '0', NULL, '373.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(749, '2023-10-03 17:24:00', '749', '26a0c46b49355b6e8823ec1563b0c39962', NULL, '2', '', NULL, '0310202301040082997400120010010000007491234567811.xml', NULL, '0310202301040082997400120010010000007491234567811', NULL, NULL, NULL, 'CURAMAX M 8  500 Gr', '56', 'ORTEGA BENALCAZAR ANGEL EDISON', 'ortega.angeled@gmail.com', '0401148804001', 'CARCHI ESPEJO SAN ISIDRO CALLE 10 DE AGOSTO', '0985990052', '04', '194.7', '0', NULL, '194.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(750, '2023-10-03 17:28:24', '750', '2fba1ab8975752e50aa66618b4025910d2', NULL, '2', '', NULL, '0310202301040082997400120010010000007501234567815.xml', NULL, '0310202301040082997400120010010000007501234567815', NULL, NULL, NULL, 'DISFOL PH 125 cc', '5.7', 'CEVALLOS MENA INES ELENA', 'ineselena.cev72@gmail.com', '0401068291001', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITE Y CUATRO DE MAYO', '09801712', '04', '237.3', '0', NULL, '237.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(751, '2023-10-03 17:35:07', '751', '274c094e57f5aff0df15e6352e07090742', NULL, '2', '', NULL, '0310202301040082997400120010010000007511234567810.xml', NULL, '0310202301040082997400120010010000007511234567810', NULL, NULL, NULL, 'PROFICURA 750 Gr', '8.75', 'TEQUIZ CHALACAN LESLY DAYANA', 'leslytequiz53@gmail.com', '0401966478', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITIMILLA', '0988726797', '05', '47', '0', NULL, '47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(752, '2023-10-03 17:39:46', '752', '2bff6de070c3248c0e11c6ac80a1ea3962', NULL, '2', '', NULL, '0310202301040082997400120010010000007521234567816.xml', NULL, '0310202301040082997400120010010000007521234567816', NULL, NULL, NULL, 'SOLL 500 gr', '25.2', 'ORTEGA BENALCAZAR ANGEL EDISON', 'ortega.angeled@gmail.com', '0401148804001', 'CARCHI ESPEJO SAN ISIDRO CALLE 10 DE AGOSTO', '0985990052', '04', '303', '0', NULL, '303', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(753, '2023-10-03 18:39:33', '753', '279d6f9dd2fa0c23fdeb0c31fff9b1d032', NULL, '2', '', NULL, '0310202301040082997400120010010000007531234567811.xml', NULL, '0310202301040082997400120010010000007531234567811', NULL, NULL, NULL, 'MOJAVE 250 cc', '8.1', 'TARAPUES VALENZUELA VICENTE PABLO', 'pablotarapues73@gmail.com', '0401024815001', 'CARCHI ESPEJO SAN ISIDRO CALLE DIEZ DE AGOSTO', '0981098595', '04', '35.8', '0', NULL, '35.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(754, '2023-10-03 18:45:43', '754', '2f0ee6d9b242c2c9d42a43c5d54c1439f2', NULL, '2', '', NULL, '0310202301040082997400120010010000007541234567817.xml', NULL, '0310202301040082997400120010010000007541234567817', NULL, NULL, NULL, 'PROFIMETH 500 Gr Met Prop', '8.7', 'CHAMORRO VARGAS ANA LUCIA', 'anitachamorro485@gmail.com', '0402133045', 'CARCHI ESPEJO SAN ISIDRO VIA CHITACASPI', '095472372', '05', '64.35', '0', NULL, '64.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(755, '2023-10-03 18:51:23', '755', '279b245588bfd99fcefb068d8b4254f0d2', NULL, '2', '', NULL, '0310202301040082997400120010010000007551234567812.xml', NULL, '0310202301040082997400120010010000007551234567812', NULL, NULL, NULL, 'ESFIRE 200 cc', '22.5', 'TAIMAL ZAMBRANO WILSON RAMIRO', 'base4x4@hotmail.com', '1003267869001', 'CARCHI ESPEJO SAN ISIDRO PANAMERICANA SUR', '0980613463', '04', '159.5', '0', NULL, '159.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(756, '2023-10-03 18:58:17', '756', '214da4ca5decf53d663c2b310e81d712c2', NULL, '2', '', NULL, '0310202301040082997400120010010000007561234567818.xml', NULL, '0310202301040082997400120010010000007561234567818', NULL, NULL, NULL, 'MOJAVE 250 cc', '16.8', 'ORTEGA BENALCAZAR ANGEL EDISON', 'ortega.angeled@gmail.com', '0401148804001', 'CARCHI ESPEJO SAN ISIDRO CALLE 10 DE AGOSTO', '0985990052', '04', '144.7', '0', NULL, '144.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(757, '2023-10-03 19:06:48', '757', '29a39c7cd5031665dc458073b1da2dbac2', NULL, '2', '', NULL, '0310202301040082997400120010010000007571234567813.xml', NULL, '0310202301040082997400120010010000007571234567813', NULL, NULL, NULL, 'SEAWEED FLUID LITRO', '21.8', 'ESPAÃ‘A POZO SEGUNDO ISIDRO', 'isidroespana64@gmail.com', '0400446241001', 'CARCHI ESPEJO INGUEZA', '0994132689', '04', '121.8', '0', NULL, '121.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(758, '2023-10-03 19:55:26', '758', '2a08d1f4b2f6fe5d101d0f6704e38fc1f2', NULL, '2', '', NULL, '0310202301040082997400120010010000007581234567819.xml', NULL, '0310202301040082997400120010010000007581234567819', NULL, NULL, NULL, 'PROFICURA 750 Gr', '25.5', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI ESPEJO SAN ISIDRO SUCRE Y COLON', '0981161128', '04', '216.7', '0', NULL, '216.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(759, '2023-10-05 20:12:48', '759', '29abb8da74971f9df3b9483ff4c72c4dd2', NULL, '2', '', NULL, '0510202301040082997400120010010000007591234567813.xml', NULL, '0510202301040082997400120010010000007591234567813', NULL, NULL, NULL, 'HAMMER 500 gr', '12.4', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '344.6', '0', NULL, '344.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(760, '2023-10-05 20:16:44', '760', '222aa26620b43b64fa3ee1793573c68622', NULL, '2', '', NULL, '0510202301040082997400120010010000007601234567819.xml', NULL, '0510202301040082997400120010010000007601234567819', NULL, NULL, NULL, 'SEAWEED FLUID LITRO', '21.8', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI ESPEJO SAN ISIDRO SUCRE Y COLON', '0981161128', '04', '108.25', '0', NULL, '108.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(761, '2023-10-05 20:26:52', '761', '25d494f8861ab3699bb911aaa0f3d947c2', NULL, '2', '', NULL, '0510202301040082997400120010010000007611234567814.xml', NULL, '0510202301040082997400120010010000007611234567814', NULL, NULL, NULL, 'FULL COBRE LITRO', '40.2', 'ESPAÃ‘A POZO SEGUNDO ISIDRO', 'isidroespana64@gmail.com', '0400446241001', 'CARCHI ESPEJO INGUEZA', '0994132689', '04', '287.6', '0', NULL, '287.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(762, '2023-10-05 20:35:36', '762', '241d30e77f1e1db2a08eebfa8f31698342', NULL, '2', '', NULL, '0510202301040082997400120010010000007621234567811.xml', NULL, '0510202301040082997400120010010000007621234567811', NULL, NULL, NULL, 'DIFECOR 100 cc', '9', 'ESPAÃ‘A ENRIQUEZ KEVIN ESTEBAN', 'kevinespaa744@hotmail.es', '0401878665', 'CARCHI ESPEJO INGUEZA', '0999112849', '05', '126.5', '0', NULL, '126.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(763, '2023-10-05 20:39:31', '763', '22cf0d47726ff174d0dfd371efcf1bbec2', NULL, '2', '', NULL, '0510202301040082997400120010010000007631234567815.xml', NULL, '0510202301040082997400120010010000007631234567815', NULL, NULL, NULL, 'ANTRACOL 400 Gr', '38', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA IBARRA SAGRARIO ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '299.55', '0', NULL, '299.55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(764, '2023-10-05 20:42:48', '764', '29abb8da74971f9df3b9483ff4c72c4dd2', NULL, '2', '', NULL, '0510202301040082997400120010010000007641234567810.xml', NULL, '0510202301040082997400120010010000007641234567810', NULL, NULL, NULL, 'HAMMER 500 gr', '12.4', 'MENDEZ POZO NANCY CECILIA', 'mendezpozonancy09@gmail.con', '0401243472001', 'CARCHI ESPEJO SAN ISIDRO  ESMERALDAS', '0985691646', '04', '113.5', '0', NULL, '113.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(765, '2023-10-05 20:44:12', '765', '22196429a314910f83b3440d4aab9a6882', NULL, '2', '', NULL, '0510202301040082997400120010010000007651234567816.xml', NULL, '0510202301040082997400120010010000007651234567816', NULL, NULL, NULL, 'HAMMER 500 gr', '12.4', 'CALPA CALPA THALIA DAYANA', 'dayanacalpa51@gmail.com', '0402100143', 'CARCHI ESPEJO SAN ISIDRO CHITACASPI', '0993796174', '05', '113.5', '0', NULL, '113.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(766, '2023-10-05 21:50:48', '766', '2303129f300fdb91b33d1b07a587a41442', NULL, '2', '', NULL, '0510202301040082997400120010010000007661234567811.xml', NULL, '0510202301040082997400120010010000007661234567811', NULL, NULL, NULL, 'INDICATE LITRO', '12.75', 'UGSHA MARCO', 'marco01futbol@outlook.es', '0401751326', 'CARCHI ESPEJO SAN VICENTE CALLE ESMERALDAS', '0993567994', '05', '400.65', '0', NULL, '400.65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(767, '2023-10-06 17:54:20', '767', '2ee63f29e189d36d3f92d8354ca7dadf32', NULL, '2', '', NULL, '0610202301040082997400120010010000007671234567811.xml', NULL, '0610202301040082997400120010010000007671234567811', NULL, NULL, NULL, 'SCAPER  de 250 cc', '78.4', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '212.76', '0', NULL, '212.76', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(768, '2023-10-06 17:57:31', '768', '2ad3c126cc32b4d40340f74080261a9c92', NULL, '2', '', NULL, '0610202301040082997400120010010000007681234567817.xml', NULL, '0610202301040082997400120010010000007681234567817', NULL, NULL, NULL, 'PROFICURA 750 Gr', '8.5', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '40.7', '0', NULL, '40.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(769, '2023-10-10 19:33:01', '769', '226ccdec9bf61cf09cdc2625549e73c1b2', NULL, '2', '', NULL, '1010202301040082997400120010010000007691234567819.xml', NULL, '1010202301040082997400120010010000007691234567819', NULL, NULL, NULL, 'CURAMAX M 8  500 Gr', '6.1', 'NENGER ENRIQUEZ WILSON FRANCLIN', 'nengerwilo90@gmail.com', '0401784244', 'CARCHI ESPEJO SAN ISIDRO CHITACASPI ', '0993612669', '05', '78.3', '0', NULL, '78.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(770, '2023-10-10 19:50:26', '770', '2062d92df65ea3f0d5e4dd6405a659a6c2', NULL, '2', '', NULL, '1010202301040082997400120010010000007701234567814.xml', NULL, '1010202301040082997400120010010000007701234567814', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '7.4', 'NENGER ENRIQUEZ WILSON FRANCLIN', 'nengerwilo90@gmail.com', '0401784244', 'CARCHI ESPEJO SAN ISIDRO CHITACASPI ', '0993612669', '05', '80.5', '0', NULL, '80.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(771, '2023-10-13 14:58:15', '771', '2909b1fd6b65b674ffa0f27512a316fd72', NULL, '2', '', NULL, '1310202301040082997400120010010000007711234567813.xml', NULL, '1310202301040082997400120010010000007711234567813', NULL, NULL, NULL, 'GLISOLAT  LITRO', '21.75', 'CUPUERAN CARRERA ALEXANDRA DEL CARMEN', 'alexas6-24@hotmail.com', '1003839196001', 'CARH ESPEJO SAN ISIDRO BOLIVAR', '0991009768', '04', '21.75', '0', NULL, '21.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(772, '2023-10-13 15:08:06', '772', '28b179533f9718e5ac1d7dcf8f51a35462', NULL, '2', '', NULL, '1310202301040082997400120010010000007721234567819.xml', NULL, '1310202301040082997400120010010000007721234567819', NULL, NULL, NULL, 'SOLL 500 gr', '120', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '280.4', '0', NULL, '280.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(773, '2023-10-13 15:10:23', '781', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(774, '2023-10-13 15:11:07', '782', '279d906ac575480a07fd918e995efb8292', NULL, '2', '', NULL, '1310202301040082997400120010010000007821234567813.xml', NULL, '1310202301040082997400120010010000007821234567813', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.8', 'POZO ENRIQUEZ NELLY ISAURA', 'nellypozo140@gmail.com', '0401700430', 'CARCHI ESPEJO MORTIÃ‘AL', '0983605538', '05', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(775, '2023-10-13 15:14:21', '783', '2fdfac64a4183b7d4bc691112651744842', NULL, '2', '', NULL, '1310202301040082997400120010010000007831234567819.xml', NULL, '1310202301040082997400120010010000007831234567819', NULL, NULL, NULL, 'TOPAS LITRO', '65', 'TEQUIZ CHALACAN LESLY DAYANA', 'leslytequiz53@gmail.com', '0401966478', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITIMILLA', '0988726797', '05', '65', '0', NULL, '65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(776, '2023-10-13 15:20:17', '784', '2c1858d4a31837f50b4e3737635426f162', NULL, '2', '', NULL, '1310202301040082997400120010010000007841234567814.xml', NULL, '1310202301040082997400120010010000007841234567814', NULL, NULL, NULL, 'PIRESTAR LITRO', '83.7', 'MENDEZ POZO NANCY CECILIA', 'mendezpozonancy09@gmail.con', '0401243472001', 'CARCHI ESPEJO SAN ISIDRO  ESMERALDAS', '0985691646', '04', '262.4', '0', NULL, '262.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(777, '2023-10-13 15:24:58', '785', '216afde4f1712abd2a8c318391890568a2', NULL, '2', '', NULL, '1310202301040082997400120010010000007851234567811.xml', NULL, '1310202301040082997400120010010000007851234567811', NULL, NULL, NULL, 'CURACRON 250 cc', '13.8', 'CALPA CALPA THALIA DAYANA', 'dayanacalpa51@gmail.com', '0402100143', 'CARCHI ESPEJO SAN ISIDRO CHITACASPI', '0993796174', '05', '60.4', '0', NULL, '60.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(778, '2023-10-13 15:36:39', '786', '226e57ae277b4686c3708c3f20cef53be2', NULL, '2', '', NULL, '1310202301040082997400120010010000007861234567815.xml', NULL, '1310202301040082997400120010010000007861234567815', NULL, NULL, NULL, 'SOLL 500 gr', '126', 'MERA RIVADENEIRA MONICA ASUNCION', 'mona_mera1980@hotmail.com', '0919802835001', 'CARCHI  ESPEJO  SAN ISIDRO  EL CHARCO COLORADO SN Y CAMINO PALO BLANCO', '0997866652', '04', '760.5', '0', NULL, '760.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(779, '2023-10-13 15:40:40', '787', '294e51d13b3596167ae260a1e1abc828c2', NULL, '2', '', NULL, '1310202301040082997400120010010000007871234567810.xml', NULL, '1310202301040082997400120010010000007871234567810', NULL, NULL, NULL, 'COURAGE LITRO', '31.2', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '198.6', '0', NULL, '198.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(780, '2023-10-13 15:41:39', '788', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(781, '2023-10-13 15:42:41', '789', '23354e5188feb4a42400e284b5e42ad712', NULL, '2', '', NULL, '1310202301040082997400120010010000007891234567811.xml', NULL, '1310202301040082997400120010010000007891234567811', NULL, NULL, NULL, 'FIJAFIJ PLUS 500 cc', '5.5', 'REINA YAZAN MARILSA ENCARNACION', 'marilsareina@hotmail.com', '0401338181001', 'CARCHI MIRA MIRA PRINCIPAL', '0983611124', '04', '5.5', '0', NULL, '5.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(782, '2023-10-13 15:48:05', '790', '2c8f6e74c1f43be8e91f477f94136bc612', NULL, '2', '', NULL, '1310202301040082997400120010010000007901234567817.xml', NULL, '1310202301040082997400120010010000007901234567817', NULL, NULL, NULL, 'GLISOLAT  LITRO', '21.75', 'CUPUERAN CARRERA ALEXANDRA DEL CARMEN', 'alexas6-24@hotmail.com', '1003839196001', 'CARH ESPEJO SAN ISIDRO BOLIVAR', '0991009768', '04', '21.75', '0', NULL, '21.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(783, '2023-10-13 15:52:52', '791', '200576259744bdff24d60b2da426c70182', NULL, '2', '', NULL, '1310202301040082997400120010010000007911234567812.xml', NULL, '1310202301040082997400120010010000007911234567812', NULL, NULL, NULL, 'SOLL 500 gr', '18.9', 'REINA YAZAN MARILSA ENCARNACION', 'marilsareina@hotmail.com', '0401338181001', 'CARCHI MIRA MIRA PRINCIPAL', '0983611124', '04', '228', '0', NULL, '228', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(784, '2023-10-13 15:58:37', '792', '2cb8da0db335a986f22ab60f64e78f3772', NULL, '2', '', NULL, '1310202301040082997400120010010000007921234567818.xml', NULL, '1310202301040082997400120010010000007921234567818', NULL, NULL, NULL, 'FITORAZ 500 gr', '8.8', 'POZO GUAMIALAMA WILSON PABLO', 'pabloguamialamapozo@gmail.com', '0401819685001', 'CARCHI ESPEJO SAN ISIDRO INGUEZA', '0939368522', '04', '265.05', '0', NULL, '265.05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(785, '2023-10-14 16:22:00', '793', '23b616c591ec5a4095a9685000d7d6b822', NULL, '2', '', NULL, '1410202301040082997400120010010000007931234567818.xml', NULL, '1410202301040082997400120010010000007931234567818', NULL, NULL, NULL, 'ONLY Ca  10 Kg', '188', 'UGSHA MARCO', 'marco01futbol@outlook.es', '0401751326', 'CARCHI ESPEJO SAN VICENTE CALLE ESMERALDAS', '0993567994', '05', '188', '0', NULL, '188', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(786, '2023-10-14 19:13:32', '794', '2bd1ab4b8ca895ba135a02955cf11dbe52', NULL, '2', '', NULL, '1410202301040082997400120010010000007941234567813.xml', NULL, '1410202301040082997400120010010000007941234567813', NULL, NULL, NULL, 'GLISOLAT  LITRO', '84', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '181.4', '0', NULL, '181.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(787, '2023-10-14 19:22:15', '795', '23e5e4b310ddba963de9e19dfcd5d94082', NULL, '2', '', NULL, '1410202301040082997400120010010000007951234567819.xml', NULL, '1410202301040082997400120010010000007951234567819', NULL, NULL, NULL, 'SOLL 500 gr', '50.4', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '343.85', '0', NULL, '343.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(788, '2023-10-14 19:26:11', '796', '20b9faa67cf152297ab9e2d53621e35432', NULL, '2', '', NULL, '1410202301040082997400120010010000007961234567814.xml', NULL, '1410202301040082997400120010010000007961234567814', NULL, NULL, NULL, 'CORAZA 750 Gr', '10.25', 'ESPAÃ‘A POZO SEGUNDO ISIDRO', 'isidroespana64@gmail.com', '0400446241001', 'CARCHI ESPEJO INGUEZA', '0994132689', '04', '119.05', '0', NULL, '119.05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(789, '2023-10-14 19:35:14', '797', '238775e4ed5018f625f36fb5fb0eb36792', NULL, '2', '', NULL, '1410202301040082997400120010010000007971234567811.xml', NULL, '1410202301040082997400120010010000007971234567811', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '57.6', 'CEVALLOS MENA INES ELENA', 'ineselena.cev72@gmail.com', '0401068291001', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITE Y CUATRO DE MAYO', '09801712', '04', '154.1', '0', NULL, '154.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(790, '2023-10-14 19:36:04', '798', '2538d15b145f78c569441f120c80651362', NULL, '2', '', NULL, '1410202301040082997400120010010000007981234567815.xml', NULL, '1410202301040082997400120010010000007981234567815', NULL, NULL, NULL, 'PROFICURA 750 Gr', '25.5', 'MENDEZ POZO NANCY CECILIA', 'mendezpozonancy09@gmail.con', '0401243472001', 'CARCHI ESPEJO SAN ISIDRO  ESMERALDAS', '0985691646', '04', '212.1', '0', NULL, '212.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(791, '2023-10-14 19:41:13', '799', '26c68ec4361c136673e82d2787cd1b96c2', NULL, '2', '', NULL, '1410202301040082997400120010010000007991234567810.xml', NULL, '1410202301040082997400120010010000007991234567810', NULL, NULL, NULL, 'PROFICURA 750 Gr', '17.5', 'TEQUIZ CHALACAN LESLY DAYANA', 'leslytequiz53@gmail.com', '0401966478', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITIMILLA', '0988726797', '05', '140.3', '0', NULL, '140.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(792, '2023-10-14 19:45:26', '800', '2a4d3dcf8e22fd2435127fbf2370496542', NULL, '2', '', NULL, '1410202301040082997400120010010000008001234567814.xml', NULL, '1410202301040082997400120010010000008001234567814', NULL, NULL, NULL, 'HAMMER 500 gr', '6.2', 'LAURO REVELO', 'laurorevelo-12@hotmail.com', '0400731576', 'PUCHUES', '0993120118', '05', '74.7', '0', NULL, '74.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(793, '2023-10-14 20:12:45', '801', '2dbee419a847bb65fb576ce3b618699522', NULL, '2', '', NULL, '1410202301040082997400120010010000008011234567811.xml', NULL, '1410202301040082997400120010010000008011234567811', NULL, NULL, NULL, 'DISFOL PH 125 cc', '3.8', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA IBARRA SAGRARIO ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '277.8', '0', NULL, '277.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(794, '2023-10-16 10:07:14', '802', '25bf4cb79885c66b3a4157b610374ca8b2', NULL, '2', '', NULL, '1610202301040082997400120010010000008021234567814.xml', NULL, '1610202301040082997400120010010000008021234567814', NULL, NULL, NULL, 'DACONIL 400 cc', '6.8', 'CEVALLOS MENA INES ELENA', 'ineselena.cev72@gmail.com', '0401068291001', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITE Y CUATRO DE MAYO', '09801712', '04', '54.15', '0', NULL, '54.15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(795, '2023-10-16 10:11:36', '803', '275d00f44270e022c0d06e71d584add3f2', NULL, '2', '', NULL, '1610202301040082997400120010010000008031234567811.xml', NULL, '1610202301040082997400120010010000008031234567811', NULL, NULL, NULL, 'CORAZA 750 Gr', '41', 'MORILLO MITES JOSE ANDRES', 'jose1968morillo@gmail.com', '0400852703001', 'CARCHI ESPEJO SAN ISIDRO SUCRE Y COLON', '0981161128', '04', '241.2', '0', NULL, '241.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(796, '2023-10-16 10:16:46', '804', '2533a82ad83f262a012ff12e33dd3c9122', NULL, '2', '', NULL, '1610202301040082997400120010010000008041234567815.xml', NULL, '1610202301040082997400120010010000008041234567815', NULL, NULL, NULL, 'INDICATE LITRO', '25.5', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA IBARRA SAGRARIO ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '502.4', '0', NULL, '502.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(797, '2023-10-16 10:24:15', '805', '23b374113db65a7ac1483f51e3307d19f2', NULL, '2', '', NULL, '1610202301040082997400120010010000008051234567810.xml', NULL, '1610202301040082997400120010010000008051234567810', NULL, NULL, NULL, 'PROFICURA 750 Gr', '8.5', 'REINA YAZAN MARILSA ENCARNACION', 'marilsareina@hotmail.com', '0401338181001', 'CARCHI MIRA MIRA PRINCIPAL', '0983611124', '04', '101.2', '0', NULL, '101.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(798, '2023-10-16 10:31:50', '806', '2dfd5435a7abdd3d16df9cde165019b462', NULL, '2', '', NULL, '1610202301040082997400120010010000008061234567816.xml', NULL, '1610202301040082997400120010010000008061234567816', NULL, NULL, NULL, 'DESNUKADOR 250 cc', '14.6', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '135.6', '0', NULL, '135.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(799, '2023-10-16 10:47:34', '807', '2f4488a637fe2cba62e35c0b1f6275b362', NULL, '2', '', NULL, '1610202301040082997400120010010000008071234567811.xml', NULL, '1610202301040082997400120010010000008071234567811', NULL, NULL, NULL, 'PIRESTAR LITRO', '83.7', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '813.3', '0', NULL, '813.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(800, '2023-10-17 23:46:27', '808', '2eec0e71d3869e666e7eb51645c3bf1e62', NULL, '2', '', NULL, '1710202301040082997400120010010000008081234567811.xml', NULL, '1710202301040082997400120010010000008081234567811', NULL, NULL, NULL, 'LIMBER 500 Gr', '36.8', 'UGSHA MARCO', 'marco01futbol@outlook.es', '0401751326', 'CARCHI ESPEJO SAN VICENTE CALLE ESMERALDAS', '0993567994', '05', '297.8', '0', NULL, '297.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(801, '2023-10-18 13:23:25', '809', '20d81710b7f3e8e72a0857801217293452', NULL, '2', '', NULL, '1810202301040082997400120010010000008091234567811.xml', NULL, '1810202301040082997400120010010000008091234567811', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.8', 'TARAPUES ACIENCIO NAYELI ESPERANZA', 'nayeli21t@gmail.com', '0401961735', 'CARCHI ESPEJO SAN ISIDRO CHITACASPI', '0967394057', '05', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(802, '2023-10-18 13:26:15', '810', '2a8e47313df23fb6127e25b63a3f835cc2', NULL, '2', '', NULL, '1810202301040082997400120010010000008101234567817.xml', NULL, '1810202301040082997400120010010000008101234567817', NULL, NULL, NULL, 'SOLL 500 gr', '12.6', 'TARAPUES ACIENCIO NAYELI ESPERANZA', 'nayeli21t@gmail.com', '0401961735', 'CARCHI ESPEJO SAN ISIDRO CHITACASPI', '0967394057', '05', '153.4', '0', NULL, '153.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO');
INSERT INTO `comprobante_factura_final` (`id`, `fecha`, `codigo_factura`, `codigo_interno_factura`, `secuencia`, `id_emisor`, `id_receptor`, `xml_no_firmado`, `xml_autorizado`, `factura_pdf`, `clave_acceso`, `id_producto`, `cantidad_producto`, `precio_producto`, `descripcion`, `precio_neto`, `nombres_receptor`, `email_receptor`, `cedula_receptor`, `direccion_receptor`, `celular_receptor`, `tipo_identificacion`, `subtotal`, `iva`, `descuento_general`, `total`, `codigo_factura_credito`, `nomnto_modificacion`, `razon_modficiacion`, `numDocModificado`, `identificacion_nc`, `clave_acceso_guia`, `clave_acceso_factura`, `direccion_partida`, `direccion_llegada`, `razon_social_transportista`, `tipoIdentificacionTransportista`, `fecha_inicio_transporte`, `fecha_final_transporte`, `placa_transportista`, `ruc_transportista`, `motivo_traslado`, `comprobante`, `estado`) VALUES
(803, '2023-10-18 13:29:45', '811', '2c2d95b07df09e91c193848d096e3bd672', NULL, '2', '', NULL, '1810202301040082997400120010010000008111234567812.xml', NULL, '1810202301040082997400120010010000008111234567812', NULL, NULL, NULL, 'FULL POTASIO LITRO', '118', 'TARAPUES ACIENCIO NAYELI ESPERANZA', 'nayeli21t@gmail.com', '0401961735', 'CARCHI ESPEJO SAN ISIDRO CHITACASPI', '0967394057', '05', '260.2', '0', NULL, '260.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(804, '2023-10-22 14:38:58', '812', '2788149bb89eb942d2eb44c22754390562', NULL, '2', '', NULL, '2210202301040082997400120010010000008121234567814.xml', NULL, '2210202301040082997400120010010000008121234567814', NULL, NULL, NULL, 'SPECIAL ENGROSE LITRO', '11', 'HUASCALAY GUEVARA ANGEL HUMBERTO', 'angelhuascalay@hotmail.com', '1704359197', 'QUITO SAN JOSE DE MORAN CALDERON', '0987575999', '05', '63.15', '0', NULL, '63.15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(805, '2023-10-24 20:42:29', '813', '202a9a2ec60ef77e7758357fcebb00baf2', NULL, '2', '', NULL, '2410202301040082997400120010010000008131234567819.xml', NULL, '2410202301040082997400120010010000008131234567819', NULL, NULL, NULL, 'SPECIAL ENGROSE LITRO', '22', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '412.3', '0', NULL, '412.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(806, '2023-10-24 20:56:31', '814', '00000000', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(807, '2023-10-24 20:56:50', '815', '2f3ea3a7431d06b3084c6532613d558db2', NULL, '2', '', NULL, '2410202301040082997400120010010000008151234567811.xml', NULL, '2410202301040082997400120010010000008151234567811', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.8', 'TARAPUES ACIENCIO NAYELI ESPERANZA', 'nayeli21t@gmail.com', '0401961735', 'CARCHI ESPEJO SAN ISIDRO CHITACASPI', '0967394057', '05', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(808, '2023-10-24 21:58:13', '816', '2128f8b9226ee186fc4108f33fd4223f22', NULL, '2', '', NULL, '2410202301040082997400120010010000008161234567815.xml', NULL, '2410202301040082997400120010010000008161234567815', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.9', 'MENDEZ POZO NANCY CECILIA', 'mendezpozonancy09@gmail.con', '0401243472001', 'CARCHI ESPEJO SAN ISIDRO  ESMERALDAS', '0985691646', '04', '64', '0', NULL, '64', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(809, '2023-10-24 22:00:37', '817', '20d08c53acfff8ee89b3b38b99d1d03742', NULL, '2', '', NULL, '2410202301040082997400120010010000008171234567810.xml', NULL, '2410202301040082997400120010010000008171234567810', NULL, NULL, NULL, 'ONLY Ca  10 Kg', '46', 'ESPAÃ‘A ENRIQUEZ KEVIN ESTEBAN', 'kevinespaa744@hotmail.es', '0401878665', 'CARCHI ESPEJO INGUEZA', '0999112849', '05', '126.5', '0', NULL, '126.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(810, '2023-10-24 22:21:26', '818', '2c7334c1df704b67111571fe51b7173a42', NULL, '2', '', NULL, '2410202301040082997400120010010000008181234567816.xml', NULL, '2410202301040082997400120010010000008181234567816', NULL, NULL, NULL, 'ONLY Ca  10 Kg', '92', 'HUASCALAY GUEVARA ANGEL HUMBERTO', 'angelhuascalay@hotmail.com', '1704359197', 'QUITO SAN JOSE DE MORAN CALDERON', '0987575999', '05', '165', '0', NULL, '165', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(811, '2023-10-25 17:58:58', '819', '2e5459ebdf68660b36fe965e11a4243b62', NULL, '2', '', NULL, '2510202301040082997400120010010000008191234567816.xml', NULL, '2510202301040082997400120010010000008191234567816', NULL, NULL, NULL, 'HAMMER 500 gr', '12', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '157.4', '0', NULL, '157.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(812, '2023-10-25 18:06:56', '820', '2274eff8258301f6f2be2787498c9a3532', NULL, '2', '', NULL, '2510202301040082997400120010010000008201234567811.xml', NULL, '2510202301040082997400120010010000008201234567811', NULL, NULL, NULL, 'ELTRA 500 cc', '14.8', 'CADENA FRAGA MARIA TERESA', 'cadena05680@gmail.com', '0400762977001', 'IMBABURA IBARRA SAGRARIO ARTURO HIDALGO Y LATACUNGA', '0986837523', '04', '71.45', '0', NULL, '71.45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(813, '2023-10-25 20:52:09', '821', '24e5665860e3dc43e452a3989655d81e82', NULL, '2', '', NULL, '2510202301040082997400120010010000008211234567817.xml', NULL, '2510202301040082997400120010010000008211234567817', NULL, NULL, NULL, 'HAMMER 500 gr', '37.2', 'REINA YAZAN MARILSA ENCARNACION', 'marilsareina@hotmail.com', '0401338181001', 'CARCHI MIRA MIRA PRINCIPAL', '0983611124', '04', '315', '0', NULL, '315', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(814, '2023-10-25 20:55:58', '822', '2a08fb0d69aa30ed2ef9509f1ea44fe972', NULL, '2', '', NULL, '2510202301040082997400120010010000008221234567812.xml', NULL, '2510202301040082997400120010010000008221234567812', NULL, NULL, NULL, 'HAMMER 500 gr', '62', 'CEVALLOS MENA INES ELENA', 'ineselena.cev72@gmail.com', '0401068291001', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITE Y CUATRO DE MAYO', '09801712', '04', '423', '0', NULL, '423', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(815, '2023-10-25 20:59:39', '823', '2da2067a06891a63f43e220f31bd678062', NULL, '2', '', NULL, '2510202301040082997400120010010000008231234567818.xml', NULL, '2510202301040082997400120010010000008231234567818', NULL, NULL, NULL, 'COSAGRIN 80 Kg', '24.5', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '274.6', '0', NULL, '274.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(816, '2023-10-30 14:24:35', '824', '242c795bd02e438bf430fdfb24c53ec462', NULL, '2', '', NULL, '3010202301040082997400120010010000008241234567814.xml', NULL, '3010202301040082997400120010010000008241234567814', NULL, NULL, NULL, 'ELTRA LITRO', '84.9', 'YANEZ IMBAQUINGO JOSE GONZALO', 'gonzaloyanez148@hotmail.com', '1002331682001', 'CARCHI ESPEJO SAN ISIDRO CALLE 24 DE MAYO', '0989423713', '04', '84.9', '0', NULL, '84.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(817, '2023-11-01 14:52:30', '825', '2929bf6726cf6797256112d66956c6fd42', NULL, '2', '', NULL, '0111202301040082997400120010010000008251234567811.xml', NULL, '0111202301040082997400120010010000008251234567811', NULL, NULL, NULL, 'ANTRACOL 400 Gr', '7.6', 'ESPAÃ‘A ENRIQUEZ KEVIN ESTEBAN', 'kevinespaa744@hotmail.es', '0401878665', 'CARCHI ESPEJO INGUEZA', '0999112849', '05', '83', '0', NULL, '83', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(818, '2023-11-01 15:38:16', '826', '2295bdbc06d56423b012a9ecea3adcf3e2', NULL, '2', '', NULL, '0111202301040082997400120010010000008261234567815.xml', NULL, '0111202301040082997400120010010000008261234567815', NULL, NULL, NULL, 'PROFICURA 750 Gr', '17', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '155.3', '0', NULL, '155.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(819, '2023-11-01 17:21:07', '827', '2c774ba3771c70c419fe1ce8eb0d50fc82', NULL, '2', '', NULL, '0111202301040082997400120010010000008271234567810.xml', NULL, '0111202301040082997400120010010000008271234567810', NULL, NULL, NULL, 'CORAZA 750 Gr', '9.95', 'REINA YAZAN MARILSA ENCARNACION', 'marilsareina@hotmail.com', '0401338181001', 'CARCHI MIRA MIRA PRINCIPAL', '0983611124', '04', '110.85', '0', NULL, '110.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(820, '2023-11-01 17:44:34', '828', '2ccb63077c95153980f604bb79374fb832', NULL, '2', '', NULL, '0111202301040082997400120010010000008281234567816.xml', NULL, '0111202301040082997400120010010000008281234567816', NULL, NULL, NULL, 'FIJAFIJ PLUS 500 cc', '5.5', 'CISNEROS FRIAS DIANA ALICIA', 'cisnerosfriasalicia@gmail.com', '1002281960001', 'IMBABUR IBARRA EL SAGRARIO ', '0993203433', '04', '5.5', '0', NULL, '5.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(821, '2023-11-01 17:48:47', '829', '25f283c74bf187c30ecbbb3aef07c2cd42', NULL, '2', '', NULL, '0111202301040082997400120010010000008291234567811.xml', NULL, '0111202301040082997400120010010000008291234567811', NULL, NULL, NULL, 'FIJAFIJ PLUS 500 cc', '5.7', 'CISNEROS FRIAS DIANA ALICIA', 'cisnerosfriasalicia@gmail.com', '1002281960001', 'IMBABUR IBARRA EL SAGRARIO ', '0993203433', '04', '379.85', '0', NULL, '379.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(822, '2023-11-01 17:53:00', '830', '284cabeeccaab9639e3d9aa7ce4a3ddc02', NULL, '2', '', NULL, '0111202301040082997400120010010000008301234567817.xml', NULL, '0111202301040082997400120010010000008301234567817', NULL, NULL, NULL, 'SEAWEED FLUID LITRO', '150.5', 'CISNEROS FRIAS DIANA ALICIA', 'cisnerosfriasalicia@gmail.com', '1002281960001', 'IMBABUR IBARRA EL SAGRARIO ', '0993203433', '04', '577.1', '0', NULL, '577.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(823, '2023-11-01 17:55:03', '831', '24e2d6d05575145ebaf394e9811ec5be42', NULL, '2', '', NULL, '0111202301040082997400120010010000008311234567812.xml', NULL, '0111202301040082997400120010010000008311234567812', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '108', 'CISNEROS FRIAS DIANA ALICIA', 'cisnerosfriasalicia@gmail.com', '1002281960001', 'IMBABUR IBARRA EL SAGRARIO ', '0993203433', '04', '489.2', '0', NULL, '489.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(824, '2023-11-01 18:03:34', '832', '243bc1e5116439b2774ae0548b65bed792', NULL, '2', '', NULL, '0111202301040082997400120010010000008321234567818.xml', NULL, '0111202301040082997400120010010000008321234567818', NULL, NULL, NULL, 'SOLL 500 gr', '31.5', 'REINA YAZAN MARILSA ENCARNACION', 'marilsareina@hotmail.com', '0401338181001', 'CARCHI MIRA MIRA PRINCIPAL', '0983611124', '04', '313.8', '0', NULL, '313.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(825, '2023-11-01 18:28:40', '833', '28d64fc99675fa909bccba1ed26c571ca2', NULL, '2', '', NULL, '0111202301040082997400120010010000008331234567813.xml', NULL, '0111202301040082997400120010010000008331234567813', NULL, NULL, NULL, 'THALA LITRO', '90.6', 'CABASCANGO POZO NELSON BLADIMIR', 'blady-playguitar@hotmail.com', '1721585287', 'QUITO', '0992577086', '05', '304.9', '0', NULL, '304.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(826, '2023-11-02 14:06:45', '834', '288c27af3991b4d7b240d879040dfb3ce2', NULL, '2', '', NULL, '0211202301040082997400120010010000008341234567813.xml', NULL, '0211202301040082997400120010010000008341234567813', NULL, NULL, NULL, 'DISFOL PH 125 cc', '1.8', 'TRUJILLO ERAZO GILBER GEOVANNY', 'gilbertrujillo74@hotmail.com', '0401120142001', 'CARCHI ESPEJO LA LIBERTAD', '0967218715', '04', '1.8', '0', NULL, '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(827, '2023-11-02 14:11:26', '835', '294412ea1a565df872df66d461c847de82', NULL, '2', '', NULL, '0211202301040082997400120010010000008351234567819.xml', NULL, '0211202301040082997400120010010000008351234567819', NULL, NULL, NULL, 'DESNUKADOR 250 cc', '7.6', 'TRUJILLO ERAZO GILBER GEOVANNY', 'gilbertrujillo74@hotmail.com', '0401120142001', 'CARCHI ESPEJO LA LIBERTAD', '0967218715', '04', '543.7', '0', NULL, '543.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(828, '2023-11-02 14:15:31', '836', '2e319e673bc8bcdd67aff5810145fb61b2', NULL, '2', '', NULL, '0211202301040082997400120010010000008361234567814.xml', NULL, '0211202301040082997400120010010000008361234567814', NULL, NULL, NULL, 'HAMMER 500 gr', '62', 'TRUJILLO ERAZO GILBER GEOVANNY', 'gilbertrujillo74@hotmail.com', '0401120142001', 'CARCHI ESPEJO LA LIBERTAD', '0967218715', '04', '434.2', '0', NULL, '434.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(829, '2023-11-02 14:59:07', '837', '22ed9c34cf553d5483eda8e82512e8d6e2', NULL, '2', '', NULL, '0211202301040082997400120010010000008371234567811.xml', NULL, '0211202301040082997400120010010000008371234567811', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '28.8', 'POZO GUAMIALAMA WILSON PABLO', 'pabloguamialamapozo@gmail.com', '0401819685001', 'CARCHI ESPEJO SAN ISIDRO INGUEZA', '0939368522', '04', '143.3', '0', NULL, '143.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(830, '2023-11-07 14:05:52', '838', '2c5b18a44ea8138e7e50700a0d35e19d12', NULL, '2', '', NULL, '0711202301040082997400120010010000008381234567818.xml', NULL, '0711202301040082997400120010010000008381234567818', NULL, NULL, NULL, 'Sultrivet de 20 ml', '5', 'MENESES NENGER MARIA ISABEL', 'maisabel1961@holmail.com', '0400642609', 'CARCHI ESPEJO SAN ISIDRO SANTA ROSA', '0980318042', '05', '5', '0', NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(831, '2023-11-07 14:10:41', '839', '228d7773e7a59186045d81ca5b0eb469d2', NULL, '2', '', NULL, '0711202301040082997400120010010000008391234567813.xml', NULL, '0711202301040082997400120010010000008391234567813', NULL, NULL, NULL, 'Sultrivet de 20 ml', '10', 'MENESES NENGER MARIA ISABEL', 'maisabel1961@holmail.com', '0400642609', 'CARCHI ESPEJO SAN ISIDRO SANTA ROSA', '0980318042', '05', '157.7', '0', NULL, '157.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(832, '2023-11-08 19:39:45', '840', '28d1f060b44ac49c4bf745c0eb4872f1f2', NULL, '2', '', NULL, '0811202301040082997400120010010000008401234567813.xml', NULL, '0811202301040082997400120010010000008401234567813', NULL, NULL, NULL, 'B Plex de 100 ml.', '7.8', 'REINA RECALDE CARLOS ALEXANDER', 'alexitoreina92@gmail.com', '0401615455001', 'CARCHI ESPEJO SAN ISIDRO BARRIO NORTE', '0988111577', '04', '31.1', '0', NULL, '31.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(833, '2023-11-09 16:46:37', '841', '28d4eb8e414efbc45c196e4fa63e5363f2', NULL, '2', '', NULL, '0911202301040082997400120010010000008411234567813.xml', NULL, '0911202301040082997400120010010000008411234567813', NULL, NULL, NULL, 'ENGEO 250 cc', '43', 'MENESES NENGER MARIA ISABEL', 'maisabel1961@holmail.com', '0400642609', 'CARCHI ESPEJO SAN ISIDRO SANTA ROSA', '0980318042', '05', '67.18', '0', NULL, '67.18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(834, '2023-11-10 17:57:29', '842', '2e8edc876f7540bacf98c99434283812d2', NULL, '2', '', NULL, '1011202301040082997400120010010000008421234567811.xml', NULL, '1011202301040082997400120010010000008421234567811', NULL, NULL, NULL, 'CORAZA 750 Gr', '184.5', 'REINA RECALDE CARLOS ALEXANDER', 'alexitoreina92@gmail.com', '0401615455001', 'CARCHI ESPEJO SAN ISIDRO BARRIO NORTE', '0988111577', '04', '514.7', '0', NULL, '514.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(835, '2023-11-10 18:21:19', '843', '25dc7efc4951af7a35d588cd303d6b0ec2', NULL, '2', '', NULL, '1011202301040082997400120010010000008431234567817.xml', NULL, '1011202301040082997400120010010000008431234567817', NULL, NULL, NULL, 'ANTOR LITRO', '47.1', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '567.3', '0', NULL, '567.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(836, '2023-11-10 18:30:28', '844', '2aa734527534a2287fe9ffbe1d589a7282', NULL, '2', '', NULL, '1011202301040082997400120010010000008441234567812.xml', NULL, '1011202301040082997400120010010000008441234567812', NULL, NULL, NULL, 'FIJAFIJ PLUS 500 cc', '5.7', 'MENESES NENGER MARIA ISABEL', 'maisabel1961@holmail.com', '0400642609', 'CARCHI ESPEJO SAN ISIDRO SANTA ROSA', '0980318042', '05', '71.1', '0', NULL, '71.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(837, '2023-11-10 18:33:39', '845', '26b96556762f81262aa4ef38a398196502', NULL, '2', '', NULL, '1011202301040082997400120010010000008451234567818.xml', NULL, '1011202301040082997400120010010000008451234567818', NULL, NULL, NULL, 'HAMMER 500 gr', '48', 'CISNEROS FRIAS DIANA ALICIA', 'cisnerosfriasalicia@gmail.com', '1002281960001', 'IMBABUR IBARRA EL SAGRARIO ', '0993203433', '04', '478', '0', NULL, '478', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(838, '2023-11-10 18:42:44', '846', '219d5a11d2b4ba33344ce574f1888a85f2', NULL, '2', '', NULL, '1011202301040082997400120010010000008461234567813.xml', NULL, '1011202301040082997400120010010000008461234567813', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '105', 'CEVALLOS MENA INES ELENA', 'ineselena.cev72@gmail.com', '0401068291001', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITE Y CUATRO DE MAYO', '09801712', '04', '507.6', '0', NULL, '507.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(839, '2023-11-10 18:44:21', '847', '20255116cdbe79528af152c8fa1f719612', NULL, '2', '', NULL, '1011202301040082997400120010010000008471234567819.xml', NULL, '1011202301040082997400120010010000008471234567819', NULL, NULL, NULL, 'HAMMER 500 gr', '55.8', 'HUASCALAY GUEVARA ANGEL HUMBERTO', 'angelhuascalay@hotmail.com', '1704359197', 'QUITO SAN JOSE DE MORAN CALDERON', '0987575999', '05', '157.5', '0', NULL, '157.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(840, '2023-11-10 18:47:56', '848', '2b5d60c30bb2ea207f91037ade6fe7f302', NULL, '2', '', NULL, '1011202301040082997400120010010000008481234567814.xml', NULL, '1011202301040082997400120010010000008481234567814', NULL, NULL, NULL, 'ANTOR LITRO', '15.7', 'TARAPUES ACIENCIO NAYELI ESPERANZA', 'nayeli21t@gmail.com', '0401961735', 'CARCHI ESPEJO SAN ISIDRO CHITACASPI', '0967394057', '05', '241.15', '0', NULL, '241.15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(841, '2023-11-11 10:57:41', '849', '22d167461c3e09cdfd5d43990072743722', NULL, '2', '', NULL, '1111202301040082997400120010010000008491234567814.xml', NULL, '1111202301040082997400120010010000008491234567814', NULL, NULL, NULL, 'BREAK THRU LITRO', '33.9', 'MENDEZ POZO NANCY CECILIA', 'mendezpozonancy09@gmail.con', '0401243472001', 'CARCHI ESPEJO SAN ISIDRO  ESMERALDAS', '0985691646', '04', '651.6', '0', NULL, '651.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(842, '2023-11-11 11:02:22', '850', '2eb1c33e0f296ed3375bcacce973d28042', NULL, '2', '', NULL, '1111202301040082997400120010010000008501234567811.xml', NULL, '1111202301040082997400120010010000008501234567811', NULL, NULL, NULL, 'THALA 250 cc', '15.4', 'TAIMAL CARLOS RAMIRO', 'taimalcarlos@gmail.com', '0400585303001', 'CARCHI ESPEJO LA LIBERTAD ELOY ALFARO', '0980895822', '04', '63.4', '0', NULL, '63.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(843, '2023-11-14 11:56:32', '851', '23416511026c57d785ab6d794f5e4c0672', NULL, '2', '', NULL, '1411202301040082997400120010010000008511234567819.xml', NULL, '1411202301040082997400120010010000008511234567819', NULL, NULL, NULL, 'MOSKATHION 500 Gr', '25.6', 'CARLOSAMA UVIDIA SEGUNDO UBINO', 'ubinocarlosama53@gmail.com', '0400443891', 'CARCHI ESPEJO INGUEZA', '0959429370', '05', '71.8', '0', NULL, '71.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(844, '2023-11-14 11:59:44', '852', '2e2c98b2c21d4d5f4f273563f1bf33b7c2', NULL, '2', '', NULL, '1411202301040082997400120010010000008521234567814.xml', NULL, '1411202301040082997400120010010000008521234567814', NULL, NULL, NULL, 'COSAGRIN 80 Kg', '68.6', 'CARLOSAMA UVIDIA SEGUNDO UBINO', 'ubinocarlosama53@gmail.com', '0400443891', 'CARCHI ESPEJO INGUEZA', '0959429370', '05', '295.7', '0', NULL, '295.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(845, '2023-11-16 22:16:53', '853', '2db8968fd1d5ec3e870c727a1c97de16a2', NULL, '2', '', NULL, '1611202301040082997400120010010000008531234567819.xml', NULL, '1611202301040082997400120010010000008531234567819', NULL, NULL, NULL, 'Sultrivet   de 100 ml', '13', 'POZO CORAL LUIS GERMAN', 'pozo77luis@gmail.com', '0401296983', 'CARCHI ESPEJO SAN SIDRO', '0994888339', '05', '116.02', '0', NULL, '116.02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(846, '2023-11-24 20:00:26', '854', '2f4f90fe2151f1ec8ed467b52639982e32', NULL, '2', '', NULL, '2411202301040082997400120010010000008541234567819.xml', NULL, '2411202301040082997400120010010000008541234567819', NULL, NULL, NULL, 'HAMMER 500 gr', '12.4', 'POZO CORAL LUIS GERMAN', 'pozo77luis@gmail.com', '0401296983', 'CARCHI ESPEJO SAN SIDRO', '0994888339', '05', '132.5', '0', NULL, '132.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(847, '2023-11-24 20:46:13', '855', '28c3b34fa5170b381f86e6b163760cf6b2', NULL, '2', '', NULL, '2411202301040082997400120010010000008551234567814.xml', NULL, '2411202301040082997400120010010000008551234567814', NULL, NULL, NULL, 'FITORAZ 500 gr', '17.6', 'REINA RECALDE CARLOS ALEXANDER', 'alexitoreina92@gmail.com', '0401615455001', 'CARCHI ESPEJO SAN ISIDRO BARRIO NORTE', '0988111577', '04', '186.5', '0', NULL, '186.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(848, '2023-11-24 20:50:42', '856', '28a37bc178b1a6ec5ad4aa7e9e86c762b2', NULL, '2', '', NULL, '2411202301040082997400120010010000008561234567811.xml', NULL, '2411202301040082997400120010010000008561234567811', NULL, NULL, NULL, 'FIJAFIJ  PLUS LITRO', '9.3', 'REINA RECALDE CARLOS ALEXANDER', 'alexitoreina92@gmail.com', '0401615455001', 'CARCHI ESPEJO SAN ISIDRO BARRIO NORTE', '0988111577', '04', '159.85', '0', NULL, '159.85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(849, '2023-11-24 20:55:51', '857', '246532e0291cd597e99eda3700d2d786e2', NULL, '2', '', NULL, '2411202301040082997400120010010000008571234567815.xml', NULL, '2411202301040082997400120010010000008571234567815', NULL, NULL, NULL, 'HAMMER 500 gr', '12', 'MENESES NENGER MARIA ISABEL', 'maisabel1961@holmail.com', '0400642609', 'CARCHI ESPEJO SAN ISIDRO SANTA ROSA', '0980318042', '05', '114.2', '0', NULL, '114.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(850, '2023-11-24 21:02:05', '858', '231cdc2baf027cc33804c66654e31db6b2', NULL, '2', '', NULL, '2411202301040082997400120010010000008581234567810.xml', NULL, '2411202301040082997400120010010000008581234567810', NULL, NULL, NULL, 'ONLY Ca  10 Kg', '276', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '885.5', '0', NULL, '885.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(851, '2023-11-26 13:51:11', '859', '2c5c1b657e830e76153f9cdb1cf7b8e442', NULL, '2', '', NULL, '2611202301040082997400120010010000008591234567815.xml', NULL, '2611202301040082997400120010010000008591234567815', NULL, NULL, NULL, 'MOJAVE LITRO', '142', 'REINA RECALDE CARLOS ALEXANDER', 'alexitoreina92@gmail.com', '0401615455001', 'CARCHI ESPEJO SAN ISIDRO BARRIO NORTE', '0988111577', '04', '552.1', '0', NULL, '552.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(852, '2023-11-26 13:56:59', '860', '2de2e6d235f1ae234672b7b0edc94eb7f2', NULL, '2', '', NULL, '2611202301040082997400120010010000008601234567810.xml', NULL, '2611202301040082997400120010010000008601234567810', NULL, NULL, NULL, 'CORAZA 750 Gr', '123', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '460.1', '0', NULL, '460.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(853, '2023-11-26 14:02:43', '861', '2ba0766da6cbeb87b32945e1d5d441f332', NULL, '2', '', NULL, '2611202301040082997400120010010000008611234567816.xml', NULL, '2611202301040082997400120010010000008611234567816', NULL, NULL, NULL, 'CORAZA 750 Gr', '184.5', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '654', '0', NULL, '654', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(854, '2023-11-26 14:14:15', '862', '2d7362ee54dc918ce711265602c32c70d2', NULL, '2', '', NULL, '2611202301040082997400120010010000008621234567811.xml', NULL, '2611202301040082997400120010010000008621234567811', NULL, NULL, NULL, 'SHIELDS UP 250 cc', '127.2', 'REINA YAZAN MARILSA ENCARNACION', 'marilsareina@hotmail.com', '0401338181001', 'CARCHI MIRA MIRA PRINCIPAL', '0983611124', '04', '526.6', '0', NULL, '526.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(855, '2023-11-26 14:29:53', '863', '2d4c82cc8091e0550b00732c6f00636802', NULL, '2', '', NULL, '2611202301040082997400120010010000008631234567817.xml', NULL, '2611202301040082997400120010010000008631234567817', NULL, NULL, NULL, 'COSAGRIN 80 Kg', '58.8', 'CEVALLOS MENA INES ELENA', 'ineselena.cev72@gmail.com', '0401068291001', 'CARCHI ESPEJO SAN ISIDRO CALLE VEITE Y CUATRO DE MAYO', '09801712', '04', '610.5', '0', NULL, '610.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(856, '2023-11-26 14:36:06', '864', '28006fb37206aebcfdc5ca7607dd4b04b2', NULL, '2', '', NULL, '2611202301040082997400120010010000008641234567812.xml', NULL, '2611202301040082997400120010010000008641234567812', NULL, NULL, NULL, 'STIMULUS DESARROLLO LITRO', '52.5', 'POZO CORAL LUIS GERMAN', 'pozo77luis@gmail.com', '0401296983', 'CARCHI ESPEJO SAN SIDRO', '0994888339', '05', '464.7', '0', NULL, '464.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(857, '2023-11-28 16:07:54', '865', '2dbed97205b03aef76f2738e3522b5b182', NULL, '2', '', NULL, '2811202301040082997400120010010000008651234567817.xml', NULL, '2811202301040082997400120010010000008651234567817', NULL, NULL, NULL, 'SEAWEER POWDER 180 Gr', '7.2', 'QUINTEROS NARVAEZ KLEVER ALFONSO', 'kleverquinteros1990@gmail.com', '0401896758001', 'CARCHI ESPEJO SAN ISIDRO CALLE BOLIVAR', '0967121851', '04', '27', '0', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(858, '2023-11-28 19:09:34', '866', '252e8de2f0d6c9114b8ff07723198d4842', NULL, '2', '', NULL, '2811202301040082997400120010010000008661234567812.xml', NULL, '2811202301040082997400120010010000008661234567812', NULL, NULL, NULL, 'MOJAVE LITRO', '113.6', 'QUINTEROS NARVAEZ KLEVER ALFONSO', 'kleverquinteros1990@gmail.com', '0401896758001', 'CARCHI ESPEJO SAN ISIDRO CALLE BOLIVAR', '0967121851', '04', '508.8', '0', NULL, '508.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(859, '2023-11-28 19:24:06', '867', '22fac8de04a0270acb3f6665557eacb3b2', NULL, '2', '', NULL, '2811202301040082997400120010010000008671234567818.xml', NULL, '2811202301040082997400120010010000008671234567818', NULL, NULL, NULL, 'PERMITT LITRO', '128.5', 'REINA YAZAN MARILSA ENCARNACION', 'marilsareina@hotmail.com', '0401338181001', 'CARCHI MIRA MIRA PRINCIPAL', '0983611124', '04', '347.7', '0', NULL, '347.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(860, '2023-11-28 19:28:06', '868', '2bc531ead557ca640d0c01c0c8220e7182', NULL, '2', '', NULL, '2811202301040082997400120010010000008681234567813.xml', NULL, '2811202301040082997400120010010000008681234567813', NULL, NULL, NULL, 'PROFICURA 750 Gr', '17', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '179.7', '0', NULL, '179.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO'),
(861, '2023-11-30 19:53:35', '869', '27ca40710dee1a6910d290f2f25c21cab2', NULL, '2', '', NULL, '3011202301040082997400120010010000008691234567816.xml', NULL, '3011202301040082997400120010010000008691234567816', NULL, NULL, NULL, 'HAMMER 500 gr', '12.4', 'ZAMBRANO POZO MILTON GERMAN', 'mzmbrano646464@gmail.com', '0400737862001', 'CARCHI ESPEJO SAN ISIDRO SUCRE', '0980447546', '04', '148.9', '0', NULL, '148.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'factura', 'COMPLETADO');

-- --------------------------------------------------------

--
-- Table structure for table `configuraciones`
--

CREATE TABLE `configuraciones` (
  `porcentaje_venta` varchar(200) DEFAULT NULL,
  `foto_representativa` varchar(200) DEFAULT NULL,
  `precio_peso` varchar(200) DEFAULT NULL,
  `precio_distancia` varchar(200) DEFAULT NULL,
  `precio_nivel` varchar(200) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `velocidad_promedio` varchar(200) DEFAULT NULL,
  `costo_minimo_transporte` varchar(200) DEFAULT NULL,
  `radio_tierra` varchar(200) NOT NULL,
  `nombre_empresa` varchar(200) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `servidor_email` varchar(200) DEFAULT NULL,
  `email_empresa` varchar(200) DEFAULT NULL,
  `ambito` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `configuraciones`
--

INSERT INTO `configuraciones` (`porcentaje_venta`, `foto_representativa`, `precio_peso`, `precio_distancia`, `precio_nivel`, `id`, `velocidad_promedio`, `costo_minimo_transporte`, `radio_tierra`, `nombre_empresa`, `web`, `servidor_email`, `email_empresa`, `ambito`) VALUES
('3', 'foto_perfilizada4d6cf154d0fdd4dedf911513620e5cee.png', '0.45', '0.5', '0.15', 1, '40', '3.59', '6378.137', 'Compra Agil', 'https://compragil.com', 'mail.compragil.com', 'compragil@compragil.com', 'produccion');

-- --------------------------------------------------------

--
-- Table structure for table `configuraciones_dominio`
--

CREATE TABLE `configuraciones_dominio` (
  `id` int(11) NOT NULL,
  `id_user` varchar(200) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` varchar(200) DEFAULT NULL,
  `name_server1` varchar(200) DEFAULT NULL,
  `name_server2` varchar(200) DEFAULT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `id_soporte` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `configuraciones_dominio`
--

INSERT INTO `configuraciones_dominio` (`id`, `id_user`, `fecha`, `estado`, `name_server1`, `name_server2`, `tipo`, `id_soporte`) VALUES
(1, '279', '2023-01-23 22:23:18', 'Iniciado', '11212', '12121', 'nameserver', NULL),
(2, '279', '2023-01-23 22:24:03', 'Iniciado', '23', '232', 'nameserver', NULL),
(3, '279', '2023-01-23 22:24:36', 'Iniciado', '3423', '234', 'nameserver', NULL),
(4, '279', '2023-01-23 22:24:58', 'Iniciado', '1222', '12', 'nameserver', NULL),
(5, '279', '2023-01-23 22:26:16', 'Iniciado', '2324', '3123', 'nameserver', NULL),
(6, '2', '2023-01-24 05:57:18', 'Iniciado', '2', '2', 'nameserver', NULL),
(7, '369', '2023-01-24 06:06:49', 'Iniciado', 'edd', 'zwewewd', 'nameserver', NULL),
(8, '369', '2023-01-24 21:47:03', 'Iniciado', 'ns9.my-control-panel.com.', 'ns10.my-control-panel.com.', 'nameserver', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `configuracion_cuenta`
--

CREATE TABLE `configuracion_cuenta` (
  `id` int(11) NOT NULL,
  `iduser` varchar(200) DEFAULT NULL,
  `plan` varchar(200) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contenido_trabajos`
--

CREATE TABLE `contenido_trabajos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `foto` varchar(200) DEFAULT NULL,
  `valor` varchar(200) DEFAULT NULL,
  `id_trabajador` varchar(200) DEFAULT NULL,
  `estado` varchar(200) NOT NULL DEFAULT 'No Pagado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contenido_trabajos`
--

INSERT INTO `contenido_trabajos` (`id`, `nombre`, `descripcion`, `fecha`, `foto`, `valor`, `id_trabajador`, `estado`) VALUES
(1, '666', '666', '2021-09-24 21:32:16', 'img_2479bbe184ad22e889886634abd016b2.jpg', '666', '1', ''),
(2, 'hhh', 'hhh', '2021-10-19 22:13:53', 'img_526d2c355f3d3817d65a467a79a46e7a.jpg', '', '5', ''),
(3, 'uuuu', 'yyyuyu', '2021-10-19 22:14:55', 'img_7f83f756ba58f3d81c25f3bb989d7bf5.jpg', '', '5', 'Pagado'),
(4, 'kkk', 'kkk', '2021-10-19 22:32:20', 'img_b8393ac9966d7fc15a69f10dacf9a916.jpg', '', '5', 'No Pagado');

-- --------------------------------------------------------

--
-- Table structure for table `cuentas_bancarias_factu`
--

CREATE TABLE `cuentas_bancarias_factu` (
  `id` int(11) NOT NULL,
  `iduser` varchar(200) DEFAULT NULL,
  `nombre_cuenta` varchar(200) DEFAULT NULL,
  `tipo_cuenta` varchar(200) DEFAULT NULL,
  `numero_cuenta` varchar(200) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `titular_cuenta` varchar(200) DEFAULT NULL,
  `estatus` varchar(200) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cuentas_por_cobrar`
--

CREATE TABLE `cuentas_por_cobrar` (
  `id` int(11) NOT NULL,
  `iduser` varchar(200) DEFAULT NULL,
  `secuencial` varchar(200) DEFAULT NULL,
  `id_producto` varchar(200) DEFAULT NULL,
  `id_cliente` varchar(200) DEFAULT NULL,
  `fecha_inicio` varchar(200) DEFAULT NULL,
  `fecha_final` varchar(200) DEFAULT NULL,
  `fecha_creacion` datetime NOT NULL DEFAULT current_timestamp(),
  `debito` varchar(200) DEFAULT NULL,
  `credito` varchar(200) DEFAULT NULL,
  `pdf` varchar(200) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `clave_acceso` varchar(200) DEFAULT NULL,
  `sistema` varchar(200) DEFAULT NULL,
  `configurarcion` varchar(200) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cuentas_por_cobrar`
--

INSERT INTO `cuentas_por_cobrar` (`id`, `iduser`, `secuencial`, `id_producto`, `id_cliente`, `fecha_inicio`, `fecha_final`, `fecha_creacion`, `debito`, `credito`, `pdf`, `descripcion`, `clave_acceso`, `sistema`, `configurarcion`) VALUES
(1, '2', '1', '1', '1', '2023-06-08', '2023-07-01', '2023-06-08 19:37:28', '1', '0', '', 'N', NULL, NULL, 'NO'),
(2, '2', '2', '1', '1', '2023-10-29', '2023-10-29', '2023-10-29 16:58:51', '0', '0', '', '', NULL, NULL, 'SI');

-- --------------------------------------------------------

--
-- Table structure for table `depositos_facturacion`
--

CREATE TABLE `depositos_facturacion` (
  `id` int(11) NOT NULL,
  `iduser` varchar(200) DEFAULT NULL,
  `idcliente` varchar(200) DEFAULT NULL,
  `tipo_deposito` varchar(200) DEFAULT NULL,
  `monto_deposito` varchar(200) DEFAULT NULL,
  `detalles_deposito` varchar(200) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `foto` varchar(200) DEFAULT NULL,
  `qr_img` varchar(200) DEFAULT NULL,
  `qr_contenido` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `desplegable`
--

CREATE TABLE `desplegable` (
  `id` int(11) NOT NULL,
  `id_usuario` varchar(200) NOT NULL,
  `cantidad` varchar(200) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_admin` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `direccion`
--

CREATE TABLE `direccion` (
  `nombre` varchar(200) NOT NULL,
  `id` int(11) NOT NULL,
  `id_ciudad` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entregas`
--

CREATE TABLE `entregas` (
  `id` int(11) NOT NULL,
  `idp` int(200) DEFAULT NULL,
  `ide` int(200) DEFAULT NULL,
  `idr` int(200) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entrega_bodega`
--

CREATE TABLE `entrega_bodega` (
  `id` int(11) NOT NULL,
  `idp` int(200) DEFAULT NULL,
  `ide` int(200) DEFAULT NULL,
  `idr` int(200) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `estrellas`
--

CREATE TABLE `estrellas` (
  `id` int(11) NOT NULL,
  `id_usuario` varchar(200) DEFAULT NULL,
  `id_producto` varchar(200) DEFAULT NULL,
  `estrella` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `estrellas`
--

INSERT INTO `estrellas` (`id`, `id_usuario`, `id_producto`, `estrella`) VALUES
(1, '2', '4', '2'),
(2, '2', '27', '4'),
(3, '2', '28', '3'),
(4, '2', '26', '5'),
(5, '2', '29', '1'),
(6, '2', '48', '5'),
(7, '277', '138', '5'),
(8, '277', '149', '4'),
(9, '277', '153', '3'),
(10, '277', '155', '5'),
(11, '277', '156', '1'),
(12, '277', '163', '5'),
(13, '279', '182', '4'),
(14, '279', '186', '2'),
(15, '277', '180', '5'),
(16, '277', '174', '5'),
(17, '277', '187', '4'),
(18, '283', '190', '5'),
(19, '277', '191', '5'),
(20, '277', '193', '5'),
(21, '277', '190', '1'),
(22, '288', '138', '4'),
(23, '289', '201', '5'),
(24, '279', '202', '5'),
(25, '279', '166', '5'),
(26, '279', '178', '5'),
(27, '279', '184', '5'),
(28, '277', '205', '5'),
(29, '298', '206', '5'),
(30, '279', '209', '3'),
(31, '302', '206', '3'),
(32, '313', '212', '5'),
(33, '334', '220', '2'),
(34, '279', '1706', '5'),
(35, '279', '1724', '2'),
(36, '279', '1747', '5'),
(37, '277', '1755', '5'),
(38, '277', '1759', '5'),
(39, '277', '1763', '4'),
(40, '277', '1762', '3'),
(41, '279', '1764', '3'),
(42, '279', '1769', '5'),
(43, '277', '1793', '5');

-- --------------------------------------------------------

--
-- Table structure for table `eventos`
--

CREATE TABLE `eventos` (
  `nombre` varchar(200) DEFAULT NULL,
  `idproducto` int(200) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `foto` varchar(300) DEFAULT NULL,
  `subcategorias` int(30) DEFAULT NULL,
  `estatus` int(11) NOT NULL DEFAULT 1,
  `fecha_producto` timestamp NOT NULL DEFAULT current_timestamp(),
  `categorias` int(20) DEFAULT NULL,
  `estado` varchar(200) NOT NULL DEFAULT 'Producto Estandar',
  `ciudad` varchar(200) DEFAULT NULL,
  `provincia` varchar(200) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `porcentaje` varchar(200) DEFAULT NULL,
  `qr` varchar(200) DEFAULT NULL,
  `ganancias_totales` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facturacion_historial_cuentas_por_cobrar`
--

CREATE TABLE `facturacion_historial_cuentas_por_cobrar` (
  `id` int(11) NOT NULL,
  `id_cuentas_cobrar` varchar(200) DEFAULT NULL,
  `id_user` varchar(200) DEFAULT NULL,
  `valor_agregado` varchar(200) DEFAULT NULL,
  `concepto` varchar(200) DEFAULT NULL,
  `pdf` varchar(200) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facturacion_historial_cuentas_por_cobrar`
--

INSERT INTO `facturacion_historial_cuentas_por_cobrar` (`id`, `id_cuentas_cobrar`, `id_user`, `valor_agregado`, `concepto`, `pdf`, `fecha`) VALUES
(1, '2', '2', '1', 'MONTO INICIO', NULL, '2023-10-29 16:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `ganacias_netas_1804843900_leben_t`
--

CREATE TABLE `ganacias_netas_1804843900_leben_t` (
  `ganacias_netas` varchar(200) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `garantia_producto`
--

CREATE TABLE `garantia_producto` (
  `id` int(11) NOT NULL,
  `idp` varchar(200) DEFAULT NULL,
  `codigo_qr` varchar(200) DEFAULT NULL,
  `img_qr` varchar(200) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `img_producto` varchar(200) DEFAULT NULL,
  `estado` varchar(200) NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `historial_recorrido_transportista`
--

CREATE TABLE `historial_recorrido_transportista` (
  `id` int(11) NOT NULL,
  `id_transportista` varchar(200) DEFAULT NULL,
  `viaje` varchar(200) DEFAULT NULL,
  `longitud` varchar(200) NOT NULL,
  `latitud` varchar(200) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `metros_punto_cero` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `historial_retiros`
--

CREATE TABLE `historial_retiros` (
  `id` int(11) NOT NULL,
  `id_retiro` varchar(200) DEFAULT NULL,
  `id_admin` varchar(200) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `img_retiro` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `img_add_transporte`
--

CREATE TABLE `img_add_transporte` (
  `id` int(11) NOT NULL,
  `id_pedido` varchar(200) DEFAULT NULL,
  `img_pedido` varchar(200) DEFAULT NULL,
  `fecha_transporte` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `img_producto`
--

CREATE TABLE `img_producto` (
  `id` int(11) NOT NULL,
  `id_user` varchar(200) DEFAULT NULL,
  `idp` varchar(200) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `informacion_proceso`
--

CREATE TABLE `informacion_proceso` (
  `id` int(11) NOT NULL,
  `id_compra` int(11) DEFAULT NULL,
  `id_vende` int(11) DEFAULT NULL,
  `direccion_vende` varchar(200) DEFAULT NULL,
  `direccion_compra` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventario`
--

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL,
  `iduser` varchar(200) DEFAULT NULL,
  `cantidad` varchar(200) DEFAULT NULL,
  `motivo` varchar(200) DEFAULT NULL,
  `detalles_extras` varchar(200) DEFAULT NULL,
  `idproducto` varchar(200) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `cantidad_new` varchar(200) DEFAULT NULL,
  `accion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventario`
--

INSERT INTO `inventario` (`id`, `iduser`, `cantidad`, `motivo`, `detalles_extras`, `idproducto`, `fecha`, `cantidad_new`, `accion`) VALUES
(1, '2', '1', 'VENTA SISTEMA', 'FACTURA', '1', '2023-03-04 20:32:37', '14', 'DISMINUIR'),
(2, '2', '1', 'VENTA SISTEMA', 'FACTURA', '2', '2023-03-04 20:39:47', '11', 'DISMINUIR'),
(3, '2', '1', 'VENTA SISTEMA', 'FACTURA', '1', '2023-03-04 20:39:48', '13', 'DISMINUIR'),
(4, '2', '1', 'VENTA SISTEMA', 'FACTURA', '2', '2023-03-04 21:13:24', '10', 'DISMINUIR');

-- --------------------------------------------------------

--
-- Table structure for table `notas_clientes`
--

CREATE TABLE `notas_clientes` (
  `id` int(11) NOT NULL,
  `iduser` varchar(200) DEFAULT NULL,
  `id_cliente` varchar(200) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `nota` text DEFAULT NULL,
  `estatus` varchar(200) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id` int(11) NOT NULL,
  `estado` varchar(200) DEFAULT NULL,
  `fecha_inicio` timestamp NOT NULL DEFAULT current_timestamp(),
  `usuario` varchar(200) DEFAULT NULL,
  `plan` varchar(200) DEFAULT NULL,
  `imagen_pago` varchar(200) DEFAULT NULL,
  `numero_unico` varchar(200) DEFAULT NULL,
  `fecha_final` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pagos_proveedores`
--

CREATE TABLE `pagos_proveedores` (
  `id` int(11) NOT NULL,
  `idp` varchar(200) DEFAULT NULL,
  `id_proveedor` varchar(200) DEFAULT NULL,
  `img_pago` varchar(200) DEFAULT NULL,
  `fecha_pago` timestamp NOT NULL DEFAULT current_timestamp(),
  `modo_pago` varchar(200) DEFAULT NULL,
  `numero_unico` varchar(200) DEFAULT NULL,
  `id_venta` int(11) DEFAULT NULL,
  `id_admin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_incorrecta`
--

CREATE TABLE `password_incorrecta` (
  `id` int(11) NOT NULL,
  `idusuario` varchar(200) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_incorrecta`
--

INSERT INTO `password_incorrecta` (`id`, `idusuario`, `fecha`) VALUES
(7, '2', '2022-04-21 23:38:47'),
(9, '', '2023-01-08 14:23:38'),
(10, '279', '2023-01-30 05:01:30'),
(11, '279', '2023-01-30 05:02:00'),
(12, '385', '2023-02-13 20:10:58'),
(13, '393', '2023-02-18 18:48:55');

-- --------------------------------------------------------

--
-- Table structure for table `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `id_producto` varchar(200) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `pregunta` text DEFAULT NULL,
  `id_pregunta` varchar(200) DEFAULT NULL,
  `id_responde` varchar(200) DEFAULT NULL,
  `respuesta` text DEFAULT NULL,
  `fecha_respuesta` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `preguntas`
--

INSERT INTO `preguntas` (`id`, `id_producto`, `fecha`, `pregunta`, `id_pregunta`, `id_responde`, `respuesta`, `fecha_respuesta`) VALUES
(1, '27', '2022-04-25 04:22:44', 'ttttt\r\n', '2', '2', '', ''),
(2, '27', '2022-04-25 04:24:48', 'ttttt\r\n', '2', '2', '´´´´´´´´´´´´´´pp', '26-04-2022 22:04:26'),
(3, '27', '2022-04-25 04:26:23', 'ttttt\r\n', '2', '2', '', ''),
(4, '27', '2022-04-25 04:26:27', 'ttttt\r\n', '2', '2', '', ''),
(5, '27', '2022-04-25 04:26:51', 'ttttt\r\n', '2', '2', '', ''),
(6, '27', '2022-04-25 04:27:06', 'ttttt\r\n', '2', '2', '', ''),
(7, '27', '2022-04-25 04:28:18', 'ttttt\r\n', '2', '2', '', ''),
(8, '27', '2022-04-25 04:28:20', 'ttttt\r\n', '2', '2', '', ''),
(9, '27', '2022-04-25 04:29:25', 'ttttt\r\n', '2', '2', '', ''),
(10, '27', '2022-04-25 04:29:36', 'ttttt\r\n', '2', '2', '', ''),
(11, '27', '2022-04-25 04:30:28', 'ttttt\r\n', '2', '2', '', ''),
(12, '27', '2022-04-25 04:30:46', 'tttttoo\r\n\r\n', '2', '2', '', ''),
(13, '27', '2022-04-25 04:56:20', 'alex\r\n', '2', '2', '', ''),
(14, '', '2022-04-26 22:11:06', 'hola mundo', '2', '', '', ''),
(15, '', '2022-04-26 22:13:10', 'hola mundo', '2', '', '', ''),
(16, '28', '2022-04-26 22:13:25', 'hola mundo', '2', '2', '', ''),
(17, '28', '2022-04-26 22:13:41', 'hola mundo', '2', '2', '', ''),
(18, '28', '2022-04-26 22:13:58', 'hola mundo', '2', '2', '', ''),
(19, '28', '2022-04-26 22:13:59', 'hola mundo', '2', '2', '', ''),
(20, '28', '2022-04-26 22:14:00', 'hola mundo', '2', '2', '', ''),
(21, '28', '2022-04-26 22:14:01', 'hola mundo', '2', '2', '', ''),
(22, '26', '2022-04-30 00:35:04', 'este libro no tiene paginas ?', '2', '2', '', ''),
(23, '29', '2022-05-03 23:08:48', 'hola', '2', '2', '', ''),
(24, '48', '2022-06-08 03:05:32', 'Estas zapatillas son guays.', '2', '2', 'si', '07-06-2022 22:06:06'),
(25, '48', '2022-07-13 14:50:37', 'encerio?', '2', '2', '', ''),
(26, '138', '2022-07-14 03:18:09', 'Hacen envios a nivel Nacional ?', '277', '277', 'Si', '13-07-2022 22:07:26'),
(27, '149', '2022-07-21 15:48:44', 'Hi', '277', '277', '', ''),
(28, '156', '2022-07-21 16:15:10', 'Hola', '277', '277', '', ''),
(29, '186', '2022-08-09 21:13:09', 'Hola mundo ', '279', '279', '', ''),
(30, '187', '2022-08-10 22:50:01', 'hola mundo', '277', '277', '', ''),
(31, '188', '2022-08-19 00:15:54', 'hola mundo', '279', '279', '', ''),
(32, '188', '2022-08-19 02:35:51', 'hola pinche mundo\r\n', '279', '279', 'hola mundo', '17-10-2022 12:10:00'),
(33, '190', '2022-09-16 06:24:34', 'Este articulo esta disponible ? ', '279', '283', '', ''),
(34, '201', '2022-10-10 07:07:33', 'hola mundo ', '289', '289', '', ''),
(35, '191', '2022-10-17 17:00:13', 'Hola mundo ', '279', '277', '', ''),
(36, '199', '2022-10-17 17:10:34', 'hola mundo\r\n', '279', '284', '', ''),
(37, '202', '2022-10-17 17:44:10', 'Las facturas incluyen la firma electronica ? ', '279', '279', '', ''),
(38, '174', '2022-10-17 18:02:22', 'Hola mundo ', '279', '277', '', ''),
(39, '205', '2022-10-24 17:54:22', 'Hola mundo', '277', '279', '', ''),
(40, '209', '2022-10-31 06:28:22', 'Que no mas contiene este sistema ? ', '279', '279', '-La creacion del xml .\r\n-Firmado del comprobante.\r\n-Envio al SRI para su autorizacion.\r\n-Creacion del XML autorizado.\r\n-Creacion del PDF.\r\n-Envio de los comprobantes (XML y PDF) al correo del usuario final.\r\n* El codigo fuente es adaptable a un sistema web de preferencia que este realizado en php.\r\n\r\n*No es un sistema, es unicamente el modulo de facturacion electronica que para su funcionamiento debe estar implementado a un sistema.\r\n\r\n*El codigo esta desarrollado en php nativo sin ningun framework.\r\n\r\n*Esta desarrollado en PHP V7.', '31-10-2022 01:10:01'),
(41, '209', '2022-10-31 06:30:03', '-La creacion del xml . -Firmado del comprobante. -Envio al SRI para su autorizacion. -Creacion del XML autorizado. -Creacion del PDF. -Envio de los comprobantes (XML y PDF) al correo del usuario final. * El codigo fuente es adaptable a un sistema web de preferencia que este realizado en php. *No es un sistema, es unicamente el modulo de facturacion electronica que para su funcionamiento debe estar implementado a un sistema. *El codigo esta desarrollado en php nativo sin ningun framework. *Esta desarrollado en PHP V7.', '279', '279', '', ''),
(42, '206', '2022-11-02 19:28:30', 'prueba', '302', '298', '', ''),
(43, '209', '2022-11-04 21:35:42', 'Estoy tratando de comprar pero no me deja otro medio de compra?', '308', '279', '', ''),
(44, '212', '2022-11-15 22:24:49', 'https://youtu.be/TLGBieGbLXc', '279', '279', '', ''),
(45, '212', '2022-11-15 22:25:01', 'Video  https://youtu.be/TLGBieGbLXc', '279', '279', '', ''),
(46, '213', '2022-11-20 18:27:56', '-La creacion del xml . \r\n-Firmado del comprobante. \r\n-Envio al SRI para su autorizacion. \r\n-Creacion del XML autorizado.\r\n -Creacion del PDF. -Envio de los comprobantes (XML y PDF) al correo del usuario final. \r\n* El codigo fuente es adaptable a un sistema web de preferencia que este realizado en php. \r\n*El codigo esta desarrollado en php nativo sin ningun framework. *Esta desarrollado en PHP V7.\r\n* Inisio de sesion \r\n*Registro de usuarios\r\n*Tablero de Administrador\r\n*Subir productos.\r\n*Registro de usuarios e inicio de sesion. \r\n\r\n', '279', '279', '', ''),
(47, '1706', '2023-01-30 07:44:09', 'hola mundo', '279', '279', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `producto_venta`
--

CREATE TABLE `producto_venta` (
  `nombre` varchar(200) NOT NULL,
  `idproducto` int(200) NOT NULL,
  `codigo_extra` varchar(200) DEFAULT NULL,
  `cantidad` varchar(200) DEFAULT NULL,
  `proveedor` varchar(200) DEFAULT NULL,
  `sistema` varchar(200) DEFAULT NULL,
  `porcen_hotmart` varchar(200) DEFAULT NULL,
  `estado_hotmart` varchar(200) DEFAULT NULL,
  `estado_colaboracion` varchar(200) DEFAULT NULL,
  `pdf_contrato` varchar(200) DEFAULT NULL,
  `porcentaje_colaboracion` varchar(200) DEFAULT NULL,
  `fecha_inicio_colaboracion` varchar(200) DEFAULT NULL,
  `fecha_final_colaboracion` varchar(200) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `foto` varchar(300) DEFAULT NULL,
  `subcategorias` int(30) DEFAULT NULL,
  `estatus` int(11) NOT NULL DEFAULT 1,
  `fecha_producto` timestamp NOT NULL DEFAULT current_timestamp(),
  `categorias` int(20) DEFAULT NULL,
  `likes` int(200) DEFAULT NULL,
  `estado` varchar(200) NOT NULL DEFAULT 'Producto Estandar',
  `ciudad` varchar(200) DEFAULT NULL,
  `provincia` varchar(200) DEFAULT NULL,
  `pais` varchar(200) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `precio_costo` varchar(200) DEFAULT NULL,
  `direccion_vende` varchar(200) DEFAULT NULL,
  `General` varchar(200) NOT NULL DEFAULT 'No Entregado',
  `descripcion_punto` varchar(200) DEFAULT NULL,
  `porcentaje` varchar(200) DEFAULT NULL,
  `qr` varchar(200) DEFAULT NULL,
  `contenido_qr` varchar(200) DEFAULT NULL,
  `tipo_digital` varchar(200) DEFAULT NULL,
  `identificador_trabajo` varchar(200) DEFAULT NULL,
  `tipo_servicio` varchar(200) DEFAULT NULL,
  `fecha_sorteo` varchar(50) NOT NULL DEFAULT current_timestamp(),
  `hora_sorteo` varchar(50) DEFAULT NULL,
  `ganancias_totales` varchar(200) DEFAULT NULL,
  `cantidad_boletos` varchar(100) DEFAULT NULL,
  `fecha_evento` varchar(50) DEFAULT NULL,
  `hora_evento` varchar(50) DEFAULT NULL,
  `tipo_evento` varchar(50) DEFAULT NULL,
  `cantidad_entradas` varchar(50) DEFAULT NULL,
  `meta_recaudacion` int(50) DEFAULT NULL,
  `marca` varchar(200) DEFAULT NULL,
  `forma` varchar(200) DEFAULT NULL,
  `embalaje` varchar(200) DEFAULT NULL,
  `tipo_asiento` varchar(200) DEFAULT NULL,
  `envios` varchar(200) DEFAULT NULL,
  `meses_suscripcion` int(50) DEFAULT NULL,
  `path` varchar(200) DEFAULT NULL,
  `garantia` varchar(200) DEFAULT NULL,
  `aspecto_fisico` varchar(200) DEFAULT NULL,
  `ficha_tecnica` varchar(200) DEFAULT NULL,
  `video_explicativo` varchar(200) DEFAULT NULL,
  `id_producto_sugerido` varchar(200) DEFAULT NULL,
  `incluye_envio` varchar(200) DEFAULT NULL,
  `utilizar_transporte_guibis` varchar(200) DEFAULT NULL,
  `direccion_1` varchar(200) DEFAULT NULL,
  `longitud` varchar(200) DEFAULT NULL,
  `latitud` varchar(200) DEFAULT NULL,
  `ip_1` varchar(200) DEFAULT NULL,
  `cargador_1` varchar(200) DEFAULT NULL,
  `peso_1` varchar(200) DEFAULT NULL,
  `marca_1` varchar(200) DEFAULT NULL,
  `tamano_1` varchar(200) DEFAULT NULL,
  `almacenamiento_1` varchar(200) DEFAULT NULL,
  `cat1sub44_enlace_descarga` varchar(200) DEFAULT NULL,
  `cat_1_sub_44_timpo_licencia` varchar(200) DEFAULT NULL,
  `enlace_web_demo` varchar(200) DEFAULT NULL,
  `cat1sub44_desarrolador` varchar(200) DEFAULT NULL,
  `peso` varchar(200) DEFAULT NULL,
  `autor_libro_2` varchar(200) DEFAULT NULL,
  `enlace_digital_2` varchar(200) DEFAULT NULL,
  `introduccion_libro_2` varchar(200) DEFAULT NULL,
  `talla_3` varchar(200) DEFAULT NULL,
  `color_3` varchar(200) DEFAULT NULL,
  `peso_3` varchar(200) DEFAULT NULL,
  `material_4` varchar(200) DEFAULT NULL,
  `medidas_4` varchar(200) DEFAULT NULL,
  `peso_4` varchar(200) DEFAULT NULL,
  `material_5` varchar(200) DEFAULT NULL,
  `medidas5` varchar(200) DEFAULT NULL,
  `posicionado_5` varchar(200) DEFAULT NULL,
  `color_5` varchar(200) DEFAULT NULL,
  `peso_5` varchar(200) DEFAULT NULL,
  `material_6` varchar(200) DEFAULT NULL,
  `medidas_6` varchar(200) DEFAULT NULL,
  `marca_6` varchar(200) DEFAULT NULL,
  `color_6` varchar(200) DEFAULT NULL,
  `peso_6` varchar(200) DEFAULT NULL,
  `perecederos_7` varchar(200) DEFAULT NULL,
  `expiracion_7` varchar(200) DEFAULT NULL,
  `peso_7` varchar(200) DEFAULT NULL,
  `enlace_9` varchar(200) DEFAULT NULL,
  `introducion_9` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `producto_venta`
--

INSERT INTO `producto_venta` (`nombre`, `idproducto`, `codigo_extra`, `cantidad`, `proveedor`, `sistema`, `porcen_hotmart`, `estado_hotmart`, `estado_colaboracion`, `pdf_contrato`, `porcentaje_colaboracion`, `fecha_inicio_colaboracion`, `fecha_final_colaboracion`, `descripcion`, `id_usuario`, `foto`, `subcategorias`, `estatus`, `fecha_producto`, `categorias`, `likes`, `estado`, `ciudad`, `provincia`, `pais`, `precio`, `precio_costo`, `direccion_vende`, `General`, `descripcion_punto`, `porcentaje`, `qr`, `contenido_qr`, `tipo_digital`, `identificador_trabajo`, `tipo_servicio`, `fecha_sorteo`, `hora_sorteo`, `ganancias_totales`, `cantidad_boletos`, `fecha_evento`, `hora_evento`, `tipo_evento`, `cantidad_entradas`, `meta_recaudacion`, `marca`, `forma`, `embalaje`, `tipo_asiento`, `envios`, `meses_suscripcion`, `path`, `garantia`, `aspecto_fisico`, `ficha_tecnica`, `video_explicativo`, `id_producto_sugerido`, `incluye_envio`, `utilizar_transporte_guibis`, `direccion_1`, `longitud`, `latitud`, `ip_1`, `cargador_1`, `peso_1`, `marca_1`, `tamano_1`, `almacenamiento_1`, `cat1sub44_enlace_descarga`, `cat_1_sub_44_timpo_licencia`, `enlace_web_demo`, `cat1sub44_desarrolador`, `peso`, `autor_libro_2`, `enlace_digital_2`, `introduccion_libro_2`, `talla_3`, `color_3`, `peso_3`, `material_4`, `medidas_4`, `peso_4`, `material_5`, `medidas5`, `posicionado_5`, `color_5`, `peso_5`, `material_6`, `medidas_6`, `marca_6`, `color_6`, `peso_6`, `perecederos_7`, `expiracion_7`, `peso_7`, `enlace_9`, `introducion_9`) VALUES
('DIFENICC 100 cc ', 1, '', '13', '1', 'facturacion', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DIFENICC 100 cc ', 2, 'img_producto.png', NULL, 1, '2023-03-05 01:22:22', NULL, NULL, 'Producto Estandar', NULL, NULL, NULL, 1, '1', NULL, 'No Entregado', NULL, NULL, 'guibis879ac158039a0dfb0d622c17817ffb7d.png', 'dba20f8d699b6695fec9273732eb959e', NULL, 'producto', NULL, '2023-03-04 20:22:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('SCORE LITRO', 2, '', '10', '1', 'facturacion', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SCORE LITRO', 2, 'img_producto.png', NULL, 1, '2023-03-05 01:37:25', NULL, NULL, 'Producto Estandar', NULL, NULL, NULL, 1.5, '1', NULL, 'No Entregado', NULL, NULL, 'guibis5c22dd80a1de7a271e5514376a2d17a3.png', '85e30b7b42c2cdbffb27add8ad6db6ea', NULL, 'producto', NULL, '2023-03-04 20:37:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1596', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `proformas`
--

CREATE TABLE `proformas` (
  `id` int(11) NOT NULL,
  `secuencial` varchar(200) DEFAULT NULL,
  `id_emisor` varchar(200) NOT NULL,
  `id_receptor` varchar(200) DEFAULT NULL,
  `id_producto` varchar(200) NOT NULL,
  `nombre_producto` varchar(200) NOT NULL,
  `valor_unidad` varchar(200) NOT NULL,
  `descripcion_producto` text NOT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `detalle_extra` varchar(200) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `cantidad_producto` varchar(200) NOT NULL,
  `iva_producto` varchar(200) NOT NULL,
  `precio_neto` varchar(200) NOT NULL,
  `precio_p_incluido_iva` varchar(200) NOT NULL,
  `nombres_receptor` varchar(200) DEFAULT NULL,
  `numero_identidad_receptor` varchar(200) DEFAULT NULL,
  `tipo_identificacion` varchar(200) DEFAULT NULL,
  `email_reeptor` varchar(200) DEFAULT NULL,
  `direccion_reeptor` varchar(200) DEFAULT NULL,
  `celular_receptor` varchar(200) DEFAULT NULL,
  `codigo_factura` varchar(200) DEFAULT NULL,
  `tipo_ambiente` varchar(200) DEFAULT NULL,
  `formas_pago` varchar(200) DEFAULT NULL,
  `codigos_impuestos` varchar(200) DEFAULT NULL,
  `descuento` varchar(200) DEFAULT NULL,
  `incluye_iva` varchar(200) DEFAULT NULL,
  `efectivo` varchar(200) DEFAULT NULL,
  `vuelto` varchar(200) DEFAULT NULL,
  `iva_frontend` varchar(200) DEFAULT NULL,
  `subtotal_frontend` varchar(200) DEFAULT NULL,
  `estado_financiero` varchar(200) DEFAULT NULL,
  `limpiar_consola` varchar(200) DEFAULT NULL,
  `clave_acceso` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `iduser` varchar(200) DEFAULT NULL,
  `razon_social` varchar(200) DEFAULT NULL,
  `tipo_identificacion` varchar(200) DEFAULT NULL,
  `identificacion` varchar(200) DEFAULT NULL,
  `descripcion_proveedor` varchar(200) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `celular` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `qr` varchar(200) DEFAULT NULL,
  `qr_contenido` varchar(200) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `estatus` varchar(200) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proveedor`
--

INSERT INTO `proveedor` (`id`, `iduser`, `razon_social`, `tipo_identificacion`, `identificacion`, `descripcion_proveedor`, `direccion`, `celular`, `email`, `fecha`, `qr`, `qr_contenido`, `foto`, `estatus`) VALUES
(1, '2', 'FERTISA', '04', '1004095632001', 'ninguna', 'EN LA CASA', '1004095632', 'esteban.martinez@upec.edu.ec', '2023-03-04 20:21:39', 'guibise31b5b80e2b8d5204ed5fb81a310cdc6.png', 'b29777d8bbc4f208af44baecb6ea70d2', 'proveedor.png', '1');

-- --------------------------------------------------------

--
-- Table structure for table `provincia`
--

CREATE TABLE `provincia` (
  `id` int(100) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `provincia`
--

INSERT INTO `provincia` (`id`, `nombre`) VALUES
(0, 'Seleccione la Provincia'),
(1, 'Tungurahua'),
(2, 'Pichincha'),
(4, 'Azuay'),
(5, 'Bolívar'),
(6, 'Cañar'),
(7, 'Carchi'),
(8, 'Chimborazo'),
(9, 'Cotopaxi'),
(10, 'Imbabura'),
(11, 'Loja'),
(12, 'Santo Domingo de los Tsachilas'),
(13, 'El Oro'),
(14, 'Esmeraldas'),
(15, 'Guayas'),
(16, 'Los Rios'),
(17, 'Manabí'),
(18, 'Santa Elena'),
(19, 'Morona Santiago'),
(20, 'Napo'),
(21, 'Orellana'),
(22, 'Pastaza'),
(23, 'Sucumbios'),
(24, 'Zamora Chinchipe'),
(25, 'Galapagos');

-- --------------------------------------------------------

--
-- Table structure for table `pruebas`
--

CREATE TABLE `pruebas` (
  `pdf` varchar(400) DEFAULT NULL,
  `estado` varchar(200) NOT NULL DEFAULT 'Estandar',
  `id_interno` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `punto_venta`
--

CREATE TABLE `punto_venta` (
  `id` int(11) NOT NULL,
  `razon_social_punto` varchar(200) DEFAULT NULL,
  `tipo_identificacion_punto_emision` varchar(200) DEFAULT NULL,
  `identificacion_punto_emision` varchar(200) DEFAULT NULL,
  `direccion_punto_emision` varchar(200) DEFAULT NULL,
  `celular_punto_emision` varchar(200) DEFAULT NULL,
  `email_punto_emision` varchar(200) DEFAULT NULL,
  `contabilidad` varchar(200) DEFAULT NULL,
  `transacciones` varchar(200) DEFAULT NULL,
  `documentos` varchar(200) DEFAULT NULL,
  `clientes` varchar(200) DEFAULT NULL,
  `bancos` varchar(200) DEFAULT NULL,
  `iduser` varchar(200) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `qr_img` varchar(200) DEFAULT NULL,
  `qr_contenido` varchar(200) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `transporte` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recargas_leben`
--

CREATE TABLE `recargas_leben` (
  `id_recarga` int(11) NOT NULL,
  `id_usuario` varchar(200) DEFAULT NULL,
  `img_recarga` varchar(200) DEFAULT NULL,
  `codigo_unico_recarga` varchar(200) DEFAULT NULL,
  `cantidad_recarga` varchar(200) DEFAULT NULL,
  `fecha_recarga` timestamp NOT NULL DEFAULT current_timestamp(),
  `qr_recarga` varchar(200) DEFAULT NULL,
  `contendioqr` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registro`
--

CREATE TABLE `registro` (
  `id` int(11) NOT NULL,
  `id_entra` int(200) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(200) DEFAULT NULL,
  `navegador` varchar(200) DEFAULT NULL,
  `mac` varchar(200) DEFAULT NULL,
  `accion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registro`
--

INSERT INTO `registro` (`id`, `id_entra`, `fecha`, `ip`, `navegador`, `mac`, `accion`) VALUES
(1, 1, '2021-07-18 06:32:51', '186.46.175.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'UNKNOWN', 'ingreso'),
(2, 1, '2021-07-18 06:35:15', '186.46.175.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'UNKNOWN', 'ingreso'),
(3, 1, '2021-07-19 03:47:08', '186.42.107.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'UNKNOWN', 'ingreso'),
(4, 1, '2021-07-19 03:47:13', '186.42.107.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'UNKNOWN', 'ingreso'),
(5, 1, '2021-07-19 03:47:21', '186.42.107.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'UNKNOWN', 'ingreso'),
(6, 2, '2021-07-26 07:29:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '74-DF-BF-38-77-81', 'ingreso'),
(7, 2, '2021-07-26 07:30:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '74-DF-BF-38-77-81', 'ingreso'),
(8, 2, '2021-07-26 07:31:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', '74-DF-BF-38-77-81', 'ingreso'),
(9, 2, '2021-08-16 04:48:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(10, 0, '2021-08-16 04:48:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(11, 1, '2021-08-16 04:53:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(12, 2, '2021-08-25 07:20:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(13, 2, '2021-08-25 07:20:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(14, 2, '2021-08-25 07:20:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(15, 2, '2021-08-25 08:14:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(16, 2, '2021-08-25 08:14:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(17, 2, '2021-08-25 08:16:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(18, 2, '2021-08-25 08:22:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(19, 2, '2021-08-25 08:22:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(20, 2, '2021-08-25 08:25:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(21, 2, '2021-08-26 06:28:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(22, 2, '2021-08-26 08:44:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(23, 2, '2021-08-26 08:51:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(24, 2, '2021-09-01 07:01:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(25, 2, '2021-09-01 07:01:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(26, 2, '2021-09-06 14:17:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(27, 2, '2021-09-06 14:18:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(28, 2, '2021-09-06 14:19:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(29, 2, '2021-09-06 14:19:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(30, 2, '2021-09-06 14:20:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(31, 1, '2021-09-06 14:21:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(32, 2, '2021-09-06 14:24:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(33, 1, '2021-09-06 14:25:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(34, 1, '2021-09-06 14:25:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(35, 1, '2021-09-06 14:25:15', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(36, 1, '2021-09-06 14:25:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(37, 1, '2021-09-07 02:23:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(38, 1, '2021-09-07 02:24:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(39, 2, '2021-09-07 02:26:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(40, 2, '2021-09-07 02:26:23', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(41, 2, '2021-09-07 02:26:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(42, 2, '2021-09-07 02:26:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(43, 2, '2021-09-07 02:27:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(44, 2, '2021-09-07 02:27:11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(45, 1, '2021-09-07 02:27:18', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(46, 1, '2021-09-07 02:27:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(47, 1, '2021-09-07 02:27:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(48, 1, '2021-09-07 02:27:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(49, 1, '2021-09-07 02:27:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(50, 1, '2021-09-07 02:28:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(51, 1, '2021-09-07 02:28:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(52, 2, '2021-09-07 02:31:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(53, 2, '2021-09-07 02:31:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(54, 1, '2021-09-07 02:32:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(55, 1, '2021-09-07 02:33:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(56, 1, '2021-09-07 02:34:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(57, 1, '2021-09-07 02:38:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(58, 1, '2021-09-07 02:38:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(59, 1, '2021-09-08 02:56:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(60, 1, '2021-09-08 02:57:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(61, 1, '2021-09-08 02:58:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(62, 1, '2021-09-08 02:58:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(63, 1, '2021-09-08 03:36:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(64, 1, '2021-09-08 03:36:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(65, 1, '2021-09-08 03:37:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(66, 1, '2021-09-08 03:39:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(67, 1, '2021-09-08 03:39:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(68, 1, '2021-09-08 03:40:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(69, 1, '2021-09-08 15:32:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '74-DF-BF-38-77-81', 'ingreso'),
(70, 1, '2021-09-14 03:52:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(71, 1, '2021-09-14 03:53:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(72, 1, '2021-09-14 03:53:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(73, 1, '2021-09-14 03:56:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(74, 1, '2021-09-14 03:57:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(75, 1, '2021-09-14 03:59:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(76, 1, '2021-09-14 04:01:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(77, 1, '2021-09-24 03:25:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(78, 1, '2021-09-24 03:29:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(79, 1, '2021-09-24 03:29:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(80, 1, '2021-09-24 03:39:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(81, 1, '2021-09-24 03:40:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(82, 1, '2021-09-24 03:40:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(83, 1, '2021-09-24 03:40:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(84, 1, '2021-09-24 03:44:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(85, 1, '2021-09-24 04:03:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(86, 1, '2021-09-24 04:04:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(87, 1, '2021-09-24 04:07:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(88, 1, '2021-09-24 04:07:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(89, 1, '2021-09-24 04:07:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(90, 1, '2021-09-24 04:11:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(91, 1, '2021-09-24 04:11:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(92, 1, '2021-09-24 04:11:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(93, 1, '2021-09-24 04:12:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(94, 1, '2021-09-24 04:12:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(95, 1, '2021-09-24 04:13:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(96, 1, '2021-09-24 04:22:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(97, 1, '2021-09-24 04:23:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(98, 1, '2021-09-24 04:31:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(99, 1, '2021-09-24 04:31:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(100, 1, '2021-09-24 04:31:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(101, 1, '2021-09-24 04:32:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(102, 1, '2021-09-24 04:32:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(103, 1, '2021-09-24 04:39:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(104, 1, '2021-09-24 06:19:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(105, 1, '2021-09-24 06:20:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(106, 1, '2021-09-24 06:47:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(107, 1, '2021-09-24 06:56:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(108, 1, '2021-09-24 06:58:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(109, 1, '2021-09-24 07:06:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(110, 1, '2021-09-24 07:07:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(111, 1, '2021-09-24 07:08:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(112, 1, '2021-09-24 07:09:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(113, 1, '2021-09-24 07:12:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(114, 1, '2021-09-24 07:13:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(115, 1, '2021-09-24 07:21:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(116, 1, '2021-09-25 02:18:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(117, 1, '2021-09-25 02:18:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(118, 1, '2021-09-25 02:19:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(119, 1, '2021-09-25 02:27:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(120, 1, '2021-09-25 02:28:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(121, 1, '2021-09-25 02:28:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(122, 1, '2021-09-25 02:32:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(123, 1, '2021-09-25 02:35:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(124, 1, '2021-09-25 02:36:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(125, 1, '2021-09-25 02:36:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(126, 1, '2021-09-25 02:36:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(127, 1, '2021-09-25 02:41:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(128, 1, '2021-09-25 02:41:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(129, 1, '2021-09-25 02:42:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(130, 1, '2021-09-25 02:43:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(131, 1, '2021-09-25 02:43:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(132, 1, '2021-09-25 02:44:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(133, 1, '2021-09-25 02:44:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(134, 1, '2021-09-25 02:45:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(135, 5, '2021-09-25 02:48:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(136, 5, '2021-09-25 02:50:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(137, 5, '2021-09-25 02:50:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(138, 5, '2021-09-25 02:53:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(139, 5, '2021-09-25 02:54:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(140, 5, '2021-09-25 02:58:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(141, 5, '2021-09-25 02:58:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(142, 5, '2021-09-25 02:59:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(143, 5, '2021-09-25 02:59:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(144, 1, '2021-09-28 03:38:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(145, 1, '2021-09-28 03:38:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(146, 1, '2021-09-28 03:39:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(147, 1, '2021-09-28 03:43:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(148, 1, '2021-09-28 03:43:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(149, 1, '2021-09-28 03:44:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(150, 1, '2021-09-28 03:58:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(151, 1, '2021-09-28 04:39:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(152, 1, '2021-09-28 04:42:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(153, 5, '2021-10-14 05:45:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(154, 5, '2021-10-14 05:46:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(155, 5, '2021-10-14 05:47:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(156, 5, '2021-10-14 05:48:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', '74-DF-BF-38-77-81', 'ingreso'),
(157, 1, '2021-10-19 04:16:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(158, 1, '2021-10-19 04:20:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(159, 1, '2021-10-19 04:20:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(160, 1, '2021-10-19 04:25:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(161, 1, '2021-10-19 04:25:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(162, 1, '2021-10-19 04:27:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(163, 1, '2021-10-19 04:27:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(164, 1, '2021-10-19 04:27:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(165, 1, '2021-10-19 04:36:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(166, 1, '2021-10-19 04:48:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(167, 1, '2021-10-19 04:48:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(168, 1, '2021-10-19 04:48:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(169, 1, '2021-10-19 04:51:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(170, 1, '2021-10-19 04:52:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(171, 1, '2021-10-19 05:07:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(172, 1, '2021-10-19 05:08:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(173, 1, '2021-10-19 05:08:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(174, 0, '2021-10-19 05:08:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(175, 1, '2021-10-19 05:09:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(176, 1, '2021-10-19 05:10:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(177, 1, '2021-10-19 05:11:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(178, 1, '2021-10-19 05:18:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(179, 1, '2021-10-19 05:18:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(180, 1, '2021-10-19 05:19:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(181, 1, '2021-10-19 05:19:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(182, 1, '2021-10-19 05:19:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(183, 1, '2021-10-19 05:19:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(184, 1, '2021-10-19 05:20:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(185, 1, '2021-10-19 05:20:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(186, 1, '2021-10-19 05:21:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(187, 1, '2021-10-19 05:22:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(188, 1, '2021-10-19 05:22:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(189, 1, '2021-10-19 05:22:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(190, 1, '2021-10-19 05:23:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(191, 1, '2021-10-19 05:24:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(192, 1, '2021-10-19 05:25:18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(193, 1, '2021-10-19 05:25:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(194, 1, '2021-10-19 05:27:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(195, 1, '2021-10-19 05:29:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(196, 1, '2021-10-19 05:29:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(197, 1, '2021-10-19 05:29:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(198, 1, '2021-10-19 05:31:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(199, 1, '2021-10-19 05:31:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(200, 1, '2021-10-19 05:32:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(201, 1, '2021-10-19 05:33:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(202, 1, '2021-10-19 05:35:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(203, 1, '2021-10-19 05:36:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(204, 1, '2021-10-19 05:40:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(205, 1, '2021-10-19 05:41:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(206, 5, '2021-10-20 02:48:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(207, 1, '2021-10-20 02:50:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(208, 1, '2021-10-20 02:50:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(209, 1, '2021-10-20 02:51:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(210, 5, '2021-10-20 02:52:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(211, 5, '2021-10-20 02:55:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(212, 5, '2021-10-20 02:55:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(213, 5, '2021-10-20 02:55:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(214, 5, '2021-10-20 02:56:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(215, 5, '2021-10-20 02:56:18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(216, 5, '2021-10-20 02:56:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(217, 5, '2021-10-20 02:57:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(218, 5, '2021-10-20 02:57:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(219, 5, '2021-10-20 02:57:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(220, 5, '2021-10-20 02:58:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(221, 5, '2021-10-20 02:58:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(222, 5, '2021-10-20 03:00:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(223, 5, '2021-10-20 03:00:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(224, 5, '2021-10-20 03:00:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(225, 5, '2021-10-20 03:01:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(226, 5, '2021-10-20 03:02:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(227, 1, '2021-10-20 03:02:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(228, 1, '2021-10-20 03:02:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(229, 5, '2021-10-20 03:03:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(230, 5, '2021-10-20 03:03:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(231, 5, '2021-10-20 03:12:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(232, 5, '2021-10-20 03:13:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(233, 5, '2021-10-20 03:14:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(234, 5, '2021-10-20 03:26:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(235, 5, '2021-10-20 03:27:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(236, 5, '2021-10-20 03:32:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(237, 5, '2021-10-20 03:32:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(238, 1, '2021-10-20 05:29:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(239, 1, '2021-10-20 05:29:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(240, 1, '2021-10-20 06:08:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(241, 1, '2021-10-20 06:08:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(242, 1, '2021-10-20 06:09:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(243, 1, '2021-10-20 06:10:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(244, 1, '2021-10-20 06:15:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(245, 1, '2021-10-20 06:19:18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(246, 1, '2021-10-20 06:20:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(247, 1, '2021-10-20 06:52:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(248, 1, '2021-10-26 05:57:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(249, 1, '2021-10-26 05:57:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(250, 1, '2021-10-27 05:35:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(251, 1, '2021-10-27 05:35:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(252, 1, '2021-10-27 05:45:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(253, 1, '2021-10-27 05:48:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(254, 1, '2021-10-27 05:48:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(255, 1, '2021-10-27 05:48:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(256, 1, '2021-10-27 05:48:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0', '74-DF-BF-38-77-81', 'ingreso'),
(257, 1, '2022-01-07 05:33:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', '74-DF-BF-38-77-81', 'ingreso'),
(258, 1, '2022-01-07 05:43:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', '74-DF-BF-38-77-81', 'ingreso'),
(259, 1, '2022-01-07 05:43:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', '74-DF-BF-38-77-81', 'ingreso'),
(260, 1, '2022-01-07 05:43:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', '74-DF-BF-38-77-81', 'ingreso'),
(261, 1, '2022-01-07 05:47:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', '74-DF-BF-38-77-81', 'ingreso'),
(262, 1, '2022-01-07 05:47:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', '74-DF-BF-38-77-81', 'ingreso'),
(263, 1, '2022-01-07 06:14:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', '74-DF-BF-38-77-81', 'ingreso'),
(264, 1, '2022-01-07 06:15:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', '74-DF-BF-38-77-81', 'ingreso'),
(265, 1, '2022-01-07 06:16:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', '74-DF-BF-38-77-81', 'ingreso'),
(266, 1, '2022-01-22 20:52:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(267, 1, '2022-01-22 20:52:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(268, 1, '2022-01-23 04:20:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(269, 1, '2022-01-23 04:20:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(270, 1, '2022-01-23 04:21:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(271, 1, '2022-01-23 04:28:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(272, 1, '2022-01-23 04:28:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(273, 1, '2022-01-23 04:29:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(274, 1, '2022-01-23 04:29:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(275, 1, '2022-01-23 04:30:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(276, 1, '2022-01-23 04:30:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(277, 1, '2022-01-23 04:32:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(278, 1, '2022-01-23 04:33:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(279, 1, '2022-01-23 04:34:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(280, 1, '2022-01-23 04:58:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(281, 0, '2022-01-23 04:59:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(282, 1, '2022-01-23 05:00:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(283, 1, '2022-01-23 05:11:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(284, 1, '2022-01-23 05:14:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(285, 1, '2022-01-23 05:17:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(286, 1, '2022-01-23 05:17:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(287, 1, '2022-01-23 05:19:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(288, 1, '2022-01-31 04:53:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(289, 1, '2022-01-31 04:53:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(290, 10, '2022-01-31 05:32:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(291, 1, '2022-01-31 05:32:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(292, 1, '2022-01-31 05:34:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '74-DF-BF-38-77-81', 'ingreso'),
(293, 1, '2022-01-31 05:48:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '74-DF-BF-38-77-81', 'ingreso'),
(294, 1, '2022-02-07 00:25:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(295, 1, '2022-02-07 00:25:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(296, 0, '2022-02-07 03:15:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(297, 1, '2022-02-07 03:15:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(298, 1, '2022-02-07 03:15:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(299, 1, '2022-02-07 03:16:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(300, 1, '2022-02-07 03:18:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(301, 1, '2022-02-07 03:20:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(302, 1, '2022-02-07 03:20:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(303, 1, '2022-02-07 03:26:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(304, 1, '2022-02-07 03:30:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '74-DF-BF-38-77-81', 'ingreso'),
(305, 1, '2022-02-21 01:46:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(306, 1, '2022-02-21 01:46:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(307, 1, '2022-02-21 02:07:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(308, 1, '2022-02-21 02:07:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(309, 1, '2022-02-21 02:08:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(310, 1, '2022-02-21 02:08:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(311, 1, '2022-02-21 02:14:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(312, 1, '2022-02-21 02:15:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(313, 1, '2022-02-21 02:16:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(314, 1, '2022-02-21 02:16:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(315, 1, '2022-02-21 02:17:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(316, 1, '2022-02-21 02:17:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(317, 1, '2022-02-21 02:18:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso');
INSERT INTO `registro` (`id`, `id_entra`, `fecha`, `ip`, `navegador`, `mac`, `accion`) VALUES
(318, 1, '2022-02-21 02:19:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(319, 1, '2022-02-21 02:20:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(320, 1, '2022-02-21 02:20:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(321, 1, '2022-02-21 02:21:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(322, 1, '2022-02-21 02:22:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(323, 1, '2022-02-21 02:23:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(324, 1, '2022-02-21 02:24:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(325, 1, '2022-02-21 02:25:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(326, 1, '2022-02-21 02:25:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(327, 1, '2022-02-21 02:28:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'UNKNOWN', 'ingreso'),
(328, 1, '2022-04-07 03:35:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'UNKNOWN', 'ingreso'),
(329, 1, '2022-04-07 03:35:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'UNKNOWN', 'ingreso'),
(330, 1, '2022-04-07 03:36:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'UNKNOWN', 'ingreso'),
(331, 1, '2022-04-07 03:37:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'UNKNOWN', 'ingreso'),
(332, 1, '2022-04-07 03:59:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'UNKNOWN', 'ingreso'),
(333, 2, '2022-04-09 17:18:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'UNKNOWN', 'ingreso'),
(334, 2, '2022-04-09 17:31:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'UNKNOWN', 'ingreso'),
(335, 1, '2022-04-10 21:37:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(336, 1, '2022-04-10 21:38:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(337, 1, '2022-04-10 21:40:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(338, 1, '2022-04-10 21:40:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(339, 1, '2022-04-10 21:40:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(340, 1, '2022-04-10 22:26:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(341, 1, '2022-04-10 22:27:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(342, 1, '2022-04-10 22:30:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(343, 1, '2022-04-10 22:33:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(344, 1, '2022-04-10 22:34:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(345, 1, '2022-04-10 22:34:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(346, 1, '2022-04-10 22:45:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(347, 1, '2022-04-10 22:52:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(348, 1, '2022-04-10 22:52:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(349, 1, '2022-04-10 22:53:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(350, 1, '2022-04-10 22:53:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(351, 1, '2022-04-10 22:55:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(352, 1, '2022-04-11 02:18:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(353, 1, '2022-04-11 02:21:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(354, 1, '2022-04-11 03:43:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'UNKNOWN', 'ingreso'),
(355, 1, '2022-04-13 03:35:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'UNKNOWN', 'ingreso'),
(356, 1, '2022-04-13 03:36:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'UNKNOWN', 'ingreso'),
(357, 1, '2022-04-13 03:36:42', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'UNKNOWN', 'ingreso'),
(358, 1, '2022-04-14 05:07:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'UNKNOWN', 'ingreso'),
(359, 1, '2022-04-14 05:13:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'UNKNOWN', 'ingreso'),
(360, 1, '2022-04-16 03:12:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'UNKNOWN', 'ingreso'),
(361, 1, '2022-04-16 03:15:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'UNKNOWN', 'ingreso'),
(362, 1, '2022-04-16 03:44:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'UNKNOWN', 'ingreso'),
(363, 1, '2022-04-16 04:13:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'UNKNOWN', 'ingreso'),
(364, 1, '2022-04-16 04:14:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'UNKNOWN', 'ingreso'),
(365, 1, '2022-04-16 04:48:47', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'UNKNOWN', 'ingreso'),
(366, 1, '2022-04-16 04:48:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'UNKNOWN', 'ingreso'),
(367, 1, '2022-04-16 17:54:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'UNKNOWN', 'ingreso'),
(368, 1, '2022-04-17 01:17:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 'UNKNOWN', 'ingreso'),
(369, 1, '2022-04-18 21:31:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'UNKNOWN', 'ingreso'),
(370, 1, '2022-04-19 03:29:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'UNKNOWN', 'ingreso'),
(371, 1, '2022-04-19 22:12:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'UNKNOWN', 'ingreso'),
(372, 1, '2022-04-20 15:48:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'UNKNOWN', 'ingreso'),
(373, 1, '2022-04-20 15:50:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 'UNKNOWN', 'ingreso'),
(374, 1, '2022-04-20 16:05:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 'UNKNOWN', 'ingreso'),
(375, 1, '2022-04-20 20:42:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 'UNKNOWN', 'ingreso'),
(376, 1, '2022-04-20 22:32:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 'UNKNOWN', 'ingreso'),
(377, 1, '2022-04-20 22:40:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 'UNKNOWN', 'ingreso'),
(378, 1, '2022-04-23 05:32:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 'UNKNOWN', 'ingreso'),
(379, 1, '2022-04-30 03:09:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 'UNKNOWN', 'ingreso'),
(380, 1, '2022-05-05 01:46:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 'UNKNOWN', 'ingreso'),
(381, 1, '2022-05-05 03:07:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 'UNKNOWN', 'ingreso'),
(382, 1, '2022-05-05 03:55:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 'UNKNOWN', 'ingreso'),
(383, 1, '2022-06-08 05:48:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'UNKNOWN', 'ingreso'),
(384, 2, '2022-06-14 21:43:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:101.0) Gecko/20100101 Firefox/101.0', 'UNKNOWN', 'ingreso'),
(385, 1, '2022-06-14 21:43:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:101.0) Gecko/20100101 Firefox/101.0', 'UNKNOWN', 'ingreso'),
(386, 1, '2022-06-14 21:43:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:101.0) Gecko/20100101 Firefox/101.0', 'UNKNOWN', 'ingreso'),
(387, 1, '2022-06-14 21:43:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:101.0) Gecko/20100101 Firefox/101.0', 'UNKNOWN', 'ingreso'),
(388, 1, '2022-06-14 21:43:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:101.0) Gecko/20100101 Firefox/101.0', 'UNKNOWN', 'ingreso'),
(389, 1, '2022-07-13 18:43:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(390, 1, '2022-07-13 18:43:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(391, 1, '2022-07-13 18:44:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(392, 1, '2022-07-13 19:02:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'UNKNOWN', 'ingreso'),
(393, 1, '2022-07-13 19:02:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'UNKNOWN', 'ingreso'),
(394, 1, '2022-07-14 02:34:34', '186.47.138.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'UNKNOWN', 'ingreso'),
(395, 1, '2022-07-14 02:34:41', '186.47.138.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'UNKNOWN', 'ingreso'),
(396, 1, '2022-07-14 02:35:11', '186.47.138.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'UNKNOWN', 'ingreso'),
(397, 1, '2022-07-14 02:41:33', '186.47.138.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'UNKNOWN', 'ingreso'),
(398, 1, '2022-07-14 03:24:42', '186.47.138.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36', 'UNKNOWN', 'ingreso'),
(399, 1, '2022-07-18 15:35:00', '181.188.201.83', 'Mozilla/5.0 (Linux; Android 11; TECNO LE7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(400, 1, '2022-07-18 15:35:21', '181.188.201.83', 'Mozilla/5.0 (Linux; Android 11; TECNO LE7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(401, 1, '2022-07-18 15:35:31', '181.188.201.83', 'Mozilla/5.0 (Linux; Android 11; TECNO LE7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(402, 1, '2022-07-26 21:59:54', '181.188.201.188', 'Mozilla/5.0 (Linux; Android 11; TECNO LE7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(403, 1, '2022-07-26 21:59:59', '181.188.201.188', 'Mozilla/5.0 (Linux; Android 11; TECNO LE7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(404, 1, '2022-07-27 20:52:21', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(405, 1, '2022-07-27 20:52:46', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(406, 1, '2022-07-27 20:55:21', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(407, 1, '2022-07-27 20:55:22', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(408, 1, '2022-07-27 20:55:25', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(409, 1, '2022-07-27 20:55:34', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(410, 1, '2022-07-27 20:55:44', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(411, 1, '2022-07-27 20:56:53', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(412, 1, '2022-07-27 20:59:05', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(413, 1, '2022-07-27 20:59:29', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(414, 1, '2022-07-27 20:59:49', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(415, 1, '2022-07-27 21:01:31', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(416, 1, '2022-07-27 21:01:36', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(417, 1, '2022-07-27 21:02:33', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(418, 1, '2022-07-27 21:05:10', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(419, 1, '2022-07-27 21:06:28', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(420, 1, '2022-07-27 21:27:14', '181.188.201.215', 'Mozilla/5.0 (Linux; Android 11; TECNO LE7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(421, 1, '2022-07-27 21:27:29', '181.188.201.215', 'Mozilla/5.0 (Linux; Android 11; TECNO LE7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(422, 1, '2022-07-27 21:36:17', '181.188.201.215', 'Mozilla/5.0 (Linux; Android 11; TECNO LE7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(423, 1, '2022-07-27 21:36:20', '181.188.201.215', 'Mozilla/5.0 (Linux; Android 11; TECNO LE7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(424, 1, '2022-07-27 21:52:55', '181.188.201.215', 'Mozilla/5.0 (Linux; Android 11; TECNO LE7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(425, 1, '2022-07-27 22:04:17', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(426, 1, '2022-07-27 22:04:20', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(427, 1, '2022-07-27 22:07:54', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(428, 1, '2022-07-27 22:08:41', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(429, 1, '2022-07-27 22:18:30', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(430, 1, '2022-07-27 22:18:35', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(431, 1, '2022-07-27 22:18:37', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(432, 1, '2022-07-27 22:18:51', '181.188.201.215', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'UNKNOWN', 'ingreso'),
(433, 1, '2022-08-01 19:14:13', '186.42.9.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(434, 1, '2022-08-01 19:14:20', '186.42.9.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(435, 1, '2022-08-03 20:01:05', '186.42.9.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(436, 1, '2022-08-03 20:01:24', '186.42.9.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(437, 0, '2022-08-03 20:50:10', '186.42.9.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(438, 1, '2022-08-04 15:52:36', '186.42.9.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', 'UNKNOWN', 'ingreso'),
(439, 1, '2022-08-04 15:52:38', '186.42.9.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', 'UNKNOWN', 'ingreso'),
(440, 1, '2022-08-09 21:01:42', '186.42.11.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', 'UNKNOWN', 'ingreso'),
(441, 1, '2022-08-09 21:01:45', '186.42.11.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', 'UNKNOWN', 'ingreso'),
(442, 1, '2022-08-09 21:02:06', '186.42.11.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', 'UNKNOWN', 'ingreso'),
(443, 1, '2022-08-09 21:03:53', '186.42.11.47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', 'UNKNOWN', 'ingreso'),
(444, 1, '2022-08-17 03:35:23', '186.47.139.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', 'UNKNOWN', 'ingreso'),
(445, 1, '2022-08-17 04:42:19', '186.47.139.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', 'UNKNOWN', 'ingreso'),
(446, 1, '2022-08-17 04:42:25', '186.47.139.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', 'UNKNOWN', 'ingreso'),
(447, 1, '2022-08-17 04:43:30', '186.47.139.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', 'UNKNOWN', 'ingreso'),
(448, 1, '2022-08-22 19:16:20', '186.42.106.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(449, 1, '2022-08-22 19:16:23', '186.42.106.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(450, 1, '2022-08-22 19:55:57', '186.42.106.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(451, 0, '2022-08-22 22:01:52', '186.42.106.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(452, 1, '2022-08-22 22:02:19', '186.42.106.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(453, 1, '2022-08-22 22:02:47', '186.42.106.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(454, 0, '2022-08-23 00:33:08', '186.42.106.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(455, 1, '2022-08-23 00:33:44', '186.42.106.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(456, 1, '2022-08-23 00:33:47', '186.42.106.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(457, 1, '2022-09-01 00:23:26', '186.42.104.191', 'Mozilla/5.0 (Linux; Android 11; SM-A015M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(458, 1, '2022-09-01 00:24:12', '186.42.104.191', 'Mozilla/5.0 (Linux; Android 11; SM-A015M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(459, 1, '2022-09-01 00:28:34', '186.42.104.191', 'Mozilla/5.0 (Linux; Android 11; SM-A015M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(460, 1, '2022-09-01 00:54:41', '186.42.104.191', 'Mozilla/5.0 (Linux; Android 11; SM-A015M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(461, 1, '2022-09-01 00:54:46', '186.42.104.191', 'Mozilla/5.0 (Linux; Android 11; SM-A015M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(462, 1, '2022-09-01 00:54:52', '186.42.104.191', 'Mozilla/5.0 (Linux; Android 11; SM-A015M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(463, 1, '2022-09-01 00:54:55', '186.42.104.191', 'Mozilla/5.0 (Linux; Android 11; SM-A015M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(464, 1, '2022-09-01 00:54:58', '186.42.104.191', 'Mozilla/5.0 (Linux; Android 11; SM-A015M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(465, 1, '2022-09-01 00:55:28', '186.42.104.191', 'Mozilla/5.0 (Linux; Android 11; SM-A015M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(466, 1, '2022-09-01 00:56:22', '186.42.104.191', 'Mozilla/5.0 (Linux; Android 11; SM-A015M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(467, 1, '2022-09-01 00:58:16', '186.42.104.191', 'Mozilla/5.0 (Linux; Android 11; SM-A015M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(468, 0, '2022-09-01 02:35:49', '186.42.104.191', 'Mozilla/5.0 (Linux; Android 11; SM-A015M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(469, 1, '2022-09-01 23:15:38', '181.188.200.108', 'Mozilla/5.0 (Linux; Android 11; SM-A015M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(470, 1, '2022-09-06 00:30:42', '186.47.138.2', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.210 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(471, 1, '2022-09-06 00:31:22', '186.47.138.2', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.210 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(472, 0, '2022-09-06 01:29:43', '186.47.138.2', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.210 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(473, 1, '2022-09-08 17:29:45', '146.70.106.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(474, 1, '2022-09-08 17:31:44', '146.70.106.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(475, 1, '2022-09-08 17:32:48', '146.70.106.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(476, 1, '2022-09-08 17:34:22', '146.70.106.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(477, 1, '2022-09-08 17:34:36', '146.70.106.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(478, 1, '2022-09-08 17:35:19', '186.46.174.248', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(479, 1, '2022-09-08 17:39:24', '186.46.174.248', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(480, 1, '2022-09-08 17:58:06', '186.46.174.248', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(481, 0, '2022-09-08 18:01:00', '186.46.174.248', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(482, 1, '2022-09-08 18:01:13', '186.46.174.248', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(483, 1, '2022-09-08 18:01:16', '186.46.174.248', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(484, 1, '2022-09-08 18:01:28', '186.46.174.248', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(485, 1, '2022-09-08 18:01:53', '186.46.174.248', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(486, 1, '2022-09-08 18:02:01', '186.46.174.248', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(487, 1, '2022-09-08 18:02:08', '186.46.174.248', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(488, 1, '2022-09-08 18:02:15', '186.46.174.248', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(489, 1, '2022-09-08 18:02:22', '186.46.174.248', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(490, 1, '2022-09-08 18:02:28', '186.46.174.248', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(491, 1, '2022-09-08 18:02:34', '186.46.174.248', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(492, 1, '2022-09-08 18:02:41', '186.46.174.248', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(493, 1, '2022-09-08 18:02:50', '186.46.174.248', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(494, 1, '2022-09-08 18:02:58', '186.46.174.248', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(495, 0, '2022-09-09 01:51:10', '186.46.174.248', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(496, 1, '2022-09-15 21:39:21', '181.188.201.215', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(497, 1, '2022-09-15 21:39:45', '181.188.201.215', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(498, 1, '2022-09-15 21:39:51', '181.188.201.215', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(499, 1, '2022-09-15 21:39:55', '181.188.201.215', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(500, 1, '2022-09-15 21:40:28', '181.188.201.215', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(501, 1, '2022-09-15 21:41:22', '181.188.201.215', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(502, 1, '2022-09-18 19:35:15', '186.42.8.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(503, 1, '2022-09-19 02:42:27', '190.152.131.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(504, 1, '2022-09-19 22:10:32', '190.152.131.125', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(505, 1, '2022-09-20 17:33:14', '181.188.200.74', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(506, 0, '2022-09-21 02:30:04', '186.46.226.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(507, 1, '2022-09-21 02:30:15', '186.46.226.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(508, 1, '2022-09-29 17:35:44', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(509, 1, '2022-09-29 17:37:30', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(510, 1, '2022-09-29 18:03:15', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(511, 1, '2022-09-29 19:10:14', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(512, 1, '2022-09-29 19:44:37', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(513, 1, '2022-09-29 19:44:40', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(514, 1, '2022-09-29 19:44:43', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(515, 1, '2022-09-29 19:45:27', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(516, 1, '2022-09-29 19:45:28', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(517, 1, '2022-09-29 19:46:11', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(518, 1, '2022-09-29 19:48:30', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 'UNKNOWN', 'ingreso'),
(519, 1, '2022-09-29 19:48:33', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 'UNKNOWN', 'ingreso'),
(520, 1, '2022-09-29 19:54:20', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 'UNKNOWN', 'ingreso'),
(521, 1, '2022-09-29 19:55:19', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 'UNKNOWN', 'ingreso'),
(522, 1, '2022-09-29 20:09:22', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 'UNKNOWN', 'ingreso'),
(523, 0, '2022-09-29 20:59:55', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(524, 1, '2022-09-29 21:00:05', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(525, 1, '2022-09-29 21:00:08', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(526, 1, '2022-09-29 21:00:39', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(527, 1, '2022-09-29 21:01:23', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(528, 1, '2022-09-29 21:01:26', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(529, 1, '2022-09-29 21:01:27', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(530, 1, '2022-09-29 21:01:29', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(531, 1, '2022-09-29 21:01:31', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(532, 1, '2022-09-29 21:02:33', '186.42.107.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(533, 1, '2022-10-05 04:17:46', '186.46.172.73', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(534, 0, '2022-10-05 04:45:54', '186.46.172.73', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(535, 1, '2022-10-05 17:01:58', '181.188.200.172', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(536, 0, '2022-10-05 18:15:01', '181.188.200.172', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(537, 1, '2022-10-10 06:34:05', '186.42.107.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(538, 1, '2022-10-10 06:34:50', '186.42.107.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(539, 1, '2022-10-10 06:36:11', '186.42.107.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(540, 1, '2022-10-10 06:39:21', '186.42.107.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(541, 1, '2022-10-10 07:00:21', '186.42.107.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(542, 1, '2022-10-10 07:03:10', '186.42.107.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(543, 1, '2022-10-10 07:03:58', '186.42.107.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(544, 1, '2022-10-10 07:06:13', '186.42.107.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(545, 1, '2022-10-10 07:08:54', '186.42.107.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(546, 1, '2022-10-10 07:13:10', '186.42.107.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(547, 1, '2022-10-10 07:13:44', '186.42.107.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(548, 0, '2022-10-10 22:42:49', '190.152.131.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(549, 1, '2022-10-10 22:43:01', '190.152.131.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(550, 1, '2022-10-10 22:43:04', '190.152.131.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(551, 1, '2022-10-10 23:18:42', '190.152.131.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(552, 1, '2022-10-13 15:22:54', '200.7.247.107', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(553, 1, '2022-10-13 15:23:00', '200.7.247.107', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(554, 1, '2022-10-13 15:28:34', '200.7.247.107', 'Mozilla/5.0 (Android 11; Mobile; rv:105.0) Gecko/105.0 Firefox/105.0', 'UNKNOWN', 'ingreso'),
(555, 0, '2022-10-13 15:29:04', '200.7.247.107', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(556, 1, '2022-10-13 15:47:07', '200.7.247.21', 'Mozilla/5.0 (Android 11; Mobile; rv:105.0) Gecko/105.0 Firefox/105.0', 'UNKNOWN', 'ingreso'),
(557, 1, '2022-10-21 02:43:10', '186.47.136.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 'UNKNOWN', 'ingreso'),
(558, 1, '2022-10-21 02:43:59', '186.47.136.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 'UNKNOWN', 'ingreso'),
(559, 1, '2022-10-21 02:47:09', '186.47.136.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 'UNKNOWN', 'ingreso'),
(560, 1, '2022-10-21 02:48:27', '186.47.136.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 'UNKNOWN', 'ingreso'),
(561, 1, '2022-10-21 02:49:28', '186.47.136.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 'UNKNOWN', 'ingreso'),
(562, 1, '2022-10-21 02:51:47', '186.47.136.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 'UNKNOWN', 'ingreso'),
(563, 1, '2022-10-21 02:51:59', '186.47.136.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 'UNKNOWN', 'ingreso'),
(564, 1, '2022-10-21 02:52:07', '186.47.136.223', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 'UNKNOWN', 'ingreso'),
(565, 1, '2022-10-21 02:53:31', '186.47.136.223', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(566, 0, '2022-10-21 04:17:53', '186.47.136.223', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(567, 1, '2022-10-22 02:49:06', '186.42.8.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(568, 14, '2022-10-22 02:52:59', '186.42.8.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(569, 14, '2022-10-22 02:55:18', '186.42.8.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(570, 14, '2022-10-22 02:55:44', '186.66.202.134', 'Mozilla/5.0 (Linux; Android 12; Infinix X670) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(571, 14, '2022-10-22 02:56:24', '186.42.8.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(572, 14, '2022-10-22 02:56:41', '186.42.8.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(573, 14, '2022-10-22 02:56:49', '186.42.8.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(574, 14, '2022-10-22 02:57:29', '186.42.8.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(575, 14, '2022-10-22 02:57:32', '186.42.8.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(576, 14, '2022-10-22 02:57:33', '186.42.8.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(577, 14, '2022-10-22 02:57:37', '186.42.8.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(578, 14, '2022-10-22 03:01:22', '186.66.202.134', 'Mozilla/5.0 (Linux; Android 12; Infinix X670) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(579, 14, '2022-10-22 03:01:27', '186.42.8.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(580, 14, '2022-10-22 03:01:53', '186.42.8.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(581, 1, '2022-10-24 17:55:28', '186.47.137.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko/20100101 Firefox/106.0', 'UNKNOWN', 'ingreso'),
(582, 1, '2022-10-24 17:55:30', '186.47.137.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko/20100101 Firefox/106.0', 'UNKNOWN', 'ingreso'),
(583, 1, '2022-10-24 18:00:00', '186.47.137.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko/20100101 Firefox/106.0', 'UNKNOWN', 'ingreso'),
(584, 1, '2022-10-24 18:01:20', '186.47.137.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko/20100101 Firefox/106.0', 'UNKNOWN', 'ingreso'),
(585, 1, '2022-10-24 18:01:26', '186.47.137.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko/20100101 Firefox/106.0', 'UNKNOWN', 'ingreso'),
(586, 1, '2022-10-24 18:01:28', '186.47.137.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko/20100101 Firefox/106.0', 'UNKNOWN', 'ingreso'),
(587, 1, '2022-10-24 18:01:44', '186.47.137.255', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko/20100101 Firefox/106.0', 'UNKNOWN', 'ingreso'),
(588, 1, '2022-10-26 05:55:16', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(589, 1, '2022-10-26 05:55:23', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(590, 1, '2022-10-26 05:56:28', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(591, 1, '2022-10-26 05:57:16', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(592, 1, '2022-10-26 05:57:20', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(593, 1, '2022-10-26 05:59:12', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(594, 1, '2022-10-26 06:00:11', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(595, 1, '2022-10-26 06:08:45', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(596, 1, '2022-10-26 06:08:48', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(597, 1, '2022-10-26 06:08:51', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(598, 1, '2022-10-26 06:14:36', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(599, 1, '2022-10-26 06:15:39', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(600, 1, '2022-10-26 06:15:43', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso');
INSERT INTO `registro` (`id`, `id_entra`, `fecha`, `ip`, `navegador`, `mac`, `accion`) VALUES
(601, 1, '2022-10-26 06:15:46', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(602, 1, '2022-10-26 06:16:45', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(603, 1, '2022-10-26 06:21:00', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(604, 1, '2022-10-26 06:21:18', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(605, 1, '2022-10-26 06:22:36', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(606, 1, '2022-10-26 16:20:29', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(607, 1, '2022-10-26 16:23:57', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(608, 1, '2022-10-26 16:28:08', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(609, 0, '2022-10-26 17:06:51', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(610, 1, '2022-10-26 17:11:22', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(611, 1, '2022-10-26 17:11:35', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(612, 1, '2022-10-26 17:15:34', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(613, 0, '2022-10-26 18:08:45', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(614, 1, '2022-10-27 00:33:48', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(615, 1, '2022-10-27 00:34:05', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(616, 1, '2022-10-27 00:34:08', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(617, 1, '2022-10-27 00:34:12', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(618, 1, '2022-10-27 00:34:21', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(619, 0, '2022-10-27 01:04:51', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(620, 279, '2022-10-27 01:15:37', '186.47.136.167', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(621, 1, '2022-10-30 19:19:20', '200.7.246.7', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(622, 1, '2022-10-30 19:26:42', '200.7.246.7', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(623, 0, '2022-10-31 00:43:17', '186.47.136.76', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(624, 1, '2022-11-01 02:55:19', '186.47.137.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(625, 1, '2022-11-01 02:55:24', '186.47.137.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(626, 1, '2022-11-01 02:57:28', '186.47.137.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(627, 1, '2022-11-01 03:10:02', '186.47.137.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(628, 1, '2022-11-01 03:10:50', '186.47.137.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(629, 1, '2022-11-01 03:14:31', '186.47.137.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(630, 0, '2022-11-01 11:29:12', '186.47.137.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(631, 1, '2022-11-02 13:57:18', '186.47.137.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(632, 0, '2022-11-02 15:23:14', '186.47.137.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(633, 1, '2022-11-02 15:23:18', '186.47.137.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(634, 1, '2022-11-02 15:23:21', '186.47.137.61', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(635, 1, '2022-11-02 19:35:57', '186.47.137.61', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(636, 1, '2022-11-02 19:36:00', '186.47.137.61', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(637, 0, '2022-11-02 19:37:01', '186.47.137.61', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(638, 1, '2022-11-02 19:37:10', '186.47.137.61', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(639, 1, '2022-11-02 19:37:20', '186.47.137.61', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(640, 1, '2022-11-02 19:37:23', '186.47.137.61', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(641, 1, '2022-11-02 19:37:53', '186.47.137.61', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(642, 0, '2022-11-02 20:21:16', '186.47.137.61', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(643, 0, '2022-11-02 20:21:31', '186.47.137.61', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(644, 1, '2022-11-18 15:25:53', '186.42.8.189', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(645, 1, '2022-11-18 15:27:25', '186.42.8.189', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(646, 1, '2022-11-18 15:27:33', '186.42.8.189', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(647, 1, '2022-11-18 15:27:44', '186.42.8.189', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(648, 1, '2022-11-18 15:27:48', '186.42.8.189', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(649, 1, '2022-11-18 15:28:02', '186.42.8.189', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(650, 0, '2022-11-19 03:54:02', '186.42.8.189', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(651, 1, '2022-11-21 23:36:30', '186.42.11.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(652, 1, '2022-11-21 23:37:01', '186.42.11.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'UNKNOWN', 'ingreso'),
(653, 0, '2022-11-22 02:16:20', '186.42.11.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(654, 1, '2022-11-30 01:23:22', '186.42.9.60', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(655, 1, '2022-11-30 01:23:35', '186.42.9.60', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(656, 1, '2022-11-30 01:23:54', '186.42.9.60', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(657, 0, '2022-11-30 03:05:06', '186.42.9.60', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(658, 1, '2022-12-02 16:00:29', '186.42.8.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'UNKNOWN', 'ingreso'),
(659, 1, '2022-12-02 16:02:14', '186.42.8.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'UNKNOWN', 'ingreso'),
(660, 1, '2022-12-02 16:06:28', '186.42.8.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'UNKNOWN', 'ingreso'),
(661, 1, '2022-12-02 16:07:43', '186.42.8.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'UNKNOWN', 'ingreso'),
(662, 1, '2022-12-02 16:08:31', '186.42.8.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'UNKNOWN', 'ingreso'),
(663, 1, '2022-12-02 16:08:35', '186.42.8.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'UNKNOWN', 'ingreso'),
(664, 1, '2022-12-02 16:08:55', '186.42.8.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'UNKNOWN', 'ingreso'),
(665, 1, '2022-12-02 16:09:35', '186.42.8.190', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko/20100101 Firefox/107.0', 'UNKNOWN', 'ingreso'),
(666, 1, '2022-12-03 23:24:30', '186.47.138.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(667, 1, '2022-12-03 23:24:34', '186.47.138.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(668, 1, '2022-12-05 03:40:43', '186.47.138.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(669, 1, '2022-12-05 03:40:51', '186.47.138.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(670, 1, '2022-12-05 16:03:23', '186.47.137.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(671, 1, '2022-12-05 16:03:25', '186.47.137.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(672, 1, '2022-12-06 16:18:48', '186.47.137.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(673, 1, '2022-12-06 16:18:51', '186.47.137.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(674, 1, '2022-12-09 20:36:04', '172.70.254.165', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', '0A-76-02-94-D4-B3', 'ingreso'),
(675, 1, '2022-12-09 20:36:09', '172.70.254.165', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', '0A-76-02-94-D4-B3', 'ingreso'),
(676, 1, '2022-12-09 20:36:23', '172.70.254.164', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', '0A-76-02-94-D4-B3', 'ingreso'),
(677, 0, '2022-12-09 21:29:32', '108.162.210.153', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36', '0A-76-02-94-D4-B3', 'ingreso'),
(678, 0, '2022-12-13 22:30:15', '172.70.254.145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '0A-76-02-94-D4-B3', 'ingreso'),
(679, 1, '2023-01-04 20:48:59', '186.42.11.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(680, 1, '2023-01-04 20:49:12', '186.42.11.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(681, 1, '2023-01-04 20:49:15', '186.42.11.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(682, 1, '2023-01-04 20:50:40', '186.42.11.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(683, 1, '2023-01-04 20:50:42', '186.42.11.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(684, 1, '2023-01-04 20:50:58', '186.42.11.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(685, 1, '2023-01-04 20:51:02', '186.42.11.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(686, 1, '2023-01-04 20:51:22', '186.42.11.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(687, 1, '2023-01-04 20:51:23', '186.42.11.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(688, 1, '2023-01-04 20:51:30', '186.42.11.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(689, 1, '2023-01-04 21:03:45', '186.42.11.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(690, 1, '2023-01-04 21:03:46', '186.42.11.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(691, 1, '2023-01-04 21:03:47', '186.42.11.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(692, 1, '2023-01-04 21:31:08', '186.42.11.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(693, 1, '2023-01-19 10:11:59', '186.42.9.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/109.0', 'UNKNOWN', 'ingreso'),
(694, 1, '2023-01-19 10:14:01', '186.42.9.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/109.0', 'UNKNOWN', 'ingreso'),
(695, 1, '2023-01-19 10:14:03', '186.42.9.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/109.0', 'UNKNOWN', 'ingreso'),
(696, 1, '2023-01-23 14:54:32', '186.47.139.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 'UNKNOWN', 'ingreso'),
(697, 1, '2023-01-23 14:54:35', '186.47.139.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36 Edg/109.0.1518.61', 'UNKNOWN', 'ingreso'),
(698, 1, '2023-02-11 19:36:11', '181.188.201.147', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso'),
(699, 1, '2023-02-12 03:15:52', '186.68.104.140', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/109.0', 'UNKNOWN', 'ingreso'),
(700, 1, '2023-02-13 23:03:54', '186.47.138.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(701, 1, '2023-02-13 23:03:55', '186.47.138.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(702, 1, '2023-02-13 23:05:21', '186.47.138.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/109.0', 'UNKNOWN', 'ingreso'),
(703, 1, '2023-02-13 23:05:27', '186.47.138.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/109.0', 'UNKNOWN', 'ingreso'),
(704, 1, '2023-02-13 23:06:39', '186.47.138.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'UNKNOWN', 'ingreso'),
(705, 1, '2023-02-13 23:07:55', '186.47.138.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/109.0', 'UNKNOWN', 'ingreso'),
(706, 1, '2023-02-26 15:37:48', '186.47.138.103', 'Mozilla/5.0 (Linux; Android 11; moto g(20)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Mobile Safari/537.36', 'UNKNOWN', 'ingreso');

-- --------------------------------------------------------

--
-- Table structure for table `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `idp` varchar(100) DEFAULT NULL,
  `idu` varchar(100) DEFAULT NULL,
  `respuestas` varchar(500) DEFAULT NULL,
  `estatus` varchar(50) NOT NULL DEFAULT '1',
  `id_pregunta` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `solicitud_transporte`
--

CREATE TABLE `solicitud_transporte` (
  `id` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `id_usuario` varchar(200) NOT NULL,
  `nombres` varchar(200) NOT NULL,
  `apellidos` varchar(200) NOT NULL,
  `fecha_nacimiento` varchar(200) NOT NULL,
  `cedula` varchar(200) NOT NULL,
  `transporte` varchar(200) NOT NULL,
  `perfil` varchar(200) NOT NULL,
  `provincia` varchar(200) NOT NULL,
  `ciudad` varchar(200) NOT NULL,
  `tipo_movilidad` varchar(200) NOT NULL,
  `estado` varchar(200) NOT NULL,
  `viajes` varchar(200) NOT NULL,
  `calificacion` varchar(200) NOT NULL,
  `nivel_transporte` varchar(200) NOT NULL DEFAULT 'F'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `solicitud_transporte`
--

INSERT INTO `solicitud_transporte` (`id`, `fecha`, `id_usuario`, `nombres`, `apellidos`, `fecha_nacimiento`, `cedula`, `transporte`, `perfil`, `provincia`, `ciudad`, `tipo_movilidad`, `estado`, `viajes`, `calificacion`, `nivel_transporte`) VALUES
(7, '2022-03-15 22:46:26', '2', 'Alex Fernando', 'Telenchana', '1996-05-07', 'imagen_cedula_identidad2b944f0342624224ac7bc677e5e7c2473.png', 'foto_perfil_compra_agil2b944f0342624224ac7bc677e5e7c2473.png', 'foto_perfil_compra_agil2b944f0342624224ac7bc677e5e7c2473.png', '11', '128', 'Bicicleta', 'Aceptado', '', '', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `subcategorias`
--

CREATE TABLE `subcategorias` (
  `nombre` varchar(100) NOT NULL,
  `id` int(100) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `id_c` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcategorias`
--

INSERT INTO `subcategorias` (`nombre`, `id`, `categoria`, `id_c`) VALUES
('Sin Subcategoria', 0, 'Sin Categoria', 0),
('Laptops', 1, 'Tegnología y Computadoras', 1),
('Tablets', 2, 'Tegnología y Computadoras', 1),
('Computadoras de Escritorio\r\n', 3, 'Tegnología y Computadoras', 1),
('Cuentas Digitales', 4, 'Tegnología y Computadoras', 1),
('Componentes', 5, 'Tegnología y Computadoras', 1),
('Ciencia\r\n\r\n', 6, 'Libros', 2),
('Ciencia Ficcion', 7, 'Libros', 2),
('Fantasia', 8, 'Libros', 2),
('Miedo', 9, 'Libros', 2),
('Ropa', 10, 'Ropa y Accesorios', 3),
('Zapatos', 11, 'Ropa y Accesorios', 3),
('Accesorios', 12, 'Ropa y Accesorios', 3),
('Relojes', 13, 'Ropa y Accesorios', 3),
('Cocina', 14, 'Hogar y Cocina', 4),
('Electrodomesticos', 15, 'Hogar y Cocina', 4),
('Limpieza', 16, 'Hogar y Cocina', 4),
('Decoracion', 17, 'Hogar y Cocina', 4),
('Arte', 18, 'Hogar y Cocina', 4),
('Manualidades', 19, 'Hogar y Cocina', 4),
('Jardin', 20, 'Hogar y Cocina', 4),
('Juguetes', 21, 'Juegos Y Juguetes', 5),
('Juegos de Mesa', 22, 'Juegos Y Juguetes', 5),
('Aire Libre', 23, 'Juegos Y Juguetes', 5),
('Muñecas', 24, 'Juegos Y Juguetes', 5),
('Cuidado de la Piel', 25, 'Salud Y Belleza', 6),
('Maquillaje', 26, 'Salud Y Belleza', 6),
('Lociones', 27, 'Salud Y Belleza', 6),
('Shampoo', 28, 'Salud Y Belleza', 6),
('Alimentos', 29, 'Alimentos Y Bebidas', 7),
('Bebidas', 30, 'Alimentos Y Bebidas', 7),
('Baño', 31, 'Hogar y Cocina', 4),
('Deportivos', 32, 'Eventos', 8),
('Culturales', 33, 'Eventos', 8),
('Musicales', 34, 'Eventos', 8),
('Informatica', 35, 'Cursos', 9),
('Ciencia', 36, 'Cursos', 9),
('Manualidades', 37, 'Cursos', 9),
('Ingles', 38, 'Cursos', 9),
('Casa', 39, 'Cursos', 9),
('Automoviles', 40, 'Carros', 10),
('Camionetas', 41, 'Carros', 10),
('Trups', 42, 'Carros', 10),
('Bicicletas', 43, 'Carros', 10),
('Software', 44, 'Tegnología y Computadoras', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tienda_favorita`
--

CREATE TABLE `tienda_favorita` (
  `id_tienda` varchar(200) NOT NULL,
  `id_usuario` varchar(200) NOT NULL,
  `estado` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tikets`
--

CREATE TABLE `tikets` (
  `id` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `codigo_factura` varchar(200) NOT NULL,
  `codigo_interno_factura` varchar(200) NOT NULL,
  `secuencia` varchar(200) DEFAULT NULL,
  `id_emisor` varchar(200) NOT NULL,
  `id_receptor` varchar(200) NOT NULL,
  `xml_no_firmado` varchar(200) DEFAULT NULL,
  `xml_autorizado` varchar(200) NOT NULL,
  `factura_pdf` varchar(200) NOT NULL,
  `clave_acceso` varchar(200) NOT NULL,
  `id_producto` varchar(200) DEFAULT NULL,
  `cantidad_producto` varchar(200) DEFAULT NULL,
  `precio_producto` varchar(200) DEFAULT NULL,
  `descripcion` varchar(200) NOT NULL,
  `precio_neto` varchar(200) NOT NULL,
  `nombres_receptor` varchar(200) NOT NULL,
  `email_receptor` varchar(200) NOT NULL,
  `cedula_receptor` varchar(200) NOT NULL,
  `direccion_receptor` varchar(200) NOT NULL,
  `celular_receptor` varchar(200) NOT NULL,
  `tipo_identificacion` varchar(200) NOT NULL,
  `subtotal` varchar(200) NOT NULL,
  `iva` varchar(200) NOT NULL,
  `total` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trabajadores`
--

CREATE TABLE `trabajadores` (
  `id` int(11) NOT NULL,
  `nombres` varchar(200) NOT NULL,
  `apellidos` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `cedula` varchar(200) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `fecha_inicio` timestamp NOT NULL DEFAULT current_timestamp(),
  `celular` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `email_corporativo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transferencia_facturacion`
--

CREATE TABLE `transferencia_facturacion` (
  `id` int(11) NOT NULL,
  `iduser` varchar(200) DEFAULT NULL,
  `idcliente` varchar(200) DEFAULT NULL,
  `monto_transferencia` varchar(200) DEFAULT NULL,
  `detalles_transferecnia` varchar(200) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `qr_img` varchar(200) DEFAULT NULL,
  `qr_contenido` varchar(200) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transportistas`
--

CREATE TABLE `transportistas` (
  `id` int(11) NOT NULL,
  `tipo_identificacion_transportista` varchar(200) DEFAULT NULL,
  `identificacion_transportista` varchar(200) DEFAULT NULL,
  `razon_social_transportista` varchar(200) NOT NULL,
  `direccion_transportista` varchar(200) DEFAULT NULL,
  `celular_transportista` varchar(200) DEFAULT NULL,
  `email_trasnportista` varchar(200) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `iduser` varchar(200) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  `qr_imagen_transportista` varchar(200) DEFAULT NULL,
  `contenido_qr_transportista` varchar(200) DEFAULT NULL,
  `estatus` varchar(200) NOT NULL DEFAULT '1',
  `placa` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `codigo_registro` varchar(200) DEFAULT NULL,
  `estado_registro` varchar(200) NOT NULL DEFAULT 'Iniciado',
  `id_e` varchar(200) NOT NULL DEFAULT '0',
  `token` varchar(200) NOT NULL DEFAULT '0',
  `estado_token` varchar(50) NOT NULL DEFAULT 'Inactivo',
  `fecha_maxima_token` varchar(200) DEFAULT NULL,
  `tipo` varchar(200) NOT NULL DEFAULT '0',
  `nombres` varchar(200) NOT NULL,
  `apellidos` varchar(200) NOT NULL,
  `pais` varchar(200) DEFAULT NULL,
  `provincia` varchar(200) DEFAULT NULL,
  `ciudad` varchar(200) DEFAULT NULL,
  `ip` varchar(200) DEFAULT NULL,
  `terminos` varchar(200) DEFAULT NULL,
  `empresa` varchar(50) NOT NULL DEFAULT '0',
  `nombre_empresa` varchar(50) DEFAULT NULL,
  `razon_social` varchar(200) NOT NULL DEFAULT '0',
  `ruc` varchar(50) DEFAULT NULL,
  `documentos_electronicos` int(50) NOT NULL DEFAULT 0,
  `email` varchar(200) NOT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `telefono` varchar(200) NOT NULL DEFAULT '0',
  `fecha` date DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `codigp_password` varchar(200) DEFAULT NULL,
  `facebook` varchar(200) DEFAULT NULL,
  `instagram` varchar(200) DEFAULT NULL,
  `tiktok` varchar(200) DEFAULT NULL,
  `whatsapp` varchar(50) DEFAULT NULL,
  `img_logo` varchar(200) DEFAULT NULL,
  `img_facturacion` varchar(200) DEFAULT NULL,
  `ruc_img` varchar(200) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `img_cedula` varchar(200) DEFAULT NULL,
  `estado_trabajo` varchar(50) NOT NULL DEFAULT '0',
  `banco_pichincha` varchar(200) DEFAULT NULL,
  `banco_guayaquil` varchar(200) DEFAULT NULL,
  `banco_produbanco` varchar(200) DEFAULT NULL,
  `banco_pacifico` varchar(200) DEFAULT NULL,
  `camara_comercio_ambato` varchar(200) DEFAULT NULL,
  `mushuc_runa` varchar(200) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `cuenta_paypal` varchar(200) DEFAULT NULL,
  `plan` varchar(50) DEFAULT NULL,
  `celular2` varchar(200) DEFAULT NULL,
  `img_perfil` varchar(200) DEFAULT NULL,
  `img_qr` varchar(200) DEFAULT NULL,
  `numero_identidad` varchar(200) DEFAULT NULL,
  `firma_electronica` varchar(200) DEFAULT NULL,
  `codigo_sri` varchar(200) DEFAULT NULL,
  `posicion` varchar(200) DEFAULT NULL,
  `eslogan` varchar(200) DEFAULT NULL,
  `estatus` varchar(100) NOT NULL DEFAULT 'ACTIVADO',
  `qr_bancario` varchar(200) DEFAULT NULL,
  `codigo_qr_unico` varchar(200) DEFAULT NULL,
  `contenido_qr` varchar(200) DEFAULT NULL,
  `mi_leben` varchar(200) NOT NULL DEFAULT 'No Activa',
  `sonido` varchar(200) DEFAULT NULL,
  `bienvenida_email` varchar(200) DEFAULT NULL,
  `carnet_vacunacion` varchar(200) DEFAULT NULL,
  `solicitud_vacunacion` varchar(200) DEFAULT NULL,
  `numero_identidad_no` varchar(200) DEFAULT NULL,
  `estableciminento_f` varchar(200) NOT NULL DEFAULT '1',
  `punto_emision_f` varchar(200) NOT NULL DEFAULT '1',
  `porcentaje_iva_f` varchar(200) NOT NULL DEFAULT '12',
  `contabilidad` varchar(200) NOT NULL DEFAULT 'NO',
  `regimen` varchar(200) NOT NULL DEFAULT 'REGIMEN GENERAL',
  `contribuyente_especial` varchar(200) NOT NULL DEFAULT 'NO',
  `resolucion_contribuyente_especial` varchar(200) DEFAULT NULL,
  `agente_retencion` varchar(200) NOT NULL DEFAULT 'NO',
  `resolucion_retencion` varchar(200) DEFAULT NULL,
  `latitud` varchar(200) DEFAULT NULL,
  `longitud` varchar(200) DEFAULT NULL,
  `estado_transportista` varchar(200) DEFAULT NULL,
  `qr_transportista` varchar(200) DEFAULT NULL,
  `contenido_qr_transportista` varchar(200) DEFAULT NULL,
  `direccion_ip_registro` varchar(200) DEFAULT NULL,
  `ciudad_registro` varchar(200) DEFAULT NULL,
  `provincia_registro` varchar(200) DEFAULT NULL,
  `pais_registro` varchar(200) DEFAULT NULL,
  `continente_registro` varchar(200) DEFAULT NULL,
  `latitud_registro` varchar(200) DEFAULT NULL,
  `longitud_registro` varchar(200) DEFAULT NULL,
  `uso_horario_registro` varchar(200) DEFAULT NULL,
  `modeda_registro` varchar(200) DEFAULT NULL,
  `licencia_registro` varchar(200) DEFAULT NULL,
  `foto_medio_transporte` varchar(200) DEFAULT NULL,
  `metodo_trabajo` varchar(200) DEFAULT NULL,
  `placa_identificacion` varchar(200) DEFAULT NULL,
  `fecha_registro_transporte` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `codigo_registro`, `estado_registro`, `id_e`, `token`, `estado_token`, `fecha_maxima_token`, `tipo`, `nombres`, `apellidos`, `pais`, `provincia`, `ciudad`, `ip`, `terminos`, `empresa`, `nombre_empresa`, `razon_social`, `ruc`, `documentos_electronicos`, `email`, `celular`, `telefono`, `fecha`, `password`, `codigp_password`, `facebook`, `instagram`, `tiktok`, `whatsapp`, `img_logo`, `img_facturacion`, `ruc_img`, `direccion`, `img_cedula`, `estado_trabajo`, `banco_pichincha`, `banco_guayaquil`, `banco_produbanco`, `banco_pacifico`, `camara_comercio_ambato`, `mushuc_runa`, `fecha_creacion`, `cuenta_paypal`, `plan`, `celular2`, `img_perfil`, `img_qr`, `numero_identidad`, `firma_electronica`, `codigo_sri`, `posicion`, `eslogan`, `estatus`, `qr_bancario`, `codigo_qr_unico`, `contenido_qr`, `mi_leben`, `sonido`, `bienvenida_email`, `carnet_vacunacion`, `solicitud_vacunacion`, `numero_identidad_no`, `estableciminento_f`, `punto_emision_f`, `porcentaje_iva_f`, `contabilidad`, `regimen`, `contribuyente_especial`, `resolucion_contribuyente_especial`, `agente_retencion`, `resolucion_retencion`, `latitud`, `longitud`, `estado_transportista`, `qr_transportista`, `contenido_qr_transportista`, `direccion_ip_registro`, `ciudad_registro`, `provincia_registro`, `pais_registro`, `continente_registro`, `latitud_registro`, `longitud_registro`, `uso_horario_registro`, `modeda_registro`, `licencia_registro`, `foto_medio_transporte`, `metodo_trabajo`, `placa_identificacion`, `fecha_registro_transporte`) VALUES
(1, NULL, 'Iniciado', '0', '0', 'Inactivo', NULL, '0', '33', '33', NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', NULL, 0, '33', NULL, '0', NULL, '33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-02 14:16:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVADO', NULL, NULL, NULL, 'No Activa', NULL, NULL, NULL, NULL, NULL, '1', '1', '12', 'NO', 'REGIMEN GENERAL', 'NO', NULL, 'NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, 'Finalizado', '0', '0', 'Inactivo', NULL, '0', 'OSCAR HERNAN', 'LOBATO MENESES', NULL, NULL, NULL, NULL, NULL, '0', 'SUPERAGRO SAN ISIDRO', '0', NULL, 10000, 'oscarlobato671@gmail.com', '0980895822', '063013395', NULL, 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, NULL, NULL, '593969721145', NULL, 'logof38bfb5b1445a5fd380e1407382320f0.jpg', NULL, 'CARCHI / ESPEJO / SAN ISIDRO / JUAN MONTALVO Y 10 DE AGOSTO', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 11:43:41', NULL, NULL, NULL, NULL, NULL, '0400829974001', 'firma39e59c4a2354777a98bbd2e8cb1ba6bb.p12', 'Fume2to@@', NULL, NULL, 'ACTIVADO', NULL, NULL, NULL, 'No Activa', NULL, NULL, NULL, NULL, NULL, '1', '1', '12', 'NO', 'RIMPE NEGOCIO POPULAR', 'NO', NULL, 'NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, 'Finalizado', '0', '0', 'Inactivo', NULL, '0', 'ESTEBAN WLADMIR ', 'MARTINEZ MARTINEZ', NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', NULL, 0, 'esteban.martinez@upec.edu.ec', NULL, '0', NULL, 'd41d8cd98f00b204e9800998ecf8427e', '1ba17c9ffb44958b5eb34fded606b7a9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 11:44:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVADO', NULL, NULL, NULL, 'No Activa', NULL, NULL, NULL, NULL, NULL, '1', '1', '12', 'NO', 'REGIMEN GENERAL', 'NO', NULL, 'NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, 'Finalizado', '0', '0', 'Inactivo', NULL, '0', 'ESTEBAN WLADMIR ', 'MARTINEZ MARTINEZ', NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', NULL, 0, '10004095632w@gmail.com', NULL, '0', NULL, 'd41d8cd98f00b204e9800998ecf8427e', '68e4ee00283cb2f3ee10ea74c09c11f4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 11:47:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVADO', NULL, NULL, NULL, 'No Activa', NULL, NULL, NULL, NULL, NULL, '1', '1', '12', 'NO', 'REGIMEN GENERAL', 'NO', NULL, 'NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, 'Finalizado', '0', '0', 'Inactivo', NULL, '0', 'PRUEBA_NOMBRE', 'PRUEBA_APELLIDOS', NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', NULL, 0, 'hola@gmail.com', NULL, '0', NULL, 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 22:54:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVADO', NULL, NULL, NULL, 'No Activa', NULL, NULL, NULL, NULL, NULL, '1', '1', '12', 'NO', 'REGIMEN GENERAL', 'NO', NULL, 'NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, 'Finalizado', '0', '0', 'Inactivo', NULL, '0', 'PRUEBA2', 'APLLIDOS2', NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', NULL, 0, 'prueba2@gmail.com', NULL, '0', NULL, '4d186321c1a7f0f354b297e8914ab240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 23:00:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVADO', NULL, NULL, NULL, 'No Activa', NULL, NULL, NULL, NULL, NULL, '1', '1', '12', 'NO', 'REGIMEN GENERAL', 'NO', NULL, 'NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 'Finalizado', '0', '0', 'Inactivo', NULL, '0', 'AA', 'AAA', NULL, NULL, NULL, NULL, NULL, '0', NULL, '0', NULL, 0, 'alex@guibis.com', NULL, '0', NULL, 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 14:50:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVADO', NULL, NULL, NULL, 'No Activa', NULL, NULL, NULL, NULL, NULL, '1', '1', '12', 'NO', 'REGIMEN GENERAL', 'NO', NULL, 'NO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `validacion_pagos`
--

CREATE TABLE `validacion_pagos` (
  `id` int(11) NOT NULL,
  `id_admin` varchar(100) NOT NULL,
  `venta` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ventas`
--

CREATE TABLE `ventas` (
  `id` int(50) NOT NULL,
  `estado` varchar(200) NOT NULL DEFAULT 'Iniciada',
  `idp` int(50) DEFAULT NULL,
  `user_integrado` int(20) DEFAULT NULL,
  `cantidad_producto` varchar(200) DEFAULT NULL,
  `precio_compra` varchar(200) DEFAULT NULL,
  `id_comprador` varchar(200) DEFAULT NULL,
  `estado_financiero` varchar(200) DEFAULT NULL,
  `banco_compra` varchar(200) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `qr_venta` varchar(200) DEFAULT NULL,
  `codigo_venta` varchar(200) DEFAULT NULL,
  `estatdus_entrada_evento` varchar(200) NOT NULL DEFAULT 'NO ESCANEADO',
  `entrega_leben_cliente` varchar(200) NOT NULL DEFAULT 'VERIFICANDO EXISTENCIA',
  `pago_leben_proveedor` varchar(200) NOT NULL DEFAULT 'VERIFICANDO PAGO',
  `metodo_pago` varchar(100) NOT NULL DEFAULT 'Agregado a mi  Carrito',
  `img_pago` varchar(200) DEFAULT NULL,
  `numero_unico` varchar(200) DEFAULT NULL,
  `estado_fisico` varchar(200) NOT NULL DEFAULT 'NO ENTREGADO',
  `solicitud_pago` varchar(200) NOT NULL DEFAULT 'POR SOLICITAR',
  `fecha_solicitud_pago` varchar(200) DEFAULT NULL,
  `fecha_inicio_venta` varchar(200) DEFAULT NULL,
  `fecha_tope_venta` varchar(200) DEFAULT NULL,
  `fecha_entrega` varchar(200) DEFAULT NULL,
  `fecha_tope_sin_novedades` varchar(200) DEFAULT NULL,
  `estado_reporte` varchar(200) DEFAULT NULL,
  `tipo_reporte` varchar(200) DEFAULT NULL,
  `descripcion_reporte` varchar(200) DEFAULT NULL,
  `fecha_reporte` varchar(200) DEFAULT NULL,
  `img_reporte` varchar(200) DEFAULT NULL,
  `fecha_final_reporte` varchar(200) DEFAULT NULL,
  `fecha_cancelacion_venta` varchar(200) DEFAULT NULL,
  `banco_solicitud_pago` varchar(200) DEFAULT NULL,
  `tipo_retiro` varchar(200) DEFAULT NULL,
  `img_solicitud_pago` varchar(200) DEFAULT NULL,
  `id_admin` varchar(200) DEFAULT NULL,
  `estado_reembolso` varchar(200) DEFAULT NULL,
  `img_boucher_reenbolso` varchar(200) DEFAULT NULL,
  `fecha_reembolso` varchar(200) DEFAULT NULL,
  `estado_contrareporte` varchar(200) DEFAULT NULL,
  `img_contrareporte` varchar(200) DEFAULT NULL,
  `descripcion_contrareporte` varchar(200) DEFAULT NULL,
  `fecha_contrareporte` varchar(200) DEFAULT NULL,
  `resolucion_reporte` varchar(200) DEFAULT NULL,
  `fecha_limite_suscripcion` varchar(200) DEFAULT NULL,
  `utilizar_transporte_guibis` varchar(200) DEFAULT NULL,
  `latitud1` varchar(200) DEFAULT NULL,
  `longitud1` varchar(200) DEFAULT NULL,
  `latitud2` varchar(200) DEFAULT NULL,
  `longitud2` varchar(200) DEFAULT NULL,
  `ciudad_1` varchar(200) DEFAULT NULL,
  `provincia_1` varchar(200) DEFAULT NULL,
  `ciudad_2` varchar(200) DEFAULT NULL,
  `provincia_2` varchar(200) DEFAULT NULL,
  `ip_1` varchar(200) DEFAULT NULL,
  `ip_2` varchar(200) DEFAULT NULL,
  `cantidad_transporta` varchar(200) DEFAULT NULL,
  `id_transporta` varchar(200) DEFAULT NULL,
  `estado_transporte` varchar(200) DEFAULT NULL,
  `direccion_1` varchar(200) DEFAULT NULL,
  `direccion_2` varchar(200) DEFAULT NULL,
  `precio_transporte` varchar(200) DEFAULT NULL,
  `proximidad_entrega` varchar(200) DEFAULT NULL,
  `codigo_qr_escaneado_entrega` varchar(200) DEFAULT NULL,
  `fecha_online` datetime DEFAULT NULL,
  `metros_online` varchar(200) DEFAULT NULL,
  `latitud_online` varchar(200) DEFAULT NULL,
  `longitud_online` varchar(200) DEFAULT NULL,
  `latitud_entrega` varchar(200) DEFAULT NULL,
  `longitud_entrega` varchar(200) DEFAULT NULL,
  `metros_distancia` varchar(200) DEFAULT NULL,
  `fecha_entrea` datetime DEFAULT NULL,
  `descripcion_entrega` text DEFAULT NULL,
  `img_entrega2` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `venta_hosting`
--

CREATE TABLE `venta_hosting` (
  `id` int(11) NOT NULL,
  `id_user` varchar(200) DEFAULT NULL,
  `id_plan` varchar(200) DEFAULT NULL,
  `extension` varchar(200) DEFAULT NULL,
  `dominio` varchar(200) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `precio_dominio` varchar(200) DEFAULT NULL,
  `precio_hosting` varchar(200) DEFAULT NULL,
  `estado` varchar(200) NOT NULL DEFAULT 'INICIADO',
  `meses` varchar(200) DEFAULT NULL,
  `email_cuenta_paypal` varchar(200) DEFAULT NULL,
  `fecha_compra_paypal` varchar(200) DEFAULT NULL,
  `codigo_user_paypal` varchar(200) DEFAULT NULL,
  `estatus_paypal` varchar(200) DEFAULT NULL,
  `id_pago_paypal` varchar(200) DEFAULT NULL,
  `achivo_pdf` varchar(200) DEFAULT NULL,
  `fecha_inicio` varchar(200) DEFAULT NULL,
  `fecha_final` varchar(200) DEFAULT NULL,
  `clave_panel` varchar(200) DEFAULT NULL,
  `estado_instalacion` varchar(200) NOT NULL DEFAULT 'INICIADO',
  `formas_pago` varchar(200) DEFAULT NULL,
  `tipo_servidor` varchar(200) DEFAULT NULL,
  `estado_dominio` varchar(200) DEFAULT NULL,
  `estado_servidor` varchar(200) DEFAULT NULL,
  `fecha_inicio_dominio` varchar(200) DEFAULT NULL,
  `fecha_final_dominio` varchar(200) DEFAULT NULL,
  `tipo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `viajes_transporte`
--

CREATE TABLE `viajes_transporte` (
  `id` int(11) NOT NULL,
  `estado_transporte` varchar(200) DEFAULT NULL,
  `id_venta` varchar(200) DEFAULT NULL,
  `id_transportista` varchar(200) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `longitud` varchar(200) DEFAULT NULL,
  `latitud` varchar(200) DEFAULT NULL,
  `ciudad` varchar(200) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `precio` varchar(200) DEFAULT NULL,
  `estado_financiero` varchar(200) NOT NULL DEFAULT 'NO PAGADO',
  `proximidad_entrega` varchar(200) DEFAULT NULL,
  `latitud_entrega` varchar(200) DEFAULT NULL,
  `longitud_entrega` varchar(200) DEFAULT NULL,
  `metros_distancia` varchar(200) DEFAULT NULL,
  `fecha_entrea` datetime DEFAULT NULL,
  `descripcion_entrega` text DEFAULT NULL,
  `img_entrega` varchar(200) DEFAULT NULL,
  `codigo_qr_escaneado_entrega` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitas`
--

CREATE TABLE `visitas` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_usuario` int(50) DEFAULT NULL,
  `ip_usuario` varchar(200) DEFAULT NULL,
  `tipo_busqueda` varchar(200) DEFAULT NULL,
  `fecha` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asientos_contables`
--
ALTER TABLE `asientos_contables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `busquedas`
--
ALTER TABLE `busquedas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nombre` (`nombre`);

--
-- Indexes for table `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codigos_producto`
--
ALTER TABLE `codigos_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compras_facturacion`
--
ALTER TABLE `compras_facturacion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comprobante_factura_final`
--
ALTER TABLE `comprobante_factura_final`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configuraciones`
--
ALTER TABLE `configuraciones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configuraciones_dominio`
--
ALTER TABLE `configuraciones_dominio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `configuracion_cuenta`
--
ALTER TABLE `configuracion_cuenta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contenido_trabajos`
--
ALTER TABLE `contenido_trabajos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuentas_bancarias_factu`
--
ALTER TABLE `cuentas_bancarias_factu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuentas_por_cobrar`
--
ALTER TABLE `cuentas_por_cobrar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `depositos_facturacion`
--
ALTER TABLE `depositos_facturacion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desplegable`
--
ALTER TABLE `desplegable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entregas`
--
ALTER TABLE `entregas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrega_bodega`
--
ALTER TABLE `entrega_bodega`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estrellas`
--
ALTER TABLE `estrellas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `subcategorias` (`subcategorias`),
  ADD KEY `categorias` (`categorias`),
  ADD KEY `subcategorias_2` (`subcategorias`);

--
-- Indexes for table `facturacion_historial_cuentas_por_cobrar`
--
ALTER TABLE `facturacion_historial_cuentas_por_cobrar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ganacias_netas_1804843900_leben_t`
--
ALTER TABLE `ganacias_netas_1804843900_leben_t`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `garantia_producto`
--
ALTER TABLE `garantia_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `historial_recorrido_transportista`
--
ALTER TABLE `historial_recorrido_transportista`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `historial_retiros`
--
ALTER TABLE `historial_retiros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_add_transporte`
--
ALTER TABLE `img_add_transporte`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_producto`
--
ALTER TABLE `img_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informacion_proceso`
--
ALTER TABLE `informacion_proceso`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notas_clientes`
--
ALTER TABLE `notas_clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagos_proveedores`
--
ALTER TABLE `pagos_proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_incorrecta`
--
ALTER TABLE `password_incorrecta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `producto_venta`
--
ALTER TABLE `producto_venta`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `subcategorias` (`subcategorias`),
  ADD KEY `categorias` (`categorias`),
  ADD KEY `subcategorias_2` (`subcategorias`);

--
-- Indexes for table `proformas`
--
ALTER TABLE `proformas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pruebas`
--
ALTER TABLE `pruebas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `punto_venta`
--
ALTER TABLE `punto_venta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recargas_leben`
--
ALTER TABLE `recargas_leben`
  ADD PRIMARY KEY (`id_recarga`);

--
-- Indexes for table `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solicitud_transporte`
--
ALTER TABLE `solicitud_transporte`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria` (`categoria`);

--
-- Indexes for table `tikets`
--
ALTER TABLE `tikets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transferencia_facturacion`
--
ALTER TABLE `transferencia_facturacion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transportistas`
--
ALTER TABLE `transportistas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `validacion_pagos`
--
ALTER TABLE `validacion_pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venta_hosting`
--
ALTER TABLE `venta_hosting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `viajes_transporte`
--
ALTER TABLE `viajes_transporte`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `asientos_contables`
--
ALTER TABLE `asientos_contables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `busquedas`
--
ALTER TABLE `busquedas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `caja`
--
ALTER TABLE `caja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `codigos_producto`
--
ALTER TABLE `codigos_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `compras_facturacion`
--
ALTER TABLE `compras_facturacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comprobantes`
--
ALTER TABLE `comprobantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3659;

--
-- AUTO_INCREMENT for table `comprobante_factura_final`
--
ALTER TABLE `comprobante_factura_final`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=862;

--
-- AUTO_INCREMENT for table `configuraciones`
--
ALTER TABLE `configuraciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `configuraciones_dominio`
--
ALTER TABLE `configuraciones_dominio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `configuracion_cuenta`
--
ALTER TABLE `configuracion_cuenta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contenido_trabajos`
--
ALTER TABLE `contenido_trabajos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cuentas_bancarias_factu`
--
ALTER TABLE `cuentas_bancarias_factu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cuentas_por_cobrar`
--
ALTER TABLE `cuentas_por_cobrar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `depositos_facturacion`
--
ALTER TABLE `depositos_facturacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `desplegable`
--
ALTER TABLE `desplegable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `direccion`
--
ALTER TABLE `direccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entregas`
--
ALTER TABLE `entregas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entrega_bodega`
--
ALTER TABLE `entrega_bodega`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estrellas`
--
ALTER TABLE `estrellas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
  MODIFY `idproducto` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `facturacion_historial_cuentas_por_cobrar`
--
ALTER TABLE `facturacion_historial_cuentas_por_cobrar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ganacias_netas_1804843900_leben_t`
--
ALTER TABLE `ganacias_netas_1804843900_leben_t`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `garantia_producto`
--
ALTER TABLE `garantia_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `historial_recorrido_transportista`
--
ALTER TABLE `historial_recorrido_transportista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `historial_retiros`
--
ALTER TABLE `historial_retiros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `img_add_transporte`
--
ALTER TABLE `img_add_transporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `img_producto`
--
ALTER TABLE `img_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `informacion_proceso`
--
ALTER TABLE `informacion_proceso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notas_clientes`
--
ALTER TABLE `notas_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pagos_proveedores`
--
ALTER TABLE `pagos_proveedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_incorrecta`
--
ALTER TABLE `password_incorrecta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `producto_venta`
--
ALTER TABLE `producto_venta`
  MODIFY `idproducto` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `proformas`
--
ALTER TABLE `proformas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pruebas`
--
ALTER TABLE `pruebas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `punto_venta`
--
ALTER TABLE `punto_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recargas_leben`
--
ALTER TABLE `recargas_leben`
  MODIFY `id_recarga` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registro`
--
ALTER TABLE `registro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=707;

--
-- AUTO_INCREMENT for table `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `solicitud_transporte`
--
ALTER TABLE `solicitud_transporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tikets`
--
ALTER TABLE `tikets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trabajadores`
--
ALTER TABLE `trabajadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transferencia_facturacion`
--
ALTER TABLE `transferencia_facturacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transportistas`
--
ALTER TABLE `transportistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `validacion_pagos`
--
ALTER TABLE `validacion_pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `venta_hosting`
--
ALTER TABLE `venta_hosting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `viajes_transporte`
--
ALTER TABLE `viajes_transporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitas`
--
ALTER TABLE `visitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;