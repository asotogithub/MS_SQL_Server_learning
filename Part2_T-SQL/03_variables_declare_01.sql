-- T-SQL   --- VARIABLES ----
---
--
-- Declare Txt
DECLARE @v_texto nvarchar(20)
SET @v_texto = 'Hello World!'
--Declare number

DECLARE @num INT
SET @num = 35

PRINT @v_texto 
PRINT @num 
PRINT @v_texto + ' cast Number to String :' + CONVERT(nvarchar(20), @num) 

