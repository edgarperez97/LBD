USE BDD_PIA 
GO  



---procedimiento alamcenado para registrar presentacion medica----
CREATE PROCEDURE RegistroDelaboratorio   
    @nombre_laboratorio varchar(50)
as 
begin
insert into Laboratorio (nombre_laboratorio)
VALUES (@nombre_laboratorio)
end


----ejecucion de procedimiento-----
exec RegistroDelaboratorio   
 @nombre_laboratorio = N'Farmindustria'

 exec RegistroDelaboratorio   
 @nombre_laboratorio = N'Laboratorios ac Farma S.A.'

  exec RegistroDelaboratorio   
 @nombre_laboratorio = N'Laboratorios Unidos S.A. (LUSA)'

   exec RegistroDelaboratorio   
 @nombre_laboratorio = N'Laboratorios Markos S.A.C.'

   exec RegistroDelaboratorio   
 @nombre_laboratorio = N'Productos Roche Q.F. S.A.'

    exec RegistroDelaboratorio   
 @nombre_laboratorio = N'Laboratorios Induquimica S.A.'

    exec RegistroDelaboratorio   
 @nombre_laboratorio = N'Grunenthal Peruana S.A.'

 exec RegistroDelaboratorio   
 @nombre_laboratorio = N'Boehringer Ingelheim'

  exec RegistroDelaboratorio   
 @nombre_laboratorio = N'Abbott Laboratorios S.A.'

   exec RegistroDelaboratorio   
 @nombre_laboratorio = N'Laboratorio Farmaceutico S.J. Roxfarma S.A.'

   exec RegistroDelaboratorio   
 @nombre_laboratorio = N'Abeefe Bristol Myers Squibb'

    exec RegistroDelaboratorio   
 @nombre_laboratorio = N'Laboratorios Elifarma S.A.'

    exec RegistroDelaboratorio   
 @nombre_laboratorio = N'B. Braun Medical Peru S.A.'


 ----visualizacion de tabla-----
select * from Laboratorio


----codigo para borrar el procedimiento------
drop procedure RegistroDelaboratorio