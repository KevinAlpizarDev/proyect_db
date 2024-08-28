

--tabla usuarios
CREATE TABLE usuarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre varchar(255) NOT NULL,
    email varchar(255) UNIQUE NOT NULL,
    tipo ENUM("cliente", "administrador") NOT NULL
);

--tabla hoteles
CREATE TABLE hoteles (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre varchar(255) NOT NULL,
    ubicacion varchar(255) NOT NULL
);

--tabla habitaciones
CREATE TABLE habitaciones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    hotel_id int,
    numero varchar(255) NOT NULL,
    tipo varchar(255) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (hotel_id) REFERENCES hoteles(id)
);

--tabla reservas
create table reservas (
id int PRIMARY KEY AUTO_INCREMENT,
usuario_id int,
habitacion_id int,
fecha_inicio DATE NOT NULL,
fecha_fin DATE NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
FOREIGN KEY (habitacion_id) REFERENCES habitaciones(id)
);

