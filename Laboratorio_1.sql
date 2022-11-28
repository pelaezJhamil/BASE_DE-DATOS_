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
WHERE est.edad >20 and est.edad <30 and est.licencia_conducir = 1;