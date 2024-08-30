

-- CREATE VIEW vista_reservas AS
-- SELECT
--     reservas.id AS reserva_id,
--     usuarios.nombre AS usuario_nombre,
--     hoteles.nombre AS hotel_nombre,
--     habitaciones.numero AS habitacion_numero,
--     habitaciones.tipo AS habitacion_tipo,
--     reservas.fecha_inicio,
--     reservas.fecha_fin
-- FROM
--     reservas
-- JOIN usuarios ON reservas.usuario_id = usuarios.id
-- JOIN habitaciones ON reservas.habitacion_id = habitaciones.id
-- JOIN hoteles ON habitaciones.hotel_id = hoteles.id;


