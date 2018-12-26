USE BDD_PIA 
GO  

---procedimiento alamcenado para registrar presentacion medica----
CREATE PROCEDURE ActualizacionDeMedicamento   
	@nombre_medicamento varchar(50),
	@precio_publico float,
	@precio_compra float,
	@fecha_cad date,
	@id_presentacionMedica int,
	@sustanciaActiva varchar(50),
	@nombre_laboratorio varchar(50),
	@id_accionTerapeutica int,
	@id_proveedor varchar(50)

as
update Medicamento set @precio_publico = precio_publico,
							@precio_compra = precio_compra,
							 @fecha_cad = fecha_cad, 
							 @id_presentacionMedica = id_presentacionMedica,
							 @sustanciaActiva = sustanciaActiva,
							 @nombre_laboratorio = nombre_laboratorio,
							 @id_accionTerapeutica = id_accionTerapeutica,
							 @id_proveedor = id_proveedor
where @nombre_medicamento = nombre_medicamento
GO


exec ActualizacionDeMedicamento  ciprofloxacino, 13.00, 11.00,'2019-11-30' ,1,Diclofenac,genoma,3,'7DC63A04-5C42-436C-BF72-3AC5148630A3'



 ----visualizacion de tabla-----
select * from Medicamento


----codigo para borrar el procedimiento------
drop procedure ActualizacionDeMedicamento 