USE BDD_PIA
GO  

---procedimiento alamcenado para registrar presentacion medica----
CREATE PROCEDURE RegistroDeComposicion   
    @sustanciaActiva varchar(30),
	@mg nchar(10)
as 
begin
insert into Composicion (sustanciaActiva,mg)
VALUES (@sustanciaActiva,@mg)
end


----ejecucion de procedimiento-----
exec RegistroDeComposicion 
 @sustanciaActiva = N'diacereina',@mg = N'123'

exec RegistroDeComposicion 
 @sustanciaActiva = N'meloxicam',@mg = N'15'



  ----visualizacion de tabla-----
select * from Composicion


----actualizacion de tabla-----
update Composicion
SET mg = '50'
WHERE sustanciaActiva = 'diacereina'



----codigo para borrar el procedimiento------
drop procedure RegistroDeComposicion