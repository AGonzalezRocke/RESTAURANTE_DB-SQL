/*status_mesa
====================================================
Proyecto: RestaurantDB
Archivo: 01_script_catalogos.sql
Descripción: Inserción de catálogos iniciales.
Autor: Abraham González Roque
Fecha: 03/08/2026
====================================================
*/
USE restaurante_db;
/* INSERTA LOS ESTADOS DEL PEDIDO*/
INSERT INTO status_pedido (id_status_pedido, nombre, descripcion)
VALUES
(1,'Pendiente','Pedido registrado y en espera de preparación.'),
(2,'En preparación','El pedido está siendo preparado en cocina.'),
(3,'Listo','El pedido está listo para entregarse.'),
(4,'Entregado','El cliente recibió el pedido.'),
(5,'Cancelado','El pedido fue cancelado.');

/* INSERTA LOS ESTADOS DE LA MESA*/
INSERT INTO status_mesa (id_status_mesa, status)
VALUES
(1,'Disponible'),
(2,'Ocupada'),
(3,'Reservada'),
(4,'En limpieza');

/* INSERTA LOS METODOS  DE PAGO 
SE COLOCAN LOS ID_METODO DE PAGO PARA QUE SIEMPRE SEAN LOS MISMOS
*/
INSERT INTO metodo_pago (id_metodo_pago, tipo, descripcion)
VALUES
(1,'Efectivo','Pago realizado con dinero en efectivo.'),
(2,'Tarjeta de débito','Pago con tarjeta bancaria de débito.'),
(3,'Tarjeta de crédito','Pago con tarjeta bancaria de crédito.'),
(4,'Transferencia','Pago mediante transferencia electrónica.'),
(5,'Cortesía','Pedido sin costo autorizado por la administración.');

/* INSERTA LOS TIPOS DE PRODUCTO A OFRECER */
INSERT INTO categoria (id_categoria, nombre, descripcion)
VALUES 
(1,'Hamburguesa','Hamburguesas de res y pollo preparadas al momento.'),
(2,'Hot Dog','Hot dogs con diferentes ingredientes y especialidades.'),
(3,'Acompañamiento','Papas a la francesa y otros complementos.'),
(4,'Bebida','Refrescos y bebidas del restaurante.'),
(5,'Postre','Postres disponibles para complementar la comida.');