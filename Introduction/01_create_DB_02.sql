---
-- CREATE DATABASE  DB_CURSO
---



DECLARE @db_name VARCHAR(50) = 'DB_CURSO';

   SELECT name FROM sys.databases WHERE name = N'DB_CURSO';
   IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = @db_name)
      BEGIN
	      CREATE DATABASE DB_CURSO ;-- @db_name
		   PRINT 'CREATE DB: ' + @db_name
	  END
    ELSE
	  PRINT 'ALREADY THIS DB: ' + @db_name



GO
