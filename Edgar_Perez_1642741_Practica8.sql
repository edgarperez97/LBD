USE [Lab1]
GO

--DELETE / AFTER
create trigger [dbo].[TR_DOCTOR]
on [dbo].[Doctor]
AFTER DELETE
	AS
	PRINT N'SE ELIMINO UN DOCTOR';
GO


--UPDATE / AFTER
create trigger [dbo].[TR_PACIENTE]
on [dbo].[Paciente]
AFTER UPDATE
	AS
	IF UPDATE (Id_Pac)
	BEGIN
	PRINT N'SE INSERTO NUEVO PACIENTE';
END
GO

--INSERT / INSTEAD
create trigger [dbo].[TR_RECETA]
on [dbo].[Paciente]
INSTEAD of INSERT
	AS
	PRINT N'SE CREO NUEVA RECETA';
GO