development branch create




-- drop table reservas

-- drop table habitaciones
-- drop table hoteles
-- drop table usuarios


-- show tables;

--------------------------------------------------

-- drop table reservas
-- drop table habitaciones;
-- drop table hoteles;
-- drop table usuarios;

---------------------------------------------------
-- show tables;




----------------------------------
-- Hoteles con mayor número de reservas
SELECT h.nombre, COUNT(r.id) AS total_reservas
FROM hoteles h
JOIN habitaciones hab ON h.id = hab.hotel_id
JOIN reservas r ON hab.id = r.habitacion_id
GROUP BY h.nombre
ORDER BY total_reservas DESC
LIMIT 5;

-- Contar habitaciones disponibles en un hotel específico en una fecha dada
SELECT COUNT(h.id) AS habitaciones_disponibles
FROM habitaciones h
LEFT JOIN reservas r ON h.id = r.habitacion_id AND '2023-11-01' BETWEEN r.fecha_inicio AND r.fecha_fin
WHERE h.hotel_id = 1 AND r.id IS NULL;

-- Buscar hoteles por nombre
SELECT * FROM hoteles WHERE nombre LIKE '%Sol%';

-- Buscar hoteles cuya ubicación comienza con un texto específico
SELECT * FROM hoteles WHERE ubicacion LIKE 'Mad%';

-- Buscar hoteles cuya ubicación termina con un texto específico
SELECT * FROM hoteles WHERE ubicacion LIKE '%lona';

-- Reservas de un cliente realizadas en el mes anterior
SELECT r.*
FROM reservas r
JOIN usuarios u ON r.usuario_id = u.id
WHERE u.email = 'juan@example.com' AND r.fecha_inicio BETWEEN DATE_SUB(DATE_FORMAT(CURDATE() ,'%Y-%m-01'), INTERVAL 1 MONTH) AND DATE_FORMAT(CURDATE() ,'%Y-%m-01');

-- Calcular el promedio de reservas diarias en un hotel
SELECT AVG(total_reservas) AS promedio_reservas_diarias
FROM (
    SELECT COUNT(r.id) AS total_reservas, r.fecha_inicio
    FROM reservas r
    JOIN habitaciones hab ON r.habitacion_id = hab.id
    WHERE hab.hotel_id = 1
    GROUP BY r.fecha_inicio
) subquery;

-- Identificar el hotel con la mayor ocupación en el mes anterior
SELECT h.nombre, COUNT(r.id) AS total_reservas
FROM hoteles h
JOIN habitaciones hab ON h.id = hab.hotel_id
JOIN reservas r ON hab.id = r.habitacion_id
WHERE r.fecha_inicio BETWEEN DATE_SUB(DATE_FORMAT(CURDATE() ,'%Y-%m-01'), INTERVAL 1 MONTH) AND DATE_FORMAT(CURDATE() ,'%Y-%m-01')
GROUP BY h.nombre
ORDER BY total_reservas DESC
LIMIT 1;

-- Listar hoteles con habitaciones disponibles pero no reservadas en el último mes
SELECT h.nombre
FROM hoteles h
JOIN habitaciones hab ON h.id = hab.hotel_id
LEFT JOIN reservas r ON hab.id = r.habitacion_id AND r.fecha_inicio BETWEEN DATE_SUB(DATE_FORMAT(CURDATE() ,'%Y-%m-01'), INTERVAL 1 MONTH) AND DATE_FORMAT(CURDATE() ,'%Y-%m-01')
WHERE r.id IS NULL;
