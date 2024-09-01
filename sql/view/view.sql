

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


-- SELECT * FROM vista_reservas;
----------------------------------------------------------
-- reservas que están en curso hoy

-- CREATE VIEW reservas_en_curso AS
-- SELECT
--     r.id AS reserva_id,
--     u.nombre AS usuario_nombre,
--     h.nombre AS hotel_nombre,
--     ha.numero AS habitacion_numero,
--     ha.tipo AS habitacion_tipo,
--     r.fecha_inicio,
--     r.fecha_fin
-- FROM
--     reservas r
-- JOIN usuarios u ON r.usuario_id = u.id
-- JOIN habitaciones ha ON r.habitacion_id = ha.id
-- JOIN hoteles h ON ha.hotel_id = h.id
-- WHERE
--     r.fecha_inicio <= CURDATE()
--     AND r.fecha_fin >= CURDATE();



-- SELECT * FROM reservas_en_curso;