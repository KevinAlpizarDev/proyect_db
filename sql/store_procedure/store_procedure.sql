-- DELIMITER //

-- CREATE PROCEDURE CalcularOcupacion (
--     IN p_hotel_id INT,
--     IN p_fecha_inicio DATE,
--     IN p_fecha_fin DATE
-- )
-- BEGIN
--     DECLARE total_habitaciones INT;
--     DECLARE habitaciones_ocupadas INT;
--     DECLARE ocupacion_porcentaje DECIMAL(5,2);

  
--     SELECT COUNT(*) INTO total_habitaciones
--     FROM habitaciones
--     WHERE hotel_id = p_hotel_id;

   
--     SELECT COUNT(DISTINCT r.habitacion_id) INTO habitaciones_ocupadas
--     FROM reservas r
--     JOIN habitaciones h ON r.habitacion_id = h.id
--     WHERE h.hotel_id = p_hotel_id
--     AND (
--         (r.fecha_inicio BETWEEN p_fecha_inicio AND p_fecha_fin) OR
--         (r.fecha_fin BETWEEN p_fecha_inicio AND p_fecha_fin) OR
--         (p_fecha_inicio BETWEEN r.fecha_inicio AND r.fecha_fin)
--     );


--     IF total_habitaciones > 0 THEN
--         SET ocupacion_porcentaje = (habitaciones_ocupadas / total_habitaciones) * 100;
--     ELSE
--         SET ocupacion_porcentaje = 0;
--     END IF;

--     SELECT ocupacion_porcentaje;
-- END //

-- DELIMITER ;
