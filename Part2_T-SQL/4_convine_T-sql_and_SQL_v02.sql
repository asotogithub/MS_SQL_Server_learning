-- T-SQL - Convine T-sql with sql.


--create table tb_tsql(
--tb_name  nvarchar(20),
--tb_year int);

DECLARE @textos nvarchar(20)
DECLARE @year INT
DECLARE @date DATE

SET @date = getdate()

select @textos = tb_name, @year = tb_year from tb_tsql where tb_year = 32;
print @textos + '   ' +  CONVERT (nvarchar(20),@year)
print @date


SELECT FORMAT(GETDATE(), 'dd/MM/yyyy');      -- 22/02/2026
SELECT FORMAT(GETDATE(), 'MM-dd-yyyy');      -- 02-22-2026
SELECT FORMAT(GETDATE(), 'yyyyMMdd');        -- 20260222
SELECT FORMAT(GETDATE(), 'dd MMM yyyy');     -- 22 Feb 2026

SELECT FORMAT(GETDATE(), 'yyyy-MM-dd HH:mm:ss');


--T-SQL - IF sentence.

DECLARE @num1 INT
DECLARE @num2 INT

SET   @num1 = 10
SET  @num2 = 5

IF @num1 > @num2
 PRINT 'This is TRUE'
ELSE
 PRINT 'FALSE!'





-- T-SQL  - WHILE
DECLARE @cont int
SET @cont = 0
   WHILE (@cont <100)
      BEGIN
	    PRINT 'Hello I am num: ' + CONVERT(NVARCHAR(20), @cont)
		set @cont = @cont + 1
	  END


-- T-SQL - CASE (switch)

DECLARE @avion nvarchar(50)
DECLARE @estado nvarchar(50)
DECLARE @aviso nvarchar(50)

set @avion = 'condor'
set @estado  = 'volando'

set @aviso = (case @estado
                when 'volando' then 'el avion: ' + @avion + ' esta volando'
				when 'detenido' then 'el avion: ' + @avion + ' esta detenido'
				when 'cargado' then 'el avion: ' + @avion + ' se esta cargando'
			   end
				)

PRINT @aviso




