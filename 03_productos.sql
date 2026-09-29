/*
====================================================
Proyecto: RestaurantDB
Archivo: 03_script_productos.sql
Descripción: Inserción de productos
Autor: Abraham González Roque
Fecha: 03/08/2026
====================================================
*/

INSERT INTO producto
(id_producto, nombre, descripcion, precio, stock, activo, id_categoria)
VALUES
(1,'Hamburguesa Clásica','Carne de res, lechuga, tomate, cebolla y queso americano.',125.00,50,1,1),
(2,'Hamburguesa de Pollo','Pechuga empanizada, lechuga, tomate, cebolla y queso americano.',100.00,50,1,1),
(3,'Hamburguesa Hawaiana','Carne de res, tocino, piña asada, jamón y queso americano.',100.00,40,1,1),
(4,'Hamburguesa Doble Carne','Doble carne de res, doble queso americano, tocino y aderezo de la casa.',140.00,40,1,1),
(5,'Hot Dog Sencillo','Salchicha de pavo, jitomate, cebolla, mostaza y kétchup.',65.00,60,1,2),
(6,'Hot Dog con Tocino','Salchicha de pavo envuelta en tocino, mayonesa, cebolla y tomate.',85.00,60,1,2),
(7,'Hot Dog Especial','Salchicha polaca, tocino, cebolla caramelizada y aderezo chipotle.',100.00,50,1,2),
(8,'Papas crisscut','Porción individual de papas crisscut.',45.00,80,1,3),
(9,'Papas a la francesa','Porción individual de papas fritas.',45.00,80,1,3),
(10,'Refresco 500 mL','Refresco en lata o vaso de 500 mL.',40.00,200,1,4),
(11,'Agua 500 mL','Agua embotellada 500 mL.',25.00,200,1,4),
(12,'Pay de queso','Rebanada de pay de queso.',70.00,30,1,5);
