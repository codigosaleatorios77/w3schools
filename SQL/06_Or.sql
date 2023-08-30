/*
OR Operator
The WHERE clause can contain one or more OR operators.

The OR operator is used to filter records based on more than one condition, like if you want to return all customers from Germany but also those from Spain:
Select all customers from Germany or Spain:
*/
SELECT * FROM Customers WHERE Country = 'Germany' OR Country = 'Spain' ORDER BY Country DESC;

/*
Syntax:
SELECT column1, column2, ... FROM table_name WHERE condition1 OR condition2 OR condition3 ...; 

OR vs AND:
The OR operator displays a record if any of the conditions are TRUE.
The AND operator displays a record if all the conditions are TRUE.
*/
/*
At Least One Condition Must Be True
The following SQL statement selects all fields from Customers where either City is "Berlin", CustomerName starts with the letter "G" or Country is "Norway":
*/
SELECT * FROM Customers WHERE City = 'Berlin' OR CustomerName LIKE 'G%' OR Country = 'Norway';

/*
Combining AND and OR
Select all customers that either: are from Spain and starts with either "G", or starts with the letter "R":
*/

SELECT * FROM Customers WHERE Country = 'Spain' AND CustomerName LIKE 'G%' OR CustomerName LIKE 'R%';