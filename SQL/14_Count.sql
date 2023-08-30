/*
The SQL COUNT() Function
The COUNT() function returns the number of rows that matches a specified criterion.

Syntax:
SELECT COUNT(column_name) FROM table_name WHERE condition;


Find the total number of products in the Products table:
*/
SELECT COUNT(*) FROM Products;

/*
Add a Where Clause
You can add a WHERE clause to specify conditions:

Find the number of products where price is higher than 20:
*/

SELECT COUNT(*) FROM Products WHERE Price > 20;

/*
Specify Column
You can specify a column name instead of the asterix symbol (*).

If you specify a column instead of (*), NULL values will not be counted.
Find the number of products where the ProductName is not null:
*/
SELECT COUNT(ProductName) FROM Products;

/*
Ignore Duplicates

You can ignore duplicates by using the DISTINCT keyword in the COUNT function.
If DISTINCT is specified, rows with the same value for the specified column will be counted as one.

How many different prices are there in the Products table:
*/
SELECT COUNT(DISTINCT Price) FROM Products;

/*
Use an Alias
Give the counted column a name by using the AS keyword.
Name the column [number of records]:
*/
SELECT COUNT(*) AS 'number of records' FROM Products;