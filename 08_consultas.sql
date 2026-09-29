/*
====================================================
Proyecto: RestaurantDB
Archivo: 08_consultas.sql
Descripción: Consultas pertinentes
Autor: Abraham González Roque
Fecha: 11/08/2026
====================================================
*/
USE restaurante_db;
-- =====================================================
-- visualizar todos los elementos de la tabla producto --
-- ===================================================== 
SELECT * FROM producto;
-- =====================================================
-- selecciona productos con precio menor a 80
-- =====================================================
SELECT id_producto, nombre, precio FROM producto WHERE precio < 80;
-- =====================================================
-- productos ordenados por precio de manera descendente --
-- =====================================================
SELECT id_producto, nombre, precio FROM producto ORDER BY precio DESC;
-- =====================================================

-- =====================================================
-- cuantos productos vendemos --
-- =====================================================
SELECT COUNT(*) AS total_productos
FROM producto;

-- =====================================================
-- visualizar empleados activos y no activos
-- =====================================================
SELECT COUNT(*) AS ACTIVOS FROM empleado WHERE activo=1;
SELECT COUNT(*) AS NO_ACTIVOS FROM empleado WHERE activo=0;
-- =====================================================
-- Selecciona empleados activos con salario mayor a 10,000 y ordenados de mayor a menor salario
-- =====================================================
SELECT id_empleado, nombre, apellido, salario FROM empleado WHERE activo=1 AND salario > 10000 ORDER BY salario DESC;
-- =====================================================
-- CONTAMOS EL NUMERO DE CLIENTES CON APELLIDO CON LA LETRA Z --
-- =====================================================
SELECT * FROM cliente;
SELECT COUNT(*) FROM cliente WHERE apellido LIKE '%z%';
-- =====================================================
-- CONSULTA EL TOTAL VENDIDO EN UNA FECHA --
-- =====================================================
SELECT * FROM pedido;
SELECT SUM(total) AS total_vendido FROM pedido WHERE fecha = 2026-08-08;
-- =====================================================
-- ORGANIZAR LOS PEDIDOS POR LA FECHA 
-- =====================================================
SELECT id_pedido, tipo_pedido, fecha, total FROM pedido ORDER BY fecha;
-- =====================================================
-- Para  saber que cliente hizo cada pedido -- 
-- =====================================================categoria
SELECT
    p.id_pedido, p.fecha, c.nombre, c.apellido, p.total 
    FROM pedido p
INNER JOIN cliente c
    ON p.id_cliente = c.id_cliente
ORDER BY p.id_pedido;
-- =====================================================
-- PARA SABER QUE EMPLEADO RECIBIO CADA PEDIDO --
-- =====================================================
SELECT
    p.id_pedido, p.fecha, e.nombre, e.apellido, e.puesto, p.total
FROM pedido p
INNER JOIN empleado e
    ON p.id_empleado = e.id_empleado
ORDER BY p.id_pedido;

-- =====================================================
-- QUÉ CLIENTE HIZO EL PEDIDO Y QUÉ EMPLEADO ATENDIÓ --
-- =====================================================

SELECT
    p.id_pedido,
    c.nombre AS nombre_cliente,
    c.apellido AS apellido_cliente,
    e.nombre AS nombre_empleado,
    e.apellido AS apellido_empleado,
    p.total
FROM pedido p
INNER JOIN cliente c
    ON p.id_cliente = c.id_cliente
INNER JOIN empleado e
    ON p.id_empleado = e.id_empleado
ORDER BY p.id_pedido;

-- =====================================================
-- Desplegar información del pedido completo a partir de 3 tablas--
-- Status_pedido, metodo_pago y pedido --
-- =====================================================

SELECT
    p.id_pedido,
    p.tipo_pedido,
    mp.tipo AS metodo_pago,
    sp.nombre AS estado_pedido,
    p.total
FROM pedido p
INNER JOIN metodo_pago mp
    ON p.id_metodo_pago = mp.id_metodo_pago
INNER JOIN status_pedido sp
    ON p.id_status_pedido = sp.id_status_pedido
ORDER BY p.id_pedido;

-- =====================================================
-- Para desplegar la información completa del pedido --
-- =====================================================
SELECT
    p.id_pedido,
    p.fecha,
    p.tipo_pedido,

    c.nombre AS nombre_cliente,
    c.apellido AS apellido_cliente,

    e.nombre AS nombre_empleado,
    e.apellido AS apellido_empleado,

    mp.tipo AS metodo_pago,
    sp.nombre AS estado_pedido,

    p.total

FROM pedido p

INNER JOIN cliente c
    ON p.id_cliente = c.id_cliente

INNER JOIN empleado e
    ON p.id_empleado = e.id_empleado

INNER JOIN metodo_pago mp
    ON p.id_metodo_pago = mp.id_metodo_pago

INNER JOIN status_pedido sp
    ON p.id_status_pedido = sp.id_status_pedido

ORDER BY p.id_pedido;

