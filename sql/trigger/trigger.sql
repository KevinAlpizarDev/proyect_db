--  Actualiza el estado de la habitación correspondiente para marcarla como reservada

DELIMITER //

CREATE TRIGGER despues_insertar_reserva
AFTER INSERT ON reservas
FOR EACH ROW
BEGIN
    -- Marca la habitación como reservada
    UPDATE habitaciones
    SET esta_reservada = TRUE
    WHERE id = NEW.habitacion_id;
END; //

DELIMITER ;


-- DROP TRIGGER despues_insertar_reserva;

-- SHOW TRIGGERS;
