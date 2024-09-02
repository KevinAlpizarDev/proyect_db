
------------------------

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

-- SELECT *
-- FROM reservas
-- WHERE fecha_inicio <= CURDATE() AND fecha_fin >= CURDATE();
