/*
The SQL UNION Operator

The UNION operator is used to combine the result-set of two or more SELECT statements.
    -Every SELECT statement within UNION must have the same number of columns
    -The columns must also have similar data types
    -The columns in every SELECT statement must also be in the same order

UNION Syntax:
SELECT column_name(s) FROM table1 UNION SELECT column_name(s) FROM table2; 

UNION ALL Syntax:
The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:
SELECT column_name(s) FROM table1 UNION ALL SELECT column_name(s) FROM table2; 
 
 The column names in the result-set are usually equal to the column names in the first SELECT statement.
*/
/*
SQL UNION Example:
The following SQL statement returns the cities (only distinct values) from both the "Customers" and the "Suppliers" table:
*/

SELECT City FROM customers UNION SELECT City FROM suppliers ORDER BY City;

/*
If some customers or suppliers have the same city, each city will only be listed once, because UNION selects only distinct values.
Use UNION ALL to also select duplicate values!
*/
SELECT City FROM customers UNION ALL SELECT City FROM suppliers ORDER BY City;

/*
SQL UNION With WHERE:
The following SQL statement returns the German cities (only distinct values) from both the "Customers" and the "Suppliers" table:
*/
SELECT City,Country FROM Customers WHERE Country = 'Germany' UNION SELECT City,Country FROM Suppliers WHERE Country = 'Germany' ORDER BY City;

/*
SQL UNION ALL With WHERE:
The following SQL statement returns the German cities (duplicate values also) from both the "Customers" and the "Suppliers" table:
*/
SELECT City,Country FROM Customers WHERE Country = 'Germany' UNION ALL SELECT City,Country FROM Suppliers WHERE Country = 'Germany' ORDER BY City;

/*
Another UNION Example:
The following SQL statement lists all customers and suppliers:
*/
SELECT 'Customer' AS Type, ContactName, City, Country FROM Customers UNION SELECT 'Supplier', ContactName, City, Country FROM Suppliers;




 