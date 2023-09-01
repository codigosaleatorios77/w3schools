/*
SQL HAVING Clause

The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.

HAVING Syntax
SELECT column_name(s) FROM table_name WHERE condition GROUP BY column_name(s) HAVING condition ORDER BY column_name(s);
*/
/*
SQL HAVING Examples:
The following SQL statement lists the number of customers in each country. Only include countries with more than 5 customers:
*/
SELECT COUNT(CustomerID) AS 'Quantidade Customer', Country FROM customers GROUP BY Country HAVING COUNT(Country) > 5 ORDER BY COUNT(CustomerID) DESC;
/*
The following SQL statement lists the employees that have registered more than 10 orders:
*/
SELECT employees.LastName, employees.FirstName, COUNT(orders.OrderID) AS 'Quantidade de Ordens' FROM orders inner join employees ON Orders.EmployeeID = employees.EmployeeID group by LastName having count(orders.OrderID) > 10;
/*
The following SQL statement lists if the employees "Davolio" or "Fuller" have registered more than 25 orders:
*/
SELECT employees.LastName, employees.FirstName, COUNT(orders.OrderID) AS 'Quantidade de Ordens' FROM orders inner join employees ON Orders.EmployeeID = employees.EmployeeID WHERE LastName = 'Davolio' OR LastName = 'Fuller' group by LastName having count(orders.OrderID) > 25;


