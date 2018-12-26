USE BDD_PIA
GO  

---procedimiento alamcenado para registrar presentacion medica----
CREATE PROCEDURE RegistroDePresentacionMedica  
    @id_presentacionMedica int,
	@descripcion varchar(50)
as 
begin
insert into PresentacionMedica(id_presentacionMedica,descripcion)
VALUES (@id_presentacionMedica,@descripcion)
end



----ejecucion de procedimiento-----
exec RegistroDePresentacionMedica 1,'tabletas'

exec RegistroDePresentacionMedica 2,'suspensión'

exec RegistroDePresentacionMedica 3,'solución inyectable'

exec RegistroDePresentacionMedica 4,'capsulas'

exec RegistroDePresentacionMedica 5,'supositorio'

exec RegistroDePresentacionMedica 6,'spray'


----visualizacion de tabla-----
select * from PresentacionMedica


----codigo para limpiar el procedimiento------
drop procedure RegistroDePresentacionMedica
