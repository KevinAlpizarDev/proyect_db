
-- store procedure procedimiento para agregar una reserva

-- DELIMITER //

-- CREATE PROCEDURE agregar_reserva(
--     IN p_usuario_id INT,
--     IN p_habitacion_id INT,
--     IN p_fecha_inicio DATE,
--     IN p_fecha_fin DATE
-- )
-- BEGIN
--     DECLARE v_reserva_existente INT;

--     -- Verificar si ya existe una reserva para la misma habitación en las mismas fechas
--     SELECT COUNT(*) INTO v_reserva_existente
--     FROM reservas
--     WHERE habitacion_id = p_habitacion_id
--       AND (
--           (p_fecha_inicio BETWEEN fecha_inicio AND fecha_fin)
--           OR
--           (p_fecha_fin BETWEEN fecha_inicio AND fecha_fin)
--           OR
--           (fecha_inicio BETWEEN p_fecha_inicio AND p_fecha_fin)
--           OR
--           (fecha_fin BETWEEN p_fecha_inicio AND p_fecha_fin)
--       );

--     -- Si ya existe una reserva, lanzar una excepción
--     IF v_reserva_existente > 0 THEN
--         SIGNAL SQLSTATE '45000'
--         SET MESSAGE_TEXT = 'La habitación ya está reservada en las fechas especificadas.';
--     ELSE
--         -- Insertar la nueva reserva si no existe una reserva en conflicto
--         INSERT INTO reservas (usuario_id, habitacion_id, fecha_inicio, fecha_fin)
--         VALUES (p_usuario_id, p_habitacion_id, p_fecha_inicio, p_fecha_fin);
--     END IF;
-- END //

-- DELIMITER ;

-- DROP PROCEDURE IF EXISTS agregar_reserva;




CALL agregar_reserva(1, 1, '2024-09-03', '2024-10-07');
