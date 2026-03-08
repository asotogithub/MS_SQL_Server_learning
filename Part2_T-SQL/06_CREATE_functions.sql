-- create function return table.
-- que muestre los registros de customers

CREATE FUNCTION fn_get_cus_by_str(@str AS VARCHAR(50)) 
RETURNS TABLE
AS
   RETURN (SELECT CustomerId
						  ,FirstName + ' '+ LastName as Nombre_comp
						  ,Email
						  --,CreatedAt
			FROM [DB_NEW_DB].[SALES].[Customers]
			WHERE FirstName + ' '+ LastName LIKE '%'+@str+'%'
			);

SELECT * FROM fn_get_cus_by_str('oto');


-- create function return data from 2 tables.
-- que muestre los registros de customers

CREATE FUNCTION fn_get_cus_ord_id( @cus_ui AS int) 
RETURNS TABLE
AS
   RETURN (SELECT cus.CustomerId
			     ,cus.FirstName + ' '+ cus.LastName as Nombre_comp
				, ord.OrderId
				, ord.TotalAmount
				, ord.OrderDate
						  --,CreatedAt
			FROM [DB_NEW_DB].[SALES].[Customers] cus INNER JOIN DB_NEW_DB.SALES.Orders ord
			      ON ord.CustomerId = cus.CustomerId
			WHERE cus.CustomerId = @cus_ui
			);

-- execute process
SELECT * FROM fn_get_cus_ord_id(2);







