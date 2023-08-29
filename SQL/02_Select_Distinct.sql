/*
The SQL SELECT DISTINCT Statement

The SELECT DISTINCT statement is used to return only distinct (different) values.
Inside a table, a column often contains many duplicate values; and sometimes you only want to list the different (distinct) values.

SELECT DISTINCT Syntax:
SELECT DISTINCT column1, column2, ...FROM table_name; 
*/
/*
SELECT Example Without DISTINCT
The following SQL statement selects all (including the duplicates) values from the "Country" column in the "Customers" table:
*/
SELECT Country FROM customers;

/*
SELECT DISTINCT Examples
The following SQL statement selects only the DISTINCT values from the "Country" column in the "Customers" table:
*/
SELECT DISTINCT Country FROM Customers;
/*The following SQL statement lists the number of different (distinct) customer countries:*/
SELECT COUNT(DISTINCT Country) FROM Customers;
/*_____________________________________________________________________________________________*/
SELECT DISTINCT City FROM Customers;
SELECT COUNT(DISTINCT City) FROM Customers;


