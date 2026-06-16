/* =====================================================
   SAMPLE DATA
   Application Support SQL Lab
   ===================================================== */


/* Customers */

INSERT INTO Customers
(CustomerID, CustomerName, ContactName, City, Country)
VALUES
(1, 'Rahul Sharma', 'Rahul', 'Mumbai', 'India'),
(2, 'Amit Verma', 'Amit', 'Pune', 'India'),
(3, 'Sarah Johnson', 'Sarah', 'Berlin', 'Germany'),
(4, 'John Miller', 'John', 'Munich', 'Germany'),
(5, 'Pierre Martin', 'Pierre', 'Paris', 'France'),
(6, 'Maria Garcia', 'Maria', 'Madrid', 'Spain'),
(7, 'Lucas Silva', 'Lucas', 'Rio de Janeiro', 'Brazil');


/* Products */

INSERT INTO Products
(ProductID, ProductName, Price, CategoryID)
VALUES
(101, 'Laptop', 850.00, 1),
(102, 'Keyboard', 50.00, 1),
(103, 'Mouse', 25.00, 1),
(104, 'Monitor', 300.00, 1),
(105, 'Desk Chair', 180.00, 2),
(106, 'Office Desk', 450.00, 2),
(107, 'Printer', 220.00, 3),
(108, 'Scanner', 170.00, 3);


/* Orders */

INSERT INTO Orders
(OrderID, CustomerID, Amount)
VALUES
(1001, 1, 850.00),
(1002, 3, 300.00),
(1003, 3, 450.00),
(1004, 5, 220.00),
(1005, 2, 180.00),
(1006, 4, 170.00);


/* Payments */

INSERT INTO Payments
(PaymentID, OrderID, Amount)
VALUES
(5001, 1001, 850.00),
(5002, 1002, 300.00),
(5003, 1003, 450.00),
(5004, 1004, 220.00),
(5005, 1005, 180.00),
(5006, 1006, 170.00);