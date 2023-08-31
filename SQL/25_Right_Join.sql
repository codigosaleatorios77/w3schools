/*
SQL RIGHT JOIN Keyword

The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1).
The result is 0 records from the left side, if there is no match.

RIGHT JOIN Syntax:
SELECT column_name(s) FROM table1 RIGHT JOIN table2 ON table1.column_name = table2.column_name;

In some databases RIGHT JOIN is called RIGHT OUTER JOIN.
*/
/*
SQL RIGHT JOIN Example:
The following SQL statement will return all employees, and any orders they might have placed:
*/
SELECT orders.OrderID, employees.FirstName,employees.LastName,orders.OrderDate FROM orders RIGHT JOIN employees ON orders.EmployeeID = employees.EmployeeID ORDER BY orders.OrderID;