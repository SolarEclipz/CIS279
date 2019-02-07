DECLARE @LastName varchar(50)

DECLARE Customers_Cursor cursor
STATIC
FOR
	SELECT LastName, AVG(ShipAmount) AS ShipAmountAvg
	FROM Customers JOIN Orders
		ON Customers.CustomerID = Orders.CustomerID
	GROUP BY LastName

OPEN CustomersOrders_Cursor

FETCH NEXT FROM Customers_Cursor
WHILE @@FETCH_STATUS = 0
	BEGIN
		FETCH NEXT FROM Customers_Cursor
	END
CLOSE Customers_Cursor
DEALLOCATE Customers_Cursor
