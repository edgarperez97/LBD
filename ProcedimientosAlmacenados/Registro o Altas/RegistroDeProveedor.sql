USE FARMACIA_PIA 
GO  

---procedimiento alamcenado para registrar presentacion medica----
CREATE PROCEDURE RegistroDeProveedor   
	@nombre_proveedor varchar(30),
	@apellidoPaterno_proveedor varchar(30),
	@apellidoMaterno_proveedor varchar(30),
	@edad_proveedor int,
	@direccion_proveedor varchar(50),
	@nom_municipio varchar(50), 
	@nom_estado varchar(50),
	@codigo_postal nchar(10), 
	@telefono_proveedor nchar(15)
as 
begin
insert into Proveedor(id_proveedor,nombre_proveedor,apellidoPaterno_proveedor,apellidoMaterno_proveedor,edad_proveedor,
					direccion_proveedor,nom_municipio,nom_estado,codigo_postal,telefono_proveedor)
VALUES (NEWID(), @nombre_proveedor,@apellidoPaterno_proveedor,@apellidoMaterno_proveedor,@edad_proveedor,
					@direccion_proveedor, @nom_municipio, @nom_estado, @codigo_postal, @telefono_proveedor)
end


----ejecucion de procedimiento-----
exec RegistroDeProveedor    
	 @nombre_proveedor = N'Abraham', @apellidoPaterno_proveedor = N'Soto', @apellidoMaterno_proveedor = 'Aguilar',
		@edad_proveedor = N'33', @direccion_proveedor = N'almazan no.256', @nom_municipio = N'Monterrey', @nom_estado = N'Nuevo León', 
			@codigo_postal = N'64260', @telefono_proveedor = N'8121036934'



exec RegistroDeProveedor    
	 @nombre_proveedor = N'Bruno', @apellidoPaterno_proveedor = N'Diaz', @apellidoMaterno_proveedor = 'Estrada',
		@edad_proveedor = N'45', @direccion_proveedor = N'Paseo del bosque no.48', @nom_municipio = N'San Jery', @nom_estado = N'Guerrero', 
			@codigo_postal = N'23456', @telefono_proveedor = N'4566372682'


 ----visualizacion de tabla-----
select * from Proveedor


----codigo para borrar el procedimiento------
drop procedure RegistroDeProveedor 