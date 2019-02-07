# How to work with cursors
## Exercises for the My Guitar Shop

1.	Write a script that creates a cursor for a result set that consists of the ProductName and ListPrice columns for each product with a list price that’s greater than $700. The rows in this result set should be sorted in descending sequence by list price. Then, the script should print the product name and list price for each product so it looks something like this:
Gibson SG, $2517.00
Gibson Les Paul, $1199.00

2.	Write a script to declare and use a cursor for the following SELECT statement. Use a WHILE loop to fetch each row in the result set. Omit the INTO clause to fetch directly to the Results tab.
SELECT LastName, AVG(ShipAmount) AS ShipAmountAvg
FROM Customers JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID
GROUP BY LastName;

3.	Modify the solution to exercise 1 to fetch each row into a set of local variables. Use the PRINT statement to return each row in the format “Name, $0.00” to the Messages tab.
