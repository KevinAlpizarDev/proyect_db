-- CREATE VIEW ReporteReservasDia AS
-- SELECT
--     r.id AS reserva_id,
--     u.nombre AS nombre_usuario,
--     h.numero AS numero_habitacion,
--     ho.nombre AS nombre_hotel,
--     r.fecha_inicio,
--     r.fecha_fin
-- FROM
--     reservas r
-- JOIN
--     usuarios u ON r.usuario_id = u.id
-- JOIN
--     habitaciones h ON r.habitacion_id = h.id
-- JOIN
--     hoteles ho ON h.hotel_id = ho.id
-- WHERE
--     DATE(r.fecha_inicio) = CURDATE();



-- SELECT * FROM ReporteReservasDia;