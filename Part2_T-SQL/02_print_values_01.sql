-- Example of an ad-hoc anonymous block equivalent in SQL Server
DECLARE @currentDate DATETIME = GETDATE(); -- Declaration of local variables
DECLARE @name VARCHAR(50) = 'ABEL SOTO';
BEGIN
    SET NOCOUNT ON; -- Control statement
    -- Multiple SQL statements
    PRINT 'The current date is: ' + CAST(@currentDate AS VARCHAR(50));
    -- Other DML or DDL statements can go here
	PRINT @name;
	
END;


--[dbo].[sp_renamediagram]