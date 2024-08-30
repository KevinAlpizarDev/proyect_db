DELIMITER //

CREATE TRIGGER after_reserva_insert
AFTER INSERT ON reservas
FOR EACH ROW
BEGIN
    -- Marca la habitación como reservada
    UPDATE habitaciones
    SET esta_reservada = TRUE
    WHERE id = NEW.habitacion_id;
END; //

DELIMITER ;
