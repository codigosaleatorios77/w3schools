/*
The SQL GROUP BY Statement

The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".
The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

GROUP BY Syntax:
SELECT column_name(s) FROM table_name WHERE condition GROUP BY column_name(s) ORDER BY column_name(s); 
*/
/*
SQL GROUP BY Examples:
The following SQL statement lists the number of customers in each country:
*/
SELECT COUNT(CustomerID) As 'Quantidade', Country FROM Customers GROUP BY Country ORDER BY Country;

/*
The following SQL statement lists the number of customers in each country, sorted high to low:
*/
SELECT COUNT(CustomerID) AS 'Quantidade', Country FROM Customers GROUP BY Country ORDER BY COUNT(CustomerID) DESC;

/*
GROUP BY With JOIN Example:
The following SQL statement lists the number of orders sent by each shipper:
*/
SELECT * FROM orders;
SELECT * FROM shippers;

SELECT shippers.ShipperName, COUNT(orders.OrderID) AS 'Quantidade de Ordem' FROM orders LEFT JOIN shippers ON orders.ShipperID = shippers.ShipperID GROUP BY ShipperName;



