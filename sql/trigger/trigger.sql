

------------------------

-- Al agregar un registro el cambia la disponibilidad


-- DELIMITER //

-- CREATE TRIGGER despues_insertar_reserva
-- AFTER INSERT ON reservas
-- FOR EACH ROW
-- BEGIN
--     -- Marca la habitación como no disponible
--     UPDATE habitaciones
--     SET esta_disponible = FALSE
--     WHERE id = NEW.habitacion_id;
-- END //

-- DELIMITER ;




-- select * 
-- from habitaciones
-- CALL agregar_reserva(2, 2, '2024-09-01', '2024-09-03');

-- CALL agregar_reserva(1, 1, '2024-09-01', '2024-09-03');

-- select * from habitaciones

