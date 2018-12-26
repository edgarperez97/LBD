USE FARMACIA_PIA 
GO  

---procedimiento alamcenado para registrar presentacion medica----

create procedure [dbo].[BuscarMedicamentoPorNombre](@ValorMedicamento varchar(50))
as
begin

	select nombre_medicamento from Medicamento
	where nombre_medicamento = @ValorMedicamento;

end

----ejecucion de procedimiento-----

exec BuscarMedicamentoPorNombre Diclofenaco

exec BuscarMedicamentoPorNombre Ciprofloxacino

exec BuscarMedicamentoPorNombre 'Complejo B'


 ----visualizacion de tabla-----
select * from Medicamento


----codigo para borrar el procedimiento------
drop procedure BuscarMedicamentoPorNombre 