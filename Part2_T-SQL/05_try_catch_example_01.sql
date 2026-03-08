-- T-SQL  -  TRY CATCH


DECLARE @edad INT
set @edad = 'twenty'
print @edad


-------------

	BEGIN TRY
		DECLARE @edad INT
		set @edad = 'twenty'
		print @edad
	END TRY
	BEGIN CATCH
	    PRINT 'Error: the number is not valid'
		PRINT error_message()
	END CATCH


------------------------

-- CURSOR --  the cursor is loaded into the memory to use in the logic.

-- Basic CURSOR

	DECLARE cur_example CURSOR
	FOR SELECT * FROM SALES.Customers
--- END declare cursor

	OPEN cur_example
	FETCH NEXT FROM cur_example   --- PRIOR, NEXT, LAST FIRST ---
	CLOSE cur_example

	-- TO FREEDOM THE MEMORY
	DEALLOCATE cur_example







