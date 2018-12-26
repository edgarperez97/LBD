USE FARMACIA_PIA 
GO  

---procedimiento alamcenado para registrar presentacion medica----
CREATE PROCEDURE RegistroDeEstado   
    @nom_estado varchar(50)
as 
begin
insert into Estado(nom_estado)
VALUES (@nom_estado)
end


----ejecucion de procedimiento-----
exec RegistroDeEstado   
@nom_estado = N'Nuevo León'

exec RegistroDeEstado   
@nom_estado = N'Coahuila'

exec RegistroDeEstado   
@nom_estado = N'Tamaulipas'

exec RegistroDeEstado   
@nom_estado = N'Ciudad de México'

exec RegistroDeEstado   
@nom_estado = N'Chihuahua'




 ----visualizacion de tabla-----
select * from Estado


----codigo para borrar el procedimiento------
drop procedure RegistroDeEstado