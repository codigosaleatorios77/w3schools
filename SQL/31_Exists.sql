/*
EXISTS Operator:
The EXISTS operator is used to test for the existence of any record in a subquery.
The EXISTS operator returns TRUE if the subquery returns one or more records.

EXISTS Syntax:
SELECT column_name(s) FROM table_name WHERE EXISTS (SELECT column_name FROM table_name WHERE condition); 

SQL EXISTS Examples:
The following SQL statement returns TRUE and lists the suppliers with a product price less than 20:
*/
SELECT SupplierName FROM suppliers WHERE exists(select suppliers.SupplierName from suppliers inner join products on suppliers.SupplierID = products.SupplierID WHERE products.Price > 20) ;
SELECT SupplierName FROM Suppliers WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20);

/*
The following SQL statement returns TRUE and lists the suppliers with a product price equal to 22:
*/
SELECT SupplierName FROM Suppliers WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price = 22);

