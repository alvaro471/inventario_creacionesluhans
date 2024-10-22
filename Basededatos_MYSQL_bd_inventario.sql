USE bd_inventario;
SHOW TABLES;
SELECT * FROM login;
SELECT * FROM productos;

INSERT INTO login (usuario, contrasena, fecha_nacimiento) VALUES ('alvaro', '12345', '2024-12-12');
CREATE TABLE `login` (
  usuario varchar(50) NOT NULL,
  contrasena varchar(50) NOT NULL,
  fecha_nacimiento date NOT NULL
);

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO login (usuario, contrasena, fecha_nacimiento) VALUES
('alvaro', '12345', '2024-09-01'),
('juan', '6789', '2005-09-12'),
('marcos', '111222', '2007-09-09'),
('carlos', '123', '2024-05-05'),
('carlos', 'carlos123', '2024-12-12');

-- Productos


CREATE TABLE productos (
  codigo int NOT NULL,
  nombre varchar(50) NOT NULL,
  cantidad int NOT NULL,
  fecha date NOT NULL,
  ventas int NOT NULL
);

SELECT * FROM productos;

CREATE TABLE `productos_registro_salida` (
  `fecha_salida` date NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `cantidad_salida` int(50) NOT NULL
);

SELECT * FROM productos_registro_salida;
DROP TABLE productos_registro_salida;

INSERT INTO `productos_registro_salida` (`fecha_salida`, `codigo`, `nombre`, `cantidad_salida`) VALUES
('2005-12-12', NULL, 'naranja', 0),
('2005-11-11', NULL, 'naranja', 0),
('2024-10-01', NULL, 'platano', 10),
('2024-10-02', NULL, 'platano', 50),
('2024-10-03', NULL, 'platano', 20),
('2024-10-02', NULL, 'platano', 90),
('2024-04-05', NULL, 'pera', 130),
('2024-10-02', NULL, 'manzana', 40),
('2024-10-03', NULL, 'manzana', 20),
('2024-10-10', NULL, 'manzana', 90);


ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo`);
ALTER TABLE `productos_registro_salida`
  ADD KEY `codigo` (`codigo`);

ALTER TABLE productos_registro_salida
  ADD CONSTRAINT codigo FOREIGN KEY (codigo) 
  REFERENCES productos (codigo) 
  ON DELETE SET NULL;
COMMIT;
