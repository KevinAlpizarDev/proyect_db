

-- CREATE TABLE hoteles (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     nombre TEXT NOT NULL,
--     ubicacion TEXT NOT NULL
-- );

-- CREATE TABLE habitaciones (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     hotel_id BIGINT,
--     numero TEXT NOT NULL,
--     tipo TEXT NOT NULL,
--     precio DECIMAL(10,2) NOT NULL
-- );

-- CREATE TABLE reservas (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     usuario_id BIGINT,
--     habitacion_id BIGINT,
--     fecha_inicio DATE NOT NULL,
--     fecha_fin DATE NOT NULL
-- );


-- CREATE TABLE usuarios (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     nombre TEXT NOT NULL,
--     email varchar(255) UNIQUE NOT NULL,
--     tipo ENUM('cliente', 'administrador') NOT NULL
-- );