-- drop database hotel;


-- show DATABASEs;


-- SELECT h.nombre, COUNT(r.id) AS total_reservas
-- FROM hoteles h
-- JOIN habitaciones hab ON h.id = hab.hotel_id
-- JOIN reservas r ON hab.id = r.habitacion_id
-- GROUP BY h.nombre
-- ORDER BY total_reservas DESC
-- LIMIT 5;


-- SELECT COUNT(h.id) AS habitaciones_disponibles
-- FROM habitaciones h
-- LEFT JOIN reservas r ON h.id = r.habitacion_id AND '2023-11-01' BETWEEN r.fecha_inicio AND r.fecha_fin
-- WHERE h.hotel_id = 1 AND r.id IS NULL;

-- SELECT * FROM hoteles WHERE nombre LIKE '%Sol%';

-- SELECT * FROM hoteles WHERE ubicacion LIKE 'Mad%';

-- SELECT * FROM hoteles WHERE ubicacion LIKE '%lona';

-- SELECT r.*
-- FROM reservas r
-- JOIN usuarios u ON r.usuario_id = u.id
-- WHERE u.email = 'juan@example.com' AND r.fecha_inicio BETWEEN DATE_SUB(DATE_FORMAT(CURDATE() ,'%Y-%m-01'), INTERVAL 1 MONTH) AND DATE_FORMAT(CURDATE() ,'%Y-%m-01');


-- SELECT AVG(total_reservas) AS promedio_reservas_diarias
-- FROM (
--     SELECT COUNT(r.id) AS total_reservas, r.fecha_inicio
--     FROM reservas r
--     JOIN habitaciones hab ON r.habitacion_id = hab.id
--     WHERE hab.hotel_id = 1
--     GROUP BY r.fecha_inicio
-- ) subquery;




-- SELECT h.nombre, COUNT(r.id) AS total_reservas
-- FROM hoteles h
-- JOIN habitaciones hab ON h.id = hab.hotel_id
-- JOIN reservas r ON hab.id = r.habitacion_id
-- WHERE r.fecha_inicio BETWEEN DATE_SUB(DATE_FORMAT(CURDATE() ,'%Y-%m-01'), INTERVAL 1 MONTH) AND DATE_FORMAT(CURDATE() ,'%Y-%m-01')
-- GROUP BY h.nombre
-- ORDER BY total_reservas DESC
-- LIMIT 1;





-- SELECT h.nombre
-- FROM hoteles h
-- JOIN habitaciones hab ON h.id = hab.hotel_id
-- LEFT JOIN reservas r ON hab.id = r.habitacion_id AND r.fecha_inicio BETWEEN DATE_SUB(DATE_FORMAT(CURDATE() ,'%Y-%m-01'), INTERVAL 1 MONTH) AND DATE_FORMAT(CURDATE() ,'%Y-%m-01')
-- WHERE r.id IS NULL;