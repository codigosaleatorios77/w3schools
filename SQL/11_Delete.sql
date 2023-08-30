/*
DELETE Statement
The DELETE statement is used to delete existing records in a table.

DELETE Syntax


DELETE FROM table_name WHERE condition; 

Be careful when deleting records in a table!
Notice the WHERE clause in the DELETE statement.
The WHERE clause specifies which record(s) should be deleted.
If you omit the WHERE clause, all records in the table will be deleted!

SQL DELETE Example:
The following SQL statement deletes the customer "Alfreds Futterkiste" from the "Customers" table:
*/
DELETE FROM Customers WHERE CustomerNAme = 'Alfreds Futterskiste';

/*
Delete All Records
It is possible to delete all rows in a table without deleting the table.
This means that the table structure, attributes, and indexes will be intact:
*/
DELETE FROM table_name;

/* The following SQL statement deletes all rows in the "Customers" table, without deleting the table:*/
DELETE FROM Customers;

/*

Delete a Table
To delete the table completely, use the DROP TABLE statement:
Remove the Customers table:
*/
DROP TABLE Customers;