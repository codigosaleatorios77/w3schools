/*
The SQL WHERE Clause

The WHERE clause is used to filter records.
It is used to extract only those records that fulfill a specified condition.

WHERE Syntax:
SELECT column1, column2, ... FROM table_name WHERE condition; 

The WHERE clause is not only used in SELECT statements, it is also used in UPDATE, DELETE, etc.!
*/
/*
WHERE Clause Example
The following SQL statement selects all the customers from the country "Mexico", in the "Customers" table:
*/
SELECT * FROM Customers WHERE Country='Mexico';

/*
Text Fields vs. Numeric Fields
SQL requires single quotes around text values (most database systems will also allow double quotes).
However, numeric fields should not be enclosed in quotes:
*/
SELECT * FROM Customers WHERE CustomerID = 1;

/* 
Operators in The WHERE Clause:
The following operators can be used in the WHERE clause:
= 	Equal
> 	Greater than
< 	Less than
>= 	Greater than or equal
<= 	Less than or equal
<> 	Not equal. Note: In some versions of SQL this operator may be written as !=
BETWEEN 	Between a certain range
LIKE 	Search for a pattern
IN 	To specify multiple possible values for a column
*/
SELECT * FROM Products WHERE Price = 18;
SELECT * FROM Products WHERE Price > 30;
SELECT * FROM Products WHERE Price < 30;
SELECT * FROM Products WHERE Price >= 40;
SELECT * FROM Products WHERE Price <= 40;
SELECT * FROM Products WHERE  Price <> 18;
SELECT * FROM Products WHERE Price BETWEEN 50 AND 60;
SELECT * FROM Customers WHERE City LIKE 's%';
SELECT * FROM Customers WHERE City IN ('Paris','London');








