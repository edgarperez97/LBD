USE FARMACIA_PIA
GO  

---procedimiento alamcenado para registrar presentacion medica----
CREATE PROCEDURE RegistroDeMunicipio   
    @nom_municipio varchar(50)
as 
begin
insert into Municipio(nom_municipio)
VALUES (@nom_municipio)
end


----ejecucion de procedimiento-----
exec RegistroDeMunicipio   
@nom_municipio = N'Monterrey'

exec RegistroDeMunicipio   
@nom_municipio = N'San Nicolas de los Garza'

exec RegistroDeMunicipio   
@nom_municipio = N'San Pedro Garza Garcia'

exec RegistroDeMunicipio   
@nom_municipio = N'General Escobedo'

exec RegistroDeMunicipio   
@nom_municipio = N'Apodaca'



 ----visualizacion de tabla-----
select * from Municipio


----codigo para borrar el procedimiento------
drop procedure RegistroDeMunicipio