/*
INNER JOIN Keyword

The INNER JOIN keyword selects records that have matching values in both tables.

INNER JOIN Syntax:
SELECT column_name(s)
FROM table1 INNER JOIN table2 ON table1.column_name = table2.column_name;
*/
/*
SQL INNER JOIN Example:

The following SQL statement selects all orders with customer information:
*/
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

/* 
The INNER JOIN keyword selects all rows from both tables as long as there is a match between the columns.
If there are records in the "Orders" table that do not have matches in "Customers", these orders will not be shown!
*/

/*
 JOIN Three Tables
 
 The following SQL statement selects all orders with customer and shipper information:
*/
SELECT orders.OrderID,customers.CustomerName,shippers.ShipperName,Orders.OrderDate FROM ((orders INNER JOIN customers ON orders.CustomerID = customers.CustomerID) INNER JOIN shippers ON orders.ShipperID = shippers.ShipperID);