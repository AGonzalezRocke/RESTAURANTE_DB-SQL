/*
====================================================
Proyecto: RestaurantDB
Archivo: 07_pedidos.sql
Descripción: Inserción de pedidos
Autor: Abraham González Roque
Fecha: 07/08/2026
====================================================
*/
-- Insertamos 5 pedidos de prueba--
INSERT INTO pedido
(id_pedido, fecha, tipo_pedido, id_cliente, id_mesa, total,
 id_empleado, id_metodo_pago, id_status_pedido)
VALUES
(1, '2026-08-07 12:30:00', 'LOCAL', 1, 1, 210.00, 3, 1, 4),

(2, '2026-08-07 13:15:00', 'DOMICILIO', 2, NULL, 350.00, 4, 2, 4),

(3, '2026-08-07 14:00:00', 'LLEVAR', 3, NULL, 145.00, 9, 3, 3),

(4, '2026-08-07 14:45:00', 'LOCAL', 4, 5, 285.00, 10, 4, 2),

(5, '2026-08-07 15:30:00', 'DOMICILIO', 5, NULL, 335.00, 11, 5, 1);


-- INSERTAR LOS DETALLES DE  LOS 5  PEDIDOS

INSERT INTO detalle_pedido
(id_pedido, id_producto, cantidad, precio_unitario, subtotal)
VALUES
-- =====================================================
-- PEDIDO 1 - LOCAL - $210.00
(1, 1, 1, 125.00, 125.00),  -- Hamburguesa Clásica
(1, 9, 1,  45.00,  45.00),  -- Papas a la francesa
(1, 10, 1, 40.00,  40.00),  -- Refresco
-- =====================================================
-- PEDIDO 2 - DOMICILIO - $350.00
-- =====================================================
(2, 2, 2, 100.00, 200.00),  -- 2 Hamburguesas de Pollo
(2, 10, 2, 40.00,  80.00),  -- 2 Refrescos
(2, 12, 1, 70.00,  70.00),  -- Pay de queso
-- =====================================================
-- PEDIDO 3 - LLEVAR - $145.00
-- =====================================================
(3, 3, 1, 100.00, 100.00),  -- Hamburguesa Hawaiana
(3, 9, 1,  45.00,  45.00),  -- Papas a la francesa
-- =====================================================
-- PEDIDO 4 - LOCAL - $285.00
-- =====================================================
(4, 4, 1, 140.00, 140.00),  -- Hamburguesa Doble Carne
(4, 5, 1,  65.00,  65.00),  -- Hot Dog Sencillo
(4, 10, 2, 40.00,  80.00),  -- 2 Refrescos
-- =====================================================
-- PEDIDO 5 - DOMICILIO - $335.00
-- =====================================================
(5, 1, 2, 125.00, 250.00),  -- 2 Hamburguesas Clásicas
(5, 9, 1,  45.00,  45.00),  -- Papas a la francesa
(5, 11, 1,  40.00,  40.00);  -- Agua 500 mL

-- PARA REVISAR QUE detalle_pedido COINCIDE CON pedido -- 
SELECT
    p.id_pedido,
    p.total AS total_pedido,
    SUM(d.subtotal) AS total_detalle
FROM pedido p
INNER JOIN detalle_pedido d
    ON p.id_pedido = d.id_pedido
GROUP BY p.id_pedido, p.total
ORDER BY p.id_pedido;
-- Donde  el monto total_pedido=total_detalle 