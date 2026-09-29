/*
====================================================
Proyecto: RestaurantDB
Archivo: 04_script_producto_ingrediente.sql
Descripción: Inserción de cada receta de producto y los ingredientes necesarios
Autor: Abraham González Roque
Fecha: 03/08/2026
====================================================
*/
-- =====================================================
-- HAMBURGUESA CLÁSICA (id_producto = 1)
-- =====================================================
INSERT INTO producto_ingrediente
(id_producto, id_ingrediente, cantidad)
VALUES
(1, 1, 0.150),   -- Carne de res (150 g)
(1, 3, 1),       -- Pan para hamburguesa (1 pz)
(1, 7, 1),       -- Queso americano (1 rebanada)
(1, 11, 0.020),  -- Lechuga (20 g)
(1, 12, 0.030),  -- Tomate (30 g)
(1, 13, 0.020),  -- Cebolla (20 g)
(1, 17, 0.015),  -- Mayonesa (15 mL)
(1, 21, 0.005),  -- Sal (5 g)
(1, 22, 0.002);  -- Pimienta (2 g)

-- =====================================================
-- HAMBURGUESA DE POLLO (id_producto = 2)
-- =====================================================
INSERT INTO producto_ingrediente
(id_producto, id_ingrediente, cantidad)
VALUES
(2, 2, 0.150),   -- Pechuga de pollo
(2, 3, 1),       -- Pan para hamburguesa
(2,20, 0.030),   -- Pan molido
(2,23, 0.020),   -- Aceite vegetal
(2, 7, 1),       -- Queso americano
(2,11, 0.020),   -- Lechuga
(2,12, 0.030),   -- Tomate
(2,13, 0.020),   -- Cebolla
(2,17, 0.015),   -- Mayonesa
(2,21, 0.005),   -- Sal
(2,22, 0.002);   -- Pimienta

-- =====================================================
-- HAMBURGUESA HAWAIANA (id_producto = 3)
-- =====================================================
INSERT INTO producto_ingrediente
(id_producto, id_ingrediente, cantidad)
VALUES
(3, 1, 0.150),   -- Carne de res
(3, 3, 1),       -- Pan para hamburguesa
(3, 7, 1),       -- Queso americano
(3, 8, 0.030),   -- Tocino
(3, 9, 0.030),   -- Jamón
(3,10, 0.040),   -- Piña
(3,17, 0.015);   -- Mayonesa

-- =====================================================
-- HAMBURGUESA DOBLE CARNE (id_producto = 4)
-- =====================================================
INSERT INTO producto_ingrediente
(id_producto, id_ingrediente, cantidad)
VALUES
(4, 1, 0.300),   -- Doble carne de res
(4, 3, 1),       -- Pan para hamburguesa
(4, 7, 2),       -- Doble queso americano
(4, 8, 0.040),   -- Tocino
(4,17, 0.015),   -- Mayonesa
(4,18, 0.020);   -- Aderezo de la casa

-- =====================================================
-- Hot dog sencillo (id_producto = 5)
-- =====================================================
INSERT INTO producto_ingrediente
(id_producto, id_ingrediente, cantidad)
VALUES
(5,4,1),       -- Pan para hot dog
(5,5,1),       -- Salchicha de pavo
(5,12,0.030),  -- Tomate
(5,13,0.020),  -- Cebolla
(5,15,0.015),  -- Kétchup
(5,16,0.010);  -- Mostaza

-- =====================================================
-- Hot dog con tocino (id_producto = 6)
-- =====================================================
INSERT INTO producto_ingrediente
(id_producto, id_ingrediente, cantidad)
VALUES
(6,4,1),       -- Pan para hot dog
(6,5,1),       -- Salchicha de pavo
(6,8,0.030),   -- Tocino
(6,12,0.030),  -- Tomate
(6,13,0.020),  -- Cebolla
(6,17,0.015);  -- Mayonesa
-- =====================================================
-- Hot dog especial (id_producto = 7)
-- =====================================================
INSERT INTO producto_ingrediente
(id_producto, id_ingrediente, cantidad)
VALUES
(7,4,1),       -- Pan para hot dog
(7,6,1),       -- Salchicha polaca
(7,8,0.030),   -- Tocino
(7,13,0.030),  -- Cebolla
(7,24,0.010),  -- Mantequilla
(7,19,0.015);  -- Aderezo chipotle

-- =====================================================
-- Papas crisscut (id_producto = 8)
-- =====================================================
INSERT INTO producto_ingrediente
(id_producto, id_ingrediente, cantidad)
VALUES
(8,14,0.250),   -- Papas (250 g)
(8,23,0.020);   -- Aceite vegetal (20 mL)

-- =====================================================
-- Papas a la francesa (id_producto = 9)
-- =====================================================
INSERT INTO producto_ingrediente
(id_producto, id_ingrediente, cantidad)
VALUES
(9,14,0.250),   -- Papas (250 g)
(9,23,0.020);   -- Aceite vegetal (20 mL)
-- =====================================================
-- Refresco (id_producto = 10)
-- =====================================================
INSERT INTO producto_ingrediente
(id_producto, id_ingrediente, cantidad)
VALUES
(10,25,1);
-- =====================================================
-- Agua embotellada (id_producto = 11)
-- =====================================================
INSERT INTO producto_ingrediente
(id_producto, id_ingrediente, cantidad)
VALUES
(11,26,1);
-- =====================================================
-- Pay de queso (id_producto = 12)
-- =====================================================
INSERT INTO producto_ingrediente
(id_producto, id_ingrediente, cantidad)
VALUES
(12,27,1);