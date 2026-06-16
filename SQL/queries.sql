/* =====================================================
   APPLICATION SUPPORT SQL PRACTICE
   ===================================================== */

/* 1. Filtering Data */

SELECT *
FROM Customers
WHERE Country = 'Germany';


/* 2. Multiple Conditions */

SELECT CustomerName, Country
FROM Customers
WHERE Country IN ('Germany', 'France')
AND ContactName IS NOT NULL;


/* 3. Pattern Matching */

SELECT CustomerName
FROM Customers
WHERE CustomerName LIKE '%ar%';


/* 4. Sorting Results */

SELECT CustomerName, Country
FROM Customers
ORDER BY Country, CustomerName;


/* 5. Aggregation */

SELECT COUNT(*) AS TotalCustomers
FROM Customers;


/* 6. Grouping Data */

SELECT Country,
       COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY Country;


/* 7. Group Filtering */

SELECT Country,
       COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY Country
HAVING COUNT(*) > 3;


/* 8. Average Price By Category */

SELECT CategoryID,
       AVG(Price) AS AveragePrice
FROM Products
GROUP BY CategoryID;


/* 9. Highest Product Price By Category */

SELECT CategoryID,
       MAX(Price) AS HighestPrice
FROM Products
GROUP BY CategoryID;


/* 10. Products Above Average Price */

SELECT ProductName,
       Price
FROM Products
WHERE Price >
(
    SELECT AVG(Price)
    FROM Products
);


/* 11. Most Expensive Product */

SELECT ProductName,
       Price
FROM Products
WHERE Price =
(
    SELECT MAX(Price)
    FROM Products
);


/* 12. INNER JOIN */

SELECT Customers.CustomerName,
       Orders.Amount
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;


/* 13. LEFT JOIN */

SELECT Customers.CustomerName,
       Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;


/* 14. Multiple Table Join */

SELECT Customers.CustomerName,
       Orders.OrderID,
       Payments.Amount
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
INNER JOIN Payments
ON Orders.OrderID = Payments.OrderID;


/* 15. Customer Orders By Country */

SELECT Customers.Country,
       COUNT(Orders.OrderID) AS NumberOfOrders
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.Country
HAVING COUNT(Orders.OrderID) > 5
ORDER BY NumberOfOrders DESC;
