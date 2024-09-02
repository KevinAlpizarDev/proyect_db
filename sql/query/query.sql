
-- ○ Consulta para obtener los hoteles con mayor número de reservas.
SELECT h.nombre, COUNT(r.id) AS total_reservas
FROM hoteles h
JOIN habitaciones hab ON h.id = hab.hotel_id
JOIN reservas r ON hab.id = r.habitacion_id
GROUP BY h.nombre
ORDER BY total_reservas DESC
LIMIT 2;

-- ○ Consulta para contar cuántas habitaciones disponibles hay en un hotel específico en una
-- fecha dada.
SELECT COUNT(h.id) AS habitaciones_disponibles
FROM habitaciones h
LEFT JOIN reservas r ON h.id = r.habitacion_id 
   AND '2023-11-01' BETWEEN r.fecha_inicio AND r.fecha_fin
WHERE h.hotel_id = 1 AND r.id IS NULL;

-- ○ Consulta para buscar hoteles por nombre.
SELECT * FROM hoteles WHERE nombre LIKE '%taña%';

-- Consulta para buscar hoteles cuya ubicación comienza con un texto específico.
SELECT * FROM hoteles WHERE ubicacion LIKE 'P%';

-- ○ Consulta para buscar hoteles cuya ubicación termina con un texto específico.
SELECT * FROM hoteles WHERE ubicacion LIKE '%s';

-- ○ Consulta para obtener las reservas de un cliente (por email) realizadas en el mes anterior.
SELECT r.*
FROM reservas r
JOIN usuarios u ON r.usuario_id = u.id
WHERE u.email = 'kevin@example.com' 
  AND r.fecha_inicio BETWEEN DATE_SUB(DATE_FORMAT(CURDATE(),'%Y-%m-01'), INTERVAL 1 MONTH) 
  AND DATE_FORMAT(CURDATE(),'%Y-%m-01');

-- ○ Consulta para calcular el promedio de reservas diarias en un hotel.
SELECT COUNT(r.id) AS total_reservas, r.fecha_inicio
FROM reservas r
JOIN habitaciones hab ON r.habitacion_id = hab.id
WHERE hab.hotel_id = 1
GROUP BY r.fecha_inicio;




-- ○ Consulta para identificar el hotel con la mayor ocupación en el mes anterior.
SELECT h.nombre, COUNT(r.id) AS total_reservas
FROM hoteles h
JOIN habitaciones hab ON h.id = hab.hotel_id
JOIN reservas r ON hab.id = r.habitacion_id
WHERE r.fecha_inicio BETWEEN DATE_SUB(DATE_FORMAT(CURDATE(),'%Y-%m-01'), INTERVAL 1 MONTH) 
  AND DATE_FORMAT(CURDATE(),'%Y-%m-01')
GROUP BY h.nombre
ORDER BY total_reservas DESC
LIMIT 1;




-- ○ Consulta para listar los hoteles que tienen habitaciones disponibles pero no han sido
-- reservadas en el último mes.
SELECT h.nombre
FROM hoteles h
JOIN habitaciones hab ON h.id = hab.hotel_id
LEFT JOIN reservas r ON hab.id = r.habitacion_id 
   AND r.fecha_inicio BETWEEN DATE_SUB(DATE_FORMAT(CURDATE(),'%Y-%m-01'), INTERVAL 1 MONTH) 
   AND DATE_FORMAT(CURDATE(),'%Y-%m-01')
WHERE r.id IS NULL;
