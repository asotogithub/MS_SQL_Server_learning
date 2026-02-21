---
--  Create Database with Dynamic commands
--  Note: I am ussing a Docker for a MSSQL Server
---

DECLARE @DatabaseName NVARCHAR(128); -- sysname is also an option
DECLARE @SqlQuery NVARCHAR(MAX);   --Max Value

-- Set the desired database name
SET @DatabaseName = 'DB_CURSO2';
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = @DatabaseName)
   BEGIN
   -- Recommended: Use QUOTENAME() for security to handle special characters and prevent SQL injection
   SET @DatabaseName = QUOTENAME(@DatabaseName);

   -- Construct the dynamic SQL query string
   SET @SqlQuery = 'CREATE DATABASE ' + @DatabaseName;

   -- Optional: Add more options to the CREATE DATABASE statement dynamically
    SET @SqlQuery = @SqlQuery + ' ON PRIMARY '  + ' , SIZE = 8192KB , FILEGROWTH = 65536KB )';

    -- Print the query for verification (optional)
    PRINT @SqlQuery;

    -- Execute the dynamic SQL query
   EXECUTE (@SqlQuery);
   END
ELSE
   PRINT 'THE '+@DatabaseName+ ' Database already exists';
