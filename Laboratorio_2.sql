CREATE database lab_respuestas

use lab_respuestas

create table estudiante
(
	nombre VARCHAR(50) NOT NULL,
	apellidos VARCHAR(50) NOT NULL,
	edad INTEGER NOT NULL,
	fono INTEGER NOT NULL,
	email varchar(100) NOT NULL,
	direccion varchar(200) NOT NULL,
	genero varchar(50) NOT NULL
);

INSERT INTO estudiante (nombre, apellidos, edad, fono, email, direccion, genero) 
	VALUES ('Miguel' ,'Gonzales Veliz', 20, 2832115, 'miguel@gmail.com', 'Av. 6 de Agosto', 'masculino');
INSERT INTO estudiante (nombre, apellidos, edad, fono, email, direccion, genero)
  VALUES ('Sandra' ,'Mavir Uria', 25, 2832116, 'sandra@gmail.com', 'Av. 6 de Agosto', 'femenino');
INSERT INTO estudiante (nombre, apellidos, edad, fono, email, direccion, genero)
  VALUES ('Joel' ,'Adubiri Mondar', 30, 2832117, 'joel@gmail.com', 'Av. 6 de Agosto', 'masculino');
INSERT INTO estudiante (nombre, apellidos, edad, fono, email, direccion, genero)
  VALUES ('Andrea' ,'Arias Ballesteros', 21, 2832118, 'andrea@gmail.com', 'Av. 6 de Agosto', 'femenino');
INSERT INTO estudiante (nombre, apellidos, edad, fono, email, direccion, genero)
  VALUES ('Santos' ,'Montes Valenzuela', 24, 2832119, 'santos@gmail.com', 'Av. 6 de Agosto', 'masculino');

SELECT COUNT (*)
from estudiante AS est
WHERE EST.genero = 'femenino';

ALTER TABLE estudiante ADD licencia_conducir BIT;

INSERT INTO estudiante (nombre, apellidos, edad, fono, email, direccion, genero, licencia_conducir)
  VALUES ('Ana' ,'Gonzales Veliz', 20, 2832115, 'ana@gmail.com', 'Av. 6 de Agosto', 'femenino', 0)

INSERT INTO estudiante (nombre, apellidos, edad, fono, email, direccion, genero, licencia_conducir)
  VALUES ('Pedro' ,'Gonzales Veliz', 20, 2832119, 'Pedro@gmail.com', 'Av. 6 de Agosto', 'masculino', 1)

select COUNT (est.licencia_conducir)
from estudiante AS est;

-- Determinar el promedio de las edades 

SELECT max(est.edad)
FROM estudiante AS est
WHERE est.genero = 'femenino' or est.genero = 'masculino';

--Determinar cuántos estudiantes hay, en donde su apellido contenga la PALABRA “el” y además sea del género masculino.
select count(est.apellidos)
from estudiante AS est
where est.apellidos like '%el%' and est.genero = 'masculino';

--Determinar cuántos estudiantes tienen una edad mayor  a 20 y menor a 30 de los estudiantes que tengan licencia de conducir.
select COUNT (est.licencia_conducir)
from estudiante AS est
WHERE est.edad >=20 and est.edad <30;


--Determinar cuántos estudiantes tienen una edad mayor  a 20 y menor a 30 de los estudiantes que tengan licencia de conducir.
select COUNT (est.licencia_conducir)
from estudiante AS est
WHERE est.edad >20 and est.edad <30 and est.licencia_conducir = 1;

truncate table ESCUELA
DROP TABLE ESCUELA 
DROP TABLE estudiante
create table ESCUELA 
(
	id_esc INTEGER PRIMARY KEY NOT NULL,
	nombre varchar (50) NOT NULL,
	direccion varchar (100) NOT NULL,
	turno varchar (50) NOT NULL
);
INSERT INTO ESCUELA (id_esc, nombre, direccion, turno) VALUES 
(1 , 'San Simon', 'Cochabamba','manana'),
(2 , 'Andres Bello', 'El Alto', 'manana-tarde'),
(3 , 'Amor de Dios Fe y Alegria', 'El Alto', 'manana-tarde'),
(4 , 'Don Bosco', 'La Paz', 'manana-tarde-noche');


create table estudiante 
(
	nombre VARCHAR(50) NOT NULL,
	apellidos VARCHAR(50) NOT NULL,
	edad INTEGER NOT NULL,
	fono INTEGER NOT NULL,
	email varchar(100) NOT NULL,
	direccion varchar(200) NOT NULL,
	genero varchar(50) NOT NULL,
	licenca_conducir integer not null,
	id_esc INTEGER NOT NULL,
	FOREIGN KEY (id_esc) REFERENCES ESCUELA(id_esc)
);

truncate table estudiante
INSERT INTO estudiante (nombre, apellidos, edad, fono, email, direccion, genero, licenca_conducir, id_esc) 
	VALUES ('Miguel' ,'Gonzales Veliz', 20, 2832115, 'miguel@gmail.com', 'Av. 6 de Agosto', 'masculino',0,1);
INSERT INTO estudiante (nombre, apellidos, edad, fono, email, direccion, genero, licenca_conducir, id_esc)
  VALUES ('Sandra' ,'Mavir Uria', 25, 2832116, 'sandra@gmail.com', 'Av. 6 de Agosto', 'femenino',0,2);
INSERT INTO estudiante (nombre, apellidos, edad, fono, email, direccion, genero, licenca_conducir, id_esc)
  VALUES ('Joel' ,'Adubiri Mondar', 30, 2832117, 'joel@gmail.com', 'Av. 6 de Agosto', 'masculino',0,3);
INSERT INTO estudiante (nombre, apellidos, edad, fono, email, direccion, genero, licenca_conducir, id_esc)
  VALUES ('Andrea' ,'Arias Ballesteros', 21, 2832118, 'andrea@gmail.com', 'Av. 6 de Agosto', 'femenino',0,4);
INSERT INTO estudiante (nombre, apellidos, edad, fono, email, direccion, genero, licenca_conducir, id_esc)
  VALUES ('Santos' ,'Montes Valenzuela', 24, 2832119, 'santos@gmail.com', 'Av. 6 de Agosto', 'masculino',0,1);

select count (*)
from estudiante as est
inner join ESCUELA as esc on est.id_esc = esc.id_esc
 where esc.nombre = 'Amor de Dios Fe y Alegria';

select count (*)
from estudiante as est
inner join ESCUELA as esc on est.id_esc = esc.id_esc
 where esc.turno = 'manana-tarde';

 select count (*)
from estudiante as est
inner join ESCUELA as esc on est.id_esc = esc.id_esc
 where est.edad > 25 and esc.turno LIKE '%tarde';