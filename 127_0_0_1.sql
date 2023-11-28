-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2023 a las 01:05:28
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdfinal_bdd`
--
CREATE DATABASE IF NOT EXISTS `bdfinal_bdd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdfinal_bdd`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `IdCliente` int(11) NOT NULL,
  `NombreCliente` varchar(15) NOT NULL,
  `ApellidoCliente` varchar(15) NOT NULL,
  `TelefonoCliente` bigint(20) NOT NULL,
  `DireccionCliente` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`IdCliente`, `NombreCliente`, `ApellidoCliente`, `TelefonoCliente`, `DireccionCliente`) VALUES
(11, 'Lorenzo', 'Morales', 2615993409, 'Calle Lavalle 554, San Martin, Mendoza'),
(12, 'Leandro', 'Caliri', 2614852561, 'Av. La Colonia 463, La Colonia, Junín Mendoza'),
(13, 'Josefina', 'Perez', 2618596324, 'Av. Santa Fe 504, La Colonia, Junin Mendoza'),
(14, 'Nicolas', 'Ramirez', 2614589446, 'Barrio San Pedro C3M5, Junin'),
(15, 'Liliana', 'Mendez', 2617410025, 'Barrio San Pedro C3M5, Junin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deuda_clientes`
--

CREATE TABLE `deuda_clientes` (
  `Id_DeudaCliente` int(11) NOT NULL,
  `Monto_DeudaCliente` int(11) NOT NULL,
  `Fecha_DeudaCliente` date NOT NULL,
  `Estado_DeudaCliente` varchar(10) NOT NULL,
  `Descripcion_DeudaCliente` varchar(30) NOT NULL,
  `Id_Clientes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `deuda_clientes`
--

INSERT INTO `deuda_clientes` (`Id_DeudaCliente`, `Monto_DeudaCliente`, `Fecha_DeudaCliente`, `Estado_DeudaCliente`, `Descripcion_DeudaCliente`, `Id_Clientes`) VALUES
(16, 1000, '2023-03-05', 'Pagado', '-------', 11),
(17, 2300, '2023-11-22', 'No Pagado', 'Transferencia desde su casa', 12),
(18, 5000, '2023-09-23', 'No Pagado', '--------', 13),
(19, 3000, '2023-06-02', 'Pagado', 'La cancelo un familiar', 14),
(20, 500, '2023-05-13', 'Pagado', '--------', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `IdEmpleado` int(11) NOT NULL,
  `NombreEmpleado` varchar(15) NOT NULL,
  `ApellidoEmpleado` varchar(15) NOT NULL,
  `TelefonoEmpleado` bigint(15) NOT NULL,
  `PuestoEmpleado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`IdEmpleado`, `NombreEmpleado`, `ApellidoEmpleado`, `TelefonoEmpleado`, `PuestoEmpleado`) VALUES
(1, 'Ezequiel', 'Roldan', 26145889635, 'Fiambrero'),
(2, 'Eliana', 'Pereyra', 2614785200, 'Cajero'),
(3, 'Joel', 'Sanders', 2614023696, 'Cajero'),
(4, 'Sebastian', 'Martinez', 2617401233, 'Carnicero'),
(5, 'Miguel Angel', 'Diaz', 2614785014, 'Carnicero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `IdFactura` int(11) NOT NULL,
  `NumeroFactura` int(11) NOT NULL,
  `MontoFactura` int(11) NOT NULL,
  `FechaFactura` date NOT NULL,
  `TipoFactura` varchar(1) NOT NULL,
  `Id_Clientes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`IdFactura`, `NumeroFactura`, `MontoFactura`, `FechaFactura`, `TipoFactura`, `Id_Clientes`) VALUES
(26, 1400005, 20000, '2023-03-15', 'A', 11),
(27, 1400004, 29000, '2023-12-20', 'B', 12),
(28, 1400012, 45200, '2023-05-12', 'A', 13),
(29, 1400011, 30600, '2023-02-17', 'C', 14),
(30, 1400013, 20500, '2023-03-09', 'B', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `IdProducto` int(11) NOT NULL,
  `NombreProducto` varchar(25) NOT NULL,
  `CaterogiaProducto` varchar(15) NOT NULL,
  `VencimientoProducto` date NOT NULL,
  `LoteProducto` varchar(15) NOT NULL,
  `Id_Empleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`IdProducto`, `NombreProducto`, `CaterogiaProducto`, `VencimientoProducto`, `LoteProducto`, `Id_Empleado`) VALUES
(21, 'Coca Cola 2.25L', 'Bebidas', '2024-01-14', '238SS20W20', 1),
(22, 'LAY\'S 40GR', 'SNACKS', '2025-11-15', '588CS20H25', 2),
(23, 'SALSA CONDIMENTADA 500GR', 'CONSERVA', '2023-12-20', '259LL20W45', 2),
(24, 'PEPSI RETORNABL', 'BEBIDA', '2024-02-24', '258HS23P20', 3),
(25, 'YOGURT BEBIBLE 1L', 'LACTEOS', '2025-01-23', '5670I89G65', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `IdProveedor` int(11) NOT NULL,
  `NombreProveedor` varchar(15) NOT NULL,
  `ApellidoProveedor` varchar(15) NOT NULL,
  `EmpresaProveedor` varchar(15) NOT NULL,
  `TelefonoProveedor` bigint(11) NOT NULL,
  `Tipo_ProductoProveedor` varchar(15) NOT NULL,
  `UbicacionProveedor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`IdProveedor`, `NombreProveedor`, `ApellidoProveedor`, `EmpresaProveedor`, `TelefonoProveedor`, `Tipo_ProductoProveedor`, `UbicacionProveedor`) VALUES
(6, 'Exequiel', 'Vergue', 'De La Torre', 2615896325, 'Conservas', 'Junin'),
(7, 'Rosa', 'Casas', 'La Serenisima', 2617854126, 'Lacteos', 'Maipú'),
(8, 'Lautaro', 'Latorre', 'Pepsico', 2618965896, 'Varios', 'San Martín'),
(9, 'Joaquin', 'Villanueva', 'Panella', 2614023204, 'Varios', 'San Martin'),
(10, 'Lara', 'Riera', 'Coca Cola', 2617852014, 'Bebidas', 'Capital');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_productos`
--

CREATE TABLE `proveedores_productos` (
  `IdProve_Produ` int(11) NOT NULL,
  `Id_Proveedore` int(11) NOT NULL,
  `Id_Producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores_productos`
--

INSERT INTO `proveedores_productos` (`IdProve_Produ`, `Id_Proveedore`, `Id_Producto`) VALUES
(1, 6, 23),
(2, 7, 25),
(4, 8, 24),
(5, 9, 22),
(6, 9, 24),
(7, 10, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_de_pagos`
--

CREATE TABLE `tipos_de_pagos` (
  `ID_Tipo_De_Pago` int(11) NOT NULL,
  `Metodo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos_de_pagos`
--

INSERT INTO `tipos_de_pagos` (`ID_Tipo_De_Pago`, `Metodo`) VALUES
(10, 'Transferencia'),
(20, 'Debito'),
(30, 'Efectivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `IdVenta` int(11) NOT NULL,
  `NumeroVenta` int(11) NOT NULL,
  `MontoVenta` int(11) NOT NULL,
  `HorarioVenta` time NOT NULL,
  `FechaVenta` date NOT NULL,
  `Id_Empleado` int(11) NOT NULL,
  `Id_Cliente` int(11) NOT NULL,
  `Id_Tipo_De_Pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`IdVenta`, `NumeroVenta`, `MontoVenta`, `HorarioVenta`, `FechaVenta`, `Id_Empleado`, `Id_Cliente`, `Id_Tipo_De_Pago`) VALUES
(31, 20000, 25000, '10:00:00', '2023-11-15', 3, 11, 10),
(32, 20001, 50000, '12:30:00', '2023-11-20', 2, 12, 10),
(33, 20002, 15000, '17:40:00', '2023-06-04', 2, 13, 20),
(34, 20003, 20700, '15:00:00', '2023-08-09', 2, 14, 30),
(35, 20004, 30550, '18:00:00', '2023-11-17', 3, 15, 20);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Indices de la tabla `deuda_clientes`
--
ALTER TABLE `deuda_clientes`
  ADD PRIMARY KEY (`Id_DeudaCliente`),
  ADD KEY `Id_Clientes` (`Id_Clientes`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`IdEmpleado`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`IdFactura`),
  ADD KEY `Id_Clientes` (`Id_Clientes`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`IdProducto`),
  ADD KEY `Id_Empleado` (`Id_Empleado`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`IdProveedor`);

--
-- Indices de la tabla `proveedores_productos`
--
ALTER TABLE `proveedores_productos`
  ADD PRIMARY KEY (`IdProve_Produ`),
  ADD KEY `Id_Proveedore` (`Id_Proveedore`),
  ADD KEY `Id_Producto` (`Id_Producto`);

--
-- Indices de la tabla `tipos_de_pagos`
--
ALTER TABLE `tipos_de_pagos`
  ADD PRIMARY KEY (`ID_Tipo_De_Pago`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`IdVenta`),
  ADD KEY `Id_Empleado` (`Id_Empleado`),
  ADD KEY `Id_Cliente` (`Id_Cliente`),
  ADD KEY `Id_Tipo_De_Pago` (`Id_Tipo_De_Pago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `deuda_clientes`
--
ALTER TABLE `deuda_clientes`
  MODIFY `Id_DeudaCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `IdEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `proveedores_productos`
--
ALTER TABLE `proveedores_productos`
  MODIFY `IdProve_Produ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `deuda_clientes`
--
ALTER TABLE `deuda_clientes`
  ADD CONSTRAINT `deuda_clientes_ibfk_1` FOREIGN KEY (`Id_Clientes`) REFERENCES `clientes` (`IdCliente`);

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`Id_Clientes`) REFERENCES `clientes` (`IdCliente`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`Id_Empleado`) REFERENCES `empleados` (`IdEmpleado`);

--
-- Filtros para la tabla `proveedores_productos`
--
ALTER TABLE `proveedores_productos`
  ADD CONSTRAINT `proveedores_productos_ibfk_1` FOREIGN KEY (`Id_Proveedore`) REFERENCES `proveedores` (`IdProveedor`),
  ADD CONSTRAINT `proveedores_productos_ibfk_2` FOREIGN KEY (`Id_Producto`) REFERENCES `productos` (`IdProducto`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`Id_Cliente`) REFERENCES `clientes` (`IdCliente`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`Id_Tipo_De_Pago`) REFERENCES `tipos_de_pagos` (`ID_Tipo_De_Pago`),
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`Id_Empleado`) REFERENCES `empleados` (`IdEmpleado`);
--
-- Base de datos: `bdnegocio3`
--
CREATE DATABASE IF NOT EXISTS `bdnegocio3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdnegocio3`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `IdActivo` int(11) NOT NULL,
  `Estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`IdActivo`, `Estado`) VALUES
(10, 'Activo'),
(20, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listadeprecios`
--

CREATE TABLE `listadeprecios` (
  `idLista` int(11) NOT NULL,
  `descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `listadeprecios`
--

INSERT INTO `listadeprecios` (`idLista`, `descripcion`) VALUES
(1, 'Contado'),
(2, 'Con descuento'),
(3, 'A proveedores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `IdListaUsado` int(11) NOT NULL,
  `NombreProducto` varchar(20) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Precio` int(11) NOT NULL,
  `FechaDeVencimiento` varchar(19) NOT NULL,
  `Activo` int(11) NOT NULL,
  `ListaPrecios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`IdListaUsado`, `NombreProducto`, `Cantidad`, `Precio`, `FechaDeVencimiento`, `Activo`, `ListaPrecios`) VALUES
(1, 'Arroz', 1000, 10, '2023/10/11', 10, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`IdActivo`);

--
-- Indices de la tabla `listadeprecios`
--
ALTER TABLE `listadeprecios`
  ADD PRIMARY KEY (`idLista`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`IdListaUsado`),
  ADD KEY `Activo` (`Activo`) USING BTREE,
  ADD KEY `ListaPrecios` (`ListaPrecios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `IdListaUsado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`Activo`) REFERENCES `estados` (`IdActivo`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__bookmark: #1932 - Table 'phpmyadmin.pma__bookmark' doesn't exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__bookmark: #1064 - Algo está equivocado en su sintax cerca 'FROM `phpmyadmin`.`pma__bookmark`' en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__central_columns: #1932 - Table 'phpmyadmin.pma__central_columns' doesn't exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__central_columns: #1064 - Algo está equivocado en su sintax cerca 'FROM `phpmyadmin`.`pma__central_columns`' en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__column_info: #1932 - Table 'phpmyadmin.pma__column_info' doesn't exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__column_info: #1064 - Algo está equivocado en su sintax cerca 'FROM `phpmyadmin`.`pma__column_info`' en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__designer_settings: #1932 - Table 'phpmyadmin.pma__designer_settings' doesn't exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__designer_settings: #1064 - Algo está equivocado en su sintax cerca 'FROM `phpmyadmin`.`pma__designer_settings`' en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__export_templates: #1932 - Table 'phpmyadmin.pma__export_templates' doesn't exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__export_templates: #1064 - Algo está equivocado en su sintax cerca 'FROM `phpmyadmin`.`pma__export_templates`' en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__favorite: #1932 - Table 'phpmyadmin.pma__favorite' doesn't exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__favorite: #1064 - Algo está equivocado en su sintax cerca 'FROM `phpmyadmin`.`pma__favorite`' en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__history: #1932 - Table 'phpmyadmin.pma__history' doesn't exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__history: #1064 - Algo está equivocado en su sintax cerca 'FROM `phpmyadmin`.`pma__history`' en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__navigationhiding: #1932 - Table 'phpmyadmin.pma__navigationhiding' doesn't exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__navigationhiding: #1064 - Algo está equivocado en su sintax cerca 'FROM `phpmyadmin`.`pma__navigationhiding`' en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__pdf_pages: #1932 - Table 'phpmyadmin.pma__pdf_pages' doesn't exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__pdf_pages: #1064 - Algo está equivocado en su sintax cerca 'FROM `phpmyadmin`.`pma__pdf_pages`' en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__recent: #1932 - Table 'phpmyadmin.pma__recent' doesn't exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__recent: #1064 - Algo está equivocado en su sintax cerca 'FROM `phpmyadmin`.`pma__recent`' en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__relation: #1932 - Table 'phpmyadmin.pma__relation' doesn't exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__relation: #1064 - Algo está equivocado en su sintax cerca 'FROM `phpmyadmin`.`pma__relation`' en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__savedsearches: #1932 - Table 'phpmyadmin.pma__savedsearches' doesn't exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__savedsearches: #1064 - Algo está equivocado en su sintax cerca 'FROM `phpmyadmin`.`pma__savedsearches`' en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__table_coords: #1932 - Table 'phpmyadmin.pma__table_coords' doesn't exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__table_coords: #1064 - Algo está equivocado en su sintax cerca 'FROM `phpmyadmin`.`pma__table_coords`' en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__table_info: #1932 - Table 'phpmyadmin.pma__table_info' doesn't exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__table_info: #1064 - Algo está equivocado en su sintax cerca 'FROM `phpmyadmin`.`pma__table_info`' en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__table_uiprefs: #1932 - Table 'phpmyadmin.pma__table_uiprefs' doesn't exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__table_uiprefs: #1064 - Algo está equivocado en su sintax cerca 'FROM `phpmyadmin`.`pma__table_uiprefs`' en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__tracking: #1932 - Table 'phpmyadmin.pma__tracking' doesn't exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__tracking: #1064 - Algo está equivocado en su sintax cerca 'FROM `phpmyadmin`.`pma__tracking`' en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__userconfig: #1932 - Table 'phpmyadmin.pma__userconfig' doesn't exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__userconfig: #1064 - Algo está equivocado en su sintax cerca 'FROM `phpmyadmin`.`pma__userconfig`' en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__usergroups: #1932 - Table 'phpmyadmin.pma__usergroups' doesn't exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__usergroups: #1064 - Algo está equivocado en su sintax cerca 'FROM `phpmyadmin`.`pma__usergroups`' en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--
-- Error leyendo la estructura de la tabla phpmyadmin.pma__users: #1932 - Table 'phpmyadmin.pma__users' doesn't exist in engine
-- Error leyendo datos de la tabla phpmyadmin.pma__users: #1064 - Algo está equivocado en su sintax cerca 'FROM `phpmyadmin`.`pma__users`' en la linea 1
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
