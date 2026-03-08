-- create a function

create function fn_calculaMayor
( @valor1 AS DECIMAL(10,2),
  @valor2 AS DECIMAL(10,2)

) RETURNS DECIMAL(10,2)
AS
BEGIN
   declare @resultado decimal(10,2)
   set @resultado = (@valor1 + @valor2)
   RETURN @resultado
END



 select dbo.fn_calculaMayor(2.0, 10.4) as promedo
 go


 print 'Promedio: ' + cast( dbo.fn_calculaMayor(2.0, 10.4) as char(12))



IF OBJECT_ID('fechaletras') IS NOT NULL
BEGIN
  drop function fechletras
END
GO


--  Create a function to return fechas en texto

CREATE FUNCTION fn_fechaletras (@fecha as DATE) returns varchar(20)
AS
BEGIN
    DECLARE @resultado VARCHAR(100)
	SET @resultado = CONCAT(DAY(@fecha), ' de ', datename(month, @fecha), ' del ', year(@fecha))

	return @resultado
END

select dbo.fn_fechaletras('2015-08-12') as [fecha actual]
go
