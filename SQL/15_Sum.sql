/*
The SQL SUM() Function

SELECT SUM(column_name) FROM table_name WHERE condition;

Return the sum of all Quantity fields in the OrderDetails table:

*/
SELECT SUM(Quantity) FROM OrderDetails;

/*
SUM() With an Expression
The parameter inside the SUM() function can also be an expression.
If we assume that each product in the OrderDetails column costs 10 dollars, we can find the total earnings in dollars by multiply each quantity with 10:
*/

SELECT SUM(Quantity*10) FROM OrderDetails;

/*
We can also join the OrderDetails table to the Products table to find the actual amount, instead of assuming it is 10 dollars:
Join OrderDetails with Products, and use SUM() to find the total amount:
*/
SELECT SUM(Price * Quantity) FROM OrderDetails LEFT JOIN Products ON OrderDetails.ProductID = Products.ProductID;
