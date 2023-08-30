/*
The NOT Operator

The NOT operator is used in combination with other operators to give the opposite result, also called the negative result. 
In the select statement below we want to return all customers that are NOT from Spain:
Select only the customers that are NOT from Spain:
*/
SELECT * FROM customers WHERE NOT Country = 'Spain' ORDER BY Country;

/*
In the example above, the NOT operator is used in combination with the = operator, but it can be used in combination with other comparison and/or logical operators. See examples below.

Syntax:
SELECT column1, column2, ... FROM table_name WHERE NOT condition; 

NOT LIKE
Select customers that does not start with the letter 'A':
*/
 SELECT * FROM Customers WHERE CustomerName NOT LIKE 'A%' ORDER BY CustomerName;
 /*
 NOT BETWEEN
 Select customers with a customerID not between 10 and 60:
 */
SELECT * FROM Customers WHERE CustomerID NOT BETWEEN 10 AND 60;

/* NOT IN
Select customers that are not from Paris or London:
*/
SELECT * FROM Customers WHERE NOT City = 'Paris' AND NOT City = 'London' ORDER BY City;
SELECT * FROM Customers WHERE City NOT IN ('Paris','London');

/*
NOT Greater Than
Select customers with a CustomerId not greater than 50:
*/
SELECT * FROM Customers WHERE NOT CustomerID > 50 ORDER BY CustomerID DESC;
/*There is a not-greater-then operator: !> that would give you the same result.*/

/*
NOT Less Than
Select customers with a CustomerID not less than 50:
There is a not-less-then operator: !< that would give you the same result.
*/
SELECT * FROM Customers WHERE NOT CustomerID < 50;
 
 