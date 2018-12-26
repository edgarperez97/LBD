USE BDD_PIA 
GO  

---procedimiento alamcenado para registrar presentacion medica----
CREATE PROCEDURE RegistroDeAccionTerapeutica 
    @id_accionTerapeutica int,
	@descripcion varchar(30)
as 
begin
insert into [Accion Terapeutica] (id_accionTerapeutica,descripcion)
VALUES (@id_accionTerapeutica,@descripcion)
end



----ejecucion de procedimiento-----
exec RegistroDeAccionTerapeutica 1,'antibiotico'

exec RegistroDeAccionTerapeutica 2,'antiviral'

exec RegistroDeAccionTerapeutica 3,'antigripal'

exec RegistroDeAccionTerapeutica 4,'antihistaminico'

exec RegistroDeAccionTerapeutica 5,'antipiretico'

exec RegistroDeAccionTerapeutica 6,'antidiareico'

exec RegistroDeAccionTerapeutica 7,'antiinflamatorio'

exec RegistroDeAccionTerapeutica 8,'antialergico'

exec RegistroDeAccionTerapeutica 9,'antiacido'

exec RegistroDeAccionTerapeutica 10,'antitucivo'

exec RegistroDeAccionTerapeutica 11,'analgesico'

exec RegistroDeAccionTerapeutica 12,'laxante'

exec RegistroDeAccionTerapeutica 13,'analgesico'

exec RegistroDeAccionTerapeutica 14,'anastesico'

exec RegistroDeAccionTerapeutica 15,'anticonvulsivo'

exec RegistroDeAccionTerapeutica 16,'inmunodepresor'





----visualizacion de tabla-----
select * from [Accion Terapeutica]


----codigo para borrar el procedimiento------
drop procedure RegistroDeAccionTerapeutica