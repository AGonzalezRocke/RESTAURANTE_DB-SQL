/*
====================================================
Proyecto: RestaurantDB
Archivo: 05_script_empleado.sql
Descripción: Inserción de los empleados
Autor: Abraham González Roque
Fecha: 06/08/2026
====================================================
*/
-- =====================================================

INSERT INTO empleado
(id_empleado, nombre, apellido, sexo, puesto, salario, telefono, email, activo, fecha_contratacion)
VALUES
(1, 'Aithor', 'Tilla', 'M', 'Gerente', 25000.0, '8081797875', 'j.ramirez@gmail.com', 1, '2026-02-01'),   -- Gerente
(2, 'Armando','Bulla', 'M','Supervisor', 18000.00, '8081546897', 'z.vaca@gmail.com',1,'2026-07-01'), -- Supervisor
(3, 'Elba','Ginas', 'F','Cajero', 10000.00, '8081540054', 'e.gina@gmail.com',1,'2026-07-01'), -- Cajero
(4, 'Debora','Teste', 'F','Cajero', 10000.00, '8081541145', 'vaquera_salvaje@gmail.com',1,'2026-05-01'), -- Cajero
(5, 'Elvis','Tek', 'M','Cocinero', 14000.00, '8081554558', 'gologso65@gmail.com',1,'2026-05-01'), -- Cocinero
(6, 'Susana','Oria', 'F','Cocinero', 14000.00, '8081553365', NULL, 1,'2026-05-01'), -- Cocinero
(7, 'Elton','Tito', 'M','Cocinero', 14000.00, '8081557789', NULL, 1,'2026-04-01'), -- Cocinero
(8, 'Dolores','Del Cacho', 'F','Cocinero', 14000.00, '8081557800', 'tigres_elmejor@gmail.com',0,'2026-04-01'), -- Cocinero
(9, 'Felipe','Lotas', 'M','Mesero', 10000.00, '8081567900', 'amlover89@gmail.com',1,'2026-04-01'), -- Mesero
(10, 'Monica','Galindo', 'F','Mesero', 10000.00, '8081560150', 'kamikaze76@gmail.com',1,'2026-02-01'), -- Mesero
(11, 'Agapito','Velez', 'M','Mesero', 10000.00, '8081547001', 'goku_429@hotmail.com',1,'2026-02-01'), -- Mesero
(12, 'Rosa','Lazcano', 'F','Mesero', 10000.00, '8081558006', 'rosa.lazcano@hotmail.com',0,'2026-02-01'), -- Mesero
(13, 'Solomeo','Paredes', 'M','Mesero', 10000.00, '8081546007', 's0l0me0@hotmail.com',0,'2026-02-01'), -- Mesero
(14, 'Santiago','Rico', 'M','Conserje', 9000.00, '8081543337', NULL, 1,'2026-02-01'); -- Conserje