USE BDD_PIA
GO  

CREATE procedure EliminarMedicamentoID

	@id_medicamento varchar(50)
as
delete  from Medicamento 
 where @id_medicamento = id_medicamento

GO


----ejecucion de procedimiento-----
exec EliminarMedicamentoID 'BE5BD82E-102C-45BD-B861-295D281B5DB4'


 ----visualizacion de tabla-----
select * from Medicamento

----codigo para borrar el procedimiento------
drop procedure EliminarMedicamentoID 