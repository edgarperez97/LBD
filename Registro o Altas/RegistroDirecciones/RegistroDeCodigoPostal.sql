USE FARMACIA_PIA 
GO  

---procedimiento alamcenado para registrar presentacion medica----
CREATE PROCEDURE RegistroDeCodigoPostal   
    @codigo_postal nchar(10)
as 
begin
insert into [Codigo Postal](codigo_postal)
VALUES (@codigo_postal)
end


----ejecucion de procedimiento-----
exec RegistroDeCodigoPostal    
@codigo_postal = N'64260'

exec RegistroDeCodigoPostal    
@codigo_postal = N'64220'

exec RegistroDeCodigoPostal    
@codigo_postal = N'64268'

exec RegistroDeCodigoPostal    
@codigo_postal = N'64268'

exec RegistroDeCodigoPostal    
@codigo_postal = N'64488'

exec RegistroDeCodigoPostal    
@codigo_postal = N'23456'





 ----visualizacion de tabla-----
select * from [Codigo Postal]


----codigo para borrar el procedimiento------
drop procedure RegistroDeCodigoPostal 