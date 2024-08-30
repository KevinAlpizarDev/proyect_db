-- show tables
-- select * from reportereservasdia



-- MySQL SELECT Statement
-- select * from reservas
-- select * from habitaciones
-- select * from usuarios 
-- select * from hoteles

-- SELECT Columns Example
-- select habitacion_id, fecha_inicio, fecha_fin from reservas 

-- SELECT * Example
-- select * from hoteles

-- The MySQL SELECT DISTINCT Statement
-- select distinct nombre from hoteles

-- SELECT Example Without DISTINCT
-- select nombre from hoteles

-- WHERE Clause Example
-- select * from hoteles
-- where ubicacion = "Madrid"
-- select * from hoteles
-- -- where id = 2

-- MySQL AND, OR and NOT Operators
-- AND Syntax
-- select id 
-- from hoteles 
-- where nombre = "hotel sol" and ubicacion = "Madrid"
-- OR Syntax
-- select nombre 
-- from hoteles
-- where id = 2 or ubicacion = "Madrid"
-- select * from hoteles 
-- where not id = 2
-- select nombre
-- from hoteles
-- where  ubicacion = "Madrid" or ubicacion = "barcelona"

-------------------------------------------------------------------
-- MySQL ORDER BY Keyword
-- ORDER BY Syntax
-- select * from hoteles
-- order by nombre

-- select * from hoteles
-- order by nombre desc

-- select * from hoteles 
-- order by nombre asc

-- select * from hoteles
-- order by ubicacion, nombre;

-- select * from hoteles
-- order by nombre desc, ubicacion asc;

-------------------------------------------------------------------
-- MySQL INSERT INTO Statement
-- insert into hoteles
-- (nombre, ubicacion)
-- values ("hotel Luna", "Nicoya");
-- -------------------------------------------------------------------
-- MySQL UPDATE Statement
-- update hoteles
-- set ubicacion = "Puntarenas"
-- where id = 1;

-- update hoteles 
-- set ubicacion = "Golfito"
-- where ubicacion = "Barcelona";

-- update hoteles
-- set ubicacion = "Guanacaste" 
-- where nombre = "hotel Luna" and ubicacion = "Nicoya";



-- update hoteles
-- set nombre = "Hotel Luna" 
-- where nombre = "Change" and ubicacion = "Guanacaste";



------------------------------------------------------------------
-- MySQL DELETE Statement
-- delete from hoteles where id = 5;

-------------------------------------------------------------------
-- MySQL LIMIT Clause
-- select nombre, ubicacion
-- from hoteles
-- where ubicacion = "Puntarenas"
-- limit 1;


-------------------------------------------------------------------
-- MySQL MIN() and MAX() Functions
-- select min(id)
-- from hoteles

-------------------------------------------------------------------
-- MySQL COUNT(), AVG() and SUM() Functions
-- select sum(id)
-- from hoteles

-- update hoteles
-- set nombre = "Puntarenas"
-- where nombre = "Puerto";

-- update hoteles
-- set nombre = "Hotel Sol"
-- where id = 1;
-------------------------------------------------------------------
-- MySQL LIKE Operator
-- select * 
-- from hoteles
-- where nombre like "%sol";

-- select * 
-- from hoteles 
-- where nombre like "hot%";


-- select * 
-- from hoteles
-- where nombre like "%lu%";

-- select * 
-- from hoteles
-- where nombre like "%s__";

-- select * 
-- from hoteles 
-- where nombre like "h%y_";

-- select *
--  from hoteles
--  where nombre
--  not like "%y_";

-------------------------------------------------------------------
-- MySQL Wildcards
-------------------------------------------------------------------
-- MySQL IN Operator
-- select * 
-- from hoteles
-- where ubicacion in ("Puntarenas", "Golfito");


-- select *
-- from hoteles
-- where ubicacion not in ("Puntarenas", "Golfito");


-------------------------------------------------------------------
-- MySQL BETWEEN Operator

-- use hotels

-- SELECT * FROM hoteles;

-- select * 
-- from hoteles
-- where id between 2 and 4;

-- select * 
-- from hoteles
-- where id not between  2 and 4;

-- select * 
-- from hoteles
-- where id not 
-- between 1 and 2;

-- select * 
-- from hoteles
-- where id 
-- not between 1 and 2 
-- order by id desc;

-- select *
-- from hoteles
-- where id 
-- between 3 and 4 
-- order by id;

-- select * from reservas;


-- select *
-- from reservas
-- where fecha_inicio 
-- between "2021-11-01" and "2023-11-04";
-------------------------------------------------------------------
-- MySQL Aliases




-------------------------------------------------------------------
-- JOIN

-- select * habitaciones.id, hoteles.id, habitaciones.hotel_id
-- from habitaciones
-- inner join hoteles
-- on habitaciones.id = hoteles.id;




-- SELECT habitaciones.id AS habitacion_id, hoteles.id AS hotel_id, habitaciones.hotel_id
-- FROM habitaciones
-- INNER JOIN hoteles
-- ON habitaciones.hotel_id = hoteles.id;

-------------------------------------------------------------------
-- join o inner join


-------------------------------------------------------------------

-------------------------------------------------------------------

-------------------------------------------------------------------

-------------------------------------------------------------------

-------------------------------------------------------------------

-------------------------------------------------------------------



-- select * 
-- from usuarios
-- inner join reservas 
-- on usuarios.id = reservas.usuario_id;
