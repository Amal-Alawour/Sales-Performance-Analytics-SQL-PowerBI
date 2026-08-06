USE Sales_Analytics;
GO

INSERT INTO Customers (CustomerID, CustomerName, City, Age)
VALUES
(1, 'Ahmed', 'Jeddah', 25),
(2, 'Sara', 'Riyadh', 30),
(3, 'Mohammed', 'Dammam', 28),
(4, 'Fatimah', 'Makkah', 22),
(5, 'Ali', 'Jeddah', 35);


INSERT INTO Products (ProductID, ProductName, Category, Price)
VALUES
(1, 'Laptop', 'Electronics', 3500),
(2, 'Phone', 'Electronics', 2000),
(3, 'Chair', 'Furniture', 500),
(4, 'Desk', 'Furniture', 900),
(5, 'Headphones', 'Accessories', 300);


INSERT INTO Sales (SaleID, CustomerID, ProductID, SalesDate, Quantity, TotalAmount)
VALUES
(1, 1, 1, '2025-01-10', 1, 3500),
(2, 2, 2, '2025-01-15', 2, 4000),
(3, 3, 3, '2025-02-05', 3, 1500),
(4, 4, 4, '2025-02-20', 1, 900),
(5, 5, 5, '2025-03-01', 4, 1200);
