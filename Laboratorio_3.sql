USE lab_respuestas
CREATE FUNCTION operaciones(@num1 INTEGER, @num2 INTEGER, @action VARCHAR(20))
RETURNS INTEGER AS 
BEGIN
	DECLARE @response INTEGER = 0;

	IF (@action = 'suma')
		BEGIN 
		SET @response = @num1 +@num2;
		END;

	IF (@action = 'resta')
		BEGIN 
		SET @response = @num1 - @num2;
		END;

	IF (@action = 'multiplicacion')
		BEGIN 
		SET @response = @num1 * @num2;
		END;

	IF (@action = 'division')
		BEGIN 
		SET @response = @num1 / @num2;
		END;

	RETURN @response;

END;

select dbo.operaciones(13,0,'Suma') AS suma;


CREATE FUNCTION operaciones_num(@num1 INTEGER, @num2 INTEGER, @action VARCHAR(20))
RETURNS INTEGER AS 
BEGIN
	DECLARE @response INTEGER = 0;
	IF (@action = 'suma')
		BEGIN 
		SET @response = @num1 +@num2;
		END;

	IF (@action = 'resta')
		BEGIN 
		SET @response = @num1 - @num2;
		END;

	IF (@action = 'multiplicacion')
		BEGIN 
		SET @response = @num1 * @num2;
		END;

	IF (@action = 'division')
		BEGIN 
		SET @response = @num1 / @num2;
		END;

	RETURN 1;

END;

select dbo.operaciones_num(13,0,'dba') AS suma;
 
SELECT est.*
FROM estudiante AS est;

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
FROM estudiante AS est
WHERE est.edad > 25;

create function mayores_acierta_edad(@edad integer)
returns integer as
begin 
	declare @response integer = 0;

	SELECT @response = count(*)
	FROM estudiante AS est
	WHERE est.edad > @edad;

	return @response;
end;

select dbo.mayores_acierta_edad (25);

Select count(est.id_esc)
from estudiante as est
	inner join escuela as esc on est.id_esc = esc.id_esc
	WHERE est.genero = genero and
		  est.edad > edad and 
		  esc.nombre = 'Andres Bello'; 

select est.*
from estudiante AS est
where est.nombre = 'Santos';

SELECT MAX(est.nombre)
from estudiante AS est;
