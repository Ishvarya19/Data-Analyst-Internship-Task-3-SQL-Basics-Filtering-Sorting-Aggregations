# Data-Analyst-Internship-Task-3-SQL-Basics-Filtering-Sorting-Aggregations
# Data Analyst Internship – Task 3

# 1. Internship Project Overview
This project focuses on applying SQL fundamentals to real-world datasets to gain hands-on experience in data querying, filtering, aggregation, and analysis.
# Objectives:
• Learn to filter data using WHERE clause
• Sort results using ORDER BY
• Aggregate data with SUM, AVG, COUNT
• Filter aggregated results using HAVING
• Use advanced queries with BETWEEN and LIKE
• Extract actionable business insights from sales datasets
• Document queries and results professionally for reporting
• SQL is a key skill for Data Analysts, enabling efficient data extraction and decision-making from structured databases.

# 2. Tools & Technologies Used
Tool	Purpose
MySQL / PostgreSQL	Database engine to execute queries
MySQL Workbench / DBeaver	GUI for database management
SQLite Online / DB Fiddle	Free online alternatives for testing
Dataset	Superstore Sales CSV / Chinook Database / Retail Sales Dataset

# 3. Dataset Overview
Dataset Used: Superstore Sales Dataset
• Rows: ~5,000–10,000
• Columns:
     • OrderID – Unique order identifier
     • OrderDate – Date of the order
     • CustomerName – Customer’s full name
     • Category – Product category (Technology, Furniture, Office Supplies)
     • SubCategory – Product sub-category
     • Segment – Customer segment (Consumer, Corporate, Home Office)
     • Region – Geographic region (East, West, South, Central)
     • Sales – Sales value per order
     • Profit – Profit per order
     • Quantity – Number of products sold

Business Relevance:
This dataset simulates retail transactions, allowing analysis of:
     • Product and category performance
     • Regional sales trends
     • Customer segment behavior
     • Profitability patterns

# 4. Methodology / Step-by-Step Process
**Step 1:** Database Setup
• Created a database schema:
CREATE DATABASE superstore_db;
USE superstore_db;

**Step 2:** Table Creation
• Designed table structure with appropriate data types:
CREATE TABLE sales_data (
    OrderID VARCHAR(20),
    OrderDate DATE,
    CustomerName VARCHAR(100),
    Category VARCHAR(50),
    SubCategory VARCHAR(50),
    Segment VARCHAR(50),
    Region VARCHAR(50),
    Sales DECIMAL(10,2),
    Profit DECIMAL(10,2),
    Quantity INT
);

**Step 3:** Data Import
Imported CSV dataset into SQL table using Workbench / PgAdmin.
Verified row count to ensure data integrity:

SELECT COUNT(*) AS Total_Rows FROM sales_data;

**Step 4:** Data Exploration
• Checked sample data:
SELECT * FROM sales_data LIMIT 10;
Checked unique categories and regions:

SELECT DISTINCT Category FROM sales_data;
SELECT DISTINCT Region FROM sales_data;

**Step 5:** Filtering & Sorting
• Filter by category:

SELECT * FROM sales_data
WHERE Category = 'Technology';


• Filter by region and segment:

SELECT * FROM sales_data
WHERE Region = 'West' AND Segment = 'Consumer';


• Sort top 10 sales:

SELECT * FROM sales_data
ORDER BY Sales DESC
LIMIT 10;

**Step 6:** Aggregations & Grouping
• Total sales by category:

SELECT Category, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Category;

• Average profit per region:

SELECT Region, AVG(Profit) AS Avg_Profit
FROM sales_data
GROUP BY Region;

• Count of orders per segment:

SELECT Segment, COUNT(*) AS Order_Count
FROM sales_data
GROUP BY Segment;

**Step 7:** Filtering Aggregated Results
• Categories with total sales > 100,000:

SELECT Category, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Category
HAVING SUM(Sales) > 100000;

**Step 8:** Advanced Queries
• Filter by date range:

SELECT *
FROM sales_data
WHERE OrderDate BETWEEN '2025-01-01' AND '2025-12-31';

• Customer name pattern search:

SELECT *
FROM sales_data
WHERE CustomerName LIKE 'A%';

**Step 9:** Business Insights Queries
• Top 5 customers by total spend:

SELECT CustomerName, SUM(Sales) AS Total_Spend
FROM sales_data
GROUP BY CustomerName
ORDER BY Total_Spend DESC
LIMIT 5;

• Total sales & profit by region & category:

SELECT Region, Category, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Region, Category
ORDER BY Total_Sales DESC;

• Average profit by segment:

SELECT Segment, AVG(Profit) AS Avg_Profit
FROM sales_data
GROUP BY Segment;

# Insights Extracted:
• Technology category generates the highest revenue
• West region leads in total sales and profit
• Consumer segment dominates order volume
• High revenue does not always correlate with high profit
• Identified top 5 customers contributing the most to total sales

# 5. Deliverables

queries_task3.sql → All SQL queries executed
sales_summary.csv → Exported results of aggregation queries
README.md → Project report (this file)

# 6. Conclusion
This project provided comprehensive exposure to SQL fundamentals for business data analysis. Through filtering, sorting, aggregation, and advanced querying, actionable insights were extracted from real-world datasets. This project strengthens skills required for Data Analyst roles, including data extraction, analysis, and reporting, preparing interns for professional business environments.
