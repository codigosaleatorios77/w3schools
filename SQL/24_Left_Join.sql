/*
LEFT JOIN Keyword

The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2).
The result is 0 records from the right side, if there is no match.

LEFT JOIN Syntax:
SELECT column_name(s) FROM table1 LEFT JOIN table2 ON table1.column_name = table2.column_name;

In some databases LEFT JOIN is called LEFT OUTER JOIN.

SQL LEFT JOIN Example:
The following SQL statement will select all customers, and any orders they might have:
*/
SELECT customers.CustomerName,customers.ContactName,customers.Country,orders.OrderID,orders.OrderDate FROM customers LEFT JOIN Orders ON customers.CustomerID = orders.CustomerID order by customers.CustomerName;

/*
Note: The LEFT JOIN keyword returns all records from the left table (Customers), even if there are no matches in the right table (Orders).
*/
