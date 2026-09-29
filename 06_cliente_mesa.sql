/*
====================================================
Proyecto: RestaurantDB
Archivo: 06_script_cliente_mesa.sql
Descripción: Inserción de productos
Autor: Abraham González Roque
Fecha: 07/08/2026
====================================================
*/
-- Insertar los clientes a la tabla --
INSERT INTO cliente
(id_cliente, nombre, apellido, telefono, email, direccion)
VALUES
(1, 'Carlos', 'Mendoza', '8112345678', 'carlos.mendoza@gmail.com', 'Av. Constitución 125, Monterrey'),
(2, 'Mariana', 'Garza', '8112456789', 'mariana.garza@gmail.com', 'Calle Hidalgo 234, Monterrey'),
(3, 'Luis', 'Colosio', '8112567890', NULL, 'Av. Madero 456, Monterrey'),
(4, 'Fernanda', 'González', '8112678901', 'fernanda.gonzalez@hotmail.com', 'Calle Juárez 178, Monterrey'),
(5, 'Ricardo', 'Sánchez', '8112789012', 'ricardo.sanchez@gmail.com', 'Av. Lincoln 890, Monterrey'),
(6, 'Gabriel', 'Garcia Marquez', '8112890123', NULL, 'Calle Morelos 321, Monterrey'),
(7, 'Jorge', 'Ramírez', '8112901234', 'jorge.ramirez@gmail.com', 'Av. Universidad 567, San Nicolás'),
(8, 'Patricia', 'Flores', '8113012345', 'patricia.flores@gmail.com', 'Calle Nogalar 234, San Nicolás'),
(9, 'Mario', 'Benedetti', '8113123456', NULL, 'Av. Sendero 678, San Nicolás'),
(10, 'Sofía', 'Castillo', '8113234567', 'sofia.castillo@gmail.com', 'Calle Universidad 145, San Nicolás'),
(11, 'Daniel', 'Hernández', '8113345678', 'daniel.hernandez@hotmail.com', 'Av. Miguel Alemán 789, Guadalupe'),
(12, 'Pablo', 'Neruda', '8113456789', NULL, 'Calle Juárez 456, Guadalupe'),
(13, 'Miguel', 'Salinas', '8113567890', 'miguel.salinas@gmail.com', 'Av. Pablo Livas 234, Guadalupe'),
(14, 'Gabriela', 'Navarro', '8113678901', 'gabriela.navarro@gmail.com', 'Calle Matamoros 567, Guadalupe'),
(15, 'Octavio', 'Paz', '8113789012', NULL, 'Av. Eloy Cavazos 890, Guadalupe'),
(16, 'Laura', 'Vega', '8113890123', 'laura.vega@gmail.com', 'Calle Zaragoza 123, Apodaca'),
(17, 'Antonio', 'Ríos', '8113901234', 'antonio.rios@hotmail.com', 'Av. Concordia 456, Apodaca'),
(18, 'Carlos', 'Fuentes', '8114012345', NULL, 'Calle Huinalá 789, Apodaca'),
(19, 'Roberto', 'Cantu', '8114123456', 'roberto.cantu@gmail.com', 'Av. Miguel Alemán 234, Apodaca'),
(20, 'Valeria', 'Medina', '8114234567', 'valeria.medina@gmail.com', 'Calle Estación 567, Apodaca'),
(21, 'Héctor', 'Treviño', '8114345678', NULL, 'Av. Las Puentes 345, San Nicolás'),
(22, 'Lola', 'Meraz', '8114456789', 'lola.meraz@gmail.com', 'Calle República 678, Monterrey'),
(23, 'Oscar', 'Mora', '8114567890', 'oscar.mora@hotmail.com', 'Av. Revolución 123, Monterrey'),
(24, 'Julio', 'Cortazar', '8114678901', NULL, 'Calle Reforma 456, Monterrey'),
(25, 'Alejandro', 'Gutiérrez', '8114789012', 'alejandro.gutierrez@gmail.com', 'Av. Garza Sada 789, Monterrey'),
(26, 'Claudia', 'García', '8114890123', 'claudia.garcia@gmail.com', 'Calle Lázaro Cárdenas 234, Monterrey'),
(27, 'Juan', 'Rulfo', '8114901234', NULL, 'Av. Gonzalitos 567, Monterrey'),
(28, 'Isabel', 'Allende', '8115012345', 'isabel.allende@gmail.com', 'Calle Colegio Civil 890, Monterrey'),
(29, 'Raúl', 'Valdez', '8115123456', 'raul.valdez@hotmail.com', 'Av. Leones 345, Monterrey'),
(30, 'Jorge Luis', 'Borges', '8115234567', NULL, 'Calle Paseo de los Leones 678, Monterrey');

-- Revisión visual de clientes --
SELECT * FROM cliente;
-- Revisión del total de clientes -- 
SELECT COUNT(*) AS total_clientes
FROM cliente;

-- Insertar las mesas, capacidad y status --
INSERT INTO mesa
(id_mesa, numero, capacidad, id_status_mesa)
VALUES
(1, 1, 4, 1),
(2, 2, 4, 1),
(3, 3, 4, 1),
(4, 4, 4, 1),
(5, 5, 4, 1),
(6, 6, 4, 1),
(7, 7, 4, 1),
(8, 8, 6, 1),
(9, 9, 6, 1);

-- Revisión de mesas disponibles--
SELECT COUNT(*) AS mesas_disponibles
FROM mesa
WHERE id_status_mesa = 1;

-- Revisión total de mesas--
SELECT COUNT(*) AS total_mesas FROM mesa;