

-----------------


-- CREATE TABLE usuarios (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     nombre VARCHAR(255) NOT NULL,
--     email VARCHAR(255) UNIQUE NOT NULL,
--     tipo ENUM('cliente', 'administrador') NOT NULL
-- );



-- CREATE TABLE hoteles (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     nombre VARCHAR(255) NOT NULL,
--     ubicacion VARCHAR(255) NOT NULL
-- );




-- CREATE TABLE habitaciones (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     hotel_id INT,
--     numero VARCHAR(255) NOT NULL,
--     tipo VARCHAR(255) NOT NULL,
--     precio DECIMAL(10,2) NOT NULL,
--     esta_disponible BOOLEAN DEFAULT TRUE,
--     FOREIGN KEY (hotel_id) REFERENCES hoteles(id)
-- );



-- CREATE TABLE reservas (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     usuario_id INT,
--     habitacion_id INT,
--     fecha_inicio DATE NOT NULL,
--     fecha_fin DATE NOT NULL,
--     FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
--     FOREIGN KEY (habitacion_id) REFERENCES habitaciones(id)
-- );
