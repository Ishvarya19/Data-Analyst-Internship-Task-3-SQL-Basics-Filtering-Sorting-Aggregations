CREATE DATABASE superstore;
USE superstore;
CREATE TABLE sales_data (
    OrderID VARCHAR(50),
    OrderDate DATE,
    Category VARCHAR(50),
    SubCategory VARCHAR(50),
    CustomerName VARCHAR(100),
    Region VARCHAR(50),
    Sales DECIMAL(10,2),
    Profit DECIMAL(10,2)
);
SELECT COUNT(*) FROM sales_data;
SELECT * FROM sales_data LIMIT 10;
SELECT DISTINCT Category FROM sales_data;
SELECT DISTINCT Region FROM sales_data;
SELECT * FROM sales_data
WHERE Category = 'Technology';
SELECT * FROM sales_data
WHERE Profit > 0;
SELECT * FROM sales_data
ORDER BY Sales DESC
LIMIT 10;
SELECT Region, SUM(Profit) AS TotalProfit
FROM sales_data
GROUP BY Region
ORDER BY TotalProfit DESC;

SELECT Category, SUM(Sales) AS TotalSales
FROM sales_data
GROUP BY Category;
SELECT Region, AVG(Profit) AS AvgProfit
FROM sales_data
GROUP BY Region;
SELECT Category, SUM(Sales) AS TotalSales
FROM sales_data
GROUP BY Category
HAVING SUM(Sales) > 100000;
SELECT MONTH(OrderDate) AS Month, SUM(Sales)
FROM sales_data
WHERE OrderDate BETWEEN '2020-01-01' AND '2020-12-31'
GROUP BY MONTH(OrderDate);
SELECT * FROM sales_data
WHERE CustomerName LIKE 'S%';







