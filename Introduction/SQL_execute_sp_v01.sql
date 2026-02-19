USE [AdventureWorks2022]
GO

--DECLARE	@return_value int

EXEC   [dbo].[uspGetEmployeeManagers]
		@BusinessEntityID = 205

--SELECT	'Return Value' = @return_value

GO
