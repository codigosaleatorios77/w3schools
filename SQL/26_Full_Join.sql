/*
SQL FULL OUTER JOIN Keyword

The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.
FULL OUTER JOIN and FULL JOIN are the same.

FULL OUTER JOIN Syntax:
SELECT column_name(s) FROM table1 FULL OUTER JOIN table2 ON table1.column_name = table2.column_name WHERE condition;
FULL OUTER JOIN can potentially return very large result-sets!

SQL FULL OUTER JOIN Example
The following SQL statement selects all customers, and all orders:
*/
SELECT Customers.CustomerName, Orders.OrderID FROM Customers FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID ORDER BY Customers.CustomerName;

/*
The FULL OUTER JOIN keyword returns all matching records from both tables whether the other table matches or not.
So, if there are rows in "Customers" that do not have matches in "Orders", or if there are rows in "Orders" that do not have matches in "Customers", those rows will be listed as well.
*/
