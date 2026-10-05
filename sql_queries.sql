CREATE TABLE retail_data (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description VARCHAR(255),
    Quantity INT,
    InvoiceDate TIMESTAMP,
    UnitPrice NUMERIC,
    CustomerID VARCHAR(20),
    Country VARCHAR(100),
    TotalPrice NUMERIC
);
---Data integrity checking all rows execute accurate
SELECT COUNT(*) FROM retail_data;


---Data Analysis:
--Task 1: Top 10 Best-Selling Products
SELECT 
	description,
	ROUND(SUM(totalprice), 2) AS Revenue
FROM 
retail_data
GROUP BY description
ORDER BY Revenue DESC
LIMIT 10;


--Task 2: Which top 10 countries bring in the most revenue?

SELECT 
	country,
	ROUND(SUM(totalprice), 2) AS Revenue,
	COUNT(DISTINCT invoiceno) AS Total_Orders
FROM retail_data
GROUP BY country
ORDER BY Revenue DESC
LIMIT 10;


--Task 3:Monthly Revenue Trend

SELECT 
    DATE_TRUNC('month', invoicedate) AS month,
    ROUND(SUM(totalprice), 2) AS revenue
FROM retail_data
GROUP BY month
ORDER BY month;


--Task 4: Top 10 Customers by Spend

SELECT 
    customerid,
    ROUND(SUM(totalprice), 2) AS total_spent,
    COUNT(DISTINCT invoiceno) AS total_orders
FROM retail_data
GROUP BY customerid
ORDER BY total_spent DESC
LIMIT 10;


--Task 5: Average Order 

SELECT 
    ROUND(SUM(totalprice) / COUNT(DISTINCT invoiceno), 2) AS avg_order_value
FROM retail_data;