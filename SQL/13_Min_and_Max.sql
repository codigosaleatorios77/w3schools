/*
The SQL MIN() and MAX() Functions
The MIN() function returns the smallest value of the selected column.
The MAX() function returns the largest value of the selected column.
*/
/*
Syntax:
SELECT MIN(column_name) FROM table_name WHERE condition; 
SELECT MAX(column_name) FROM table_name WHERE condition; 

MIN Example
Find the lowest price:
*/
SELECT MIN(Price) FROM Products;

/*
MAX Example
Find the highest price:
*/
SELECT MAX(Price) FROM Products;

/*
Set Column Name (Alias)
When you use MIN() or MAX(), the returned column will be named MIN(field) or MAX(field) by default.
To give the column a new name, use the AS keyword:
*/
SELECT MAX(Price) AS 'Maior Preço' FROM Products;