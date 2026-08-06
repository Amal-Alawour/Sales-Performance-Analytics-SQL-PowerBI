USE Sales_Analytics;
GO

-- Total Sales
SELECT 
    SUM(TotalAmount) AS TotalSales
FROM Sales;


-- Total Quantity Sold
SELECT 
    SUM(Quantity) AS TotalQuantity
FROM Sales;


-- Sales by Customer
SELECT
    c.CustomerName,
    SUM(s.TotalAmount) AS TotalSales
FROM Sales s
JOIN Customers c
ON s.CustomerID = c.CustomerID
GROUP BY c.CustomerName
ORDER BY TotalSales DESC;


-- Sales by City
SELECT
    c.City,
    SUM(s.TotalAmount) AS TotalSales
FROM Sales s
JOIN Customers c
ON s.CustomerID = c.CustomerID
GROUP BY c.City
ORDER BY TotalSales DESC;


-- Top Products
SELECT
    p.ProductName,
    SUM(s.TotalAmount) AS TotalSales
FROM Sales s
JOIN Products p
ON s.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalSales DESC;


-- Sales by Category
SELECT
    p.Category,
    SUM(s.TotalAmount) AS TotalSales
FROM Sales s
JOIN Products p
ON s.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY TotalSales DESC;
