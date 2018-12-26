USE BDD_PIA 
GO  

---procedimiento alamcenado para registrar presentacion medica----
CREATE PROCEDURE RegistroDeMedicamento   
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
begin
insert into Medicamento (id_medicamento,nombre_medicamento,precio_publico,precio_compra,
						fecha_cad,id_presentacionMedica,sustanciaActiva,nombre_laboratorio,
						id_accionTerapeutica,id_proveedor)
VALUES (NEWID(),@nombre_medicamento,@precio_publico,@precio_compra,
				@fecha_cad,@id_presentacionMedica,@sustanciaActiva,
				@nombre_laboratorio,@id_accionTerapeutica,@id_proveedor)
end

----ejecucion de procedimiento-----
exec RegistroDeMedicamento
	 @nombre_medicamento = N'Diclofenaco',@precio_publico = N'12.00',@precio_compra = N'17.00',
				@fecha_cad  = N'2018-01-18' , @id_presentacionMedica = N'1', @sustanciaActiva = 'Diclofenac',
		@nombre_laboratorio = N'genomalab', @id_accionTerapeutica = N'2',
		 @id_proveedor = N'26AE5E18-7DEC-4E50-A080-834566C1DCD3'


exec RegistroDeMedicamento
	 @nombre_medicamento = N'Ciprofloxacino',@precio_publico = N'45.00',@precio_compra = N'30.00',
				@fecha_cad  = N'2019-07-18' , @id_presentacionMedica = N'2', @sustanciaActiva = 'penicilina',
		@nombre_laboratorio = N'Farmindustria', @id_accionTerapeutica = N'3',
		 @id_proveedor = N'7DEB6798-D84B-4B2B-85A0-F96ECFC70A94'


exec RegistroDeMedicamento
	 @nombre_medicamento = N'Complejo B',@precio_publico = N'64.00',@precio_compra = N'45.00',
				@fecha_cad  = N'2019-10-24' , @id_presentacionMedica = N'2', @sustanciaActiva = 'Vitamina B',
		@nombre_laboratorio = N'Farma S.A.', @id_accionTerapeutica = N'4',
		 @id_proveedor = N'87908939-EF1A-4290-B447-555C127EACAF'


 ----visualizacion de tabla-----
select * from Medicamento


----codigo para borrar el procedimiento------
drop procedure RegistroDeMedicamento 