/*
The SQL AVG() Function
The AVG() function returns the average value of a numeric column.

Syntax:
SELECT AVG(column_name) FROM table_name WHERE condition;

NULL values are ignored.
Find the average price of all products:
*/
SELECT AVG(Price) FROM Products;

/*
Higher Than Average
To list all records with a higher price than average, we can use the AVG() function in a sub query:
Return all products with a higher price than the average price:
*/
SELECT * FROM Products WHERE Price > (SELECT AVG(Price) FROM Products) ORDER BY Price;