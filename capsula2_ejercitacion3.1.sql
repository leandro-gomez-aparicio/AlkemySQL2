//a) Crear una tabla persona sin primary key y solamente con dos campos: id y nombre
CREATE TABLE persona (
id INT,
nombre VARCHAR(45) NOT NULL
);

//b) Insertar datos siguiendo un orden no secuencial para el id
insert into persona (id, nombre)
VALUES (7, "Juan");

insert into persona (id, nombre)
VALUES (2, "Florencia");

insert into persona (id, nombre)
VALUES (9, "Pedro");

insert into persona (id, nombre)
VALUES (1, "Pilar");

insert into persona (id, nombre)
VALUES (4, "Claudia");

insert into persona (id, nombre)
VALUES (3, "Ignacio");

insert into persona (id, nombre)
VALUES (15, "Jazmín");

//c) Consultar los datos para visualizar el orden de registros
select * from persona;

//d) Agregar una clave primaria para el campo id
ALTER TABLE persona
ADD CONSTRAINT PK_id_persona PRIMARY KEY (id);

//e) Consultar los datos para visualizar el orden de registros
select * from persona;
