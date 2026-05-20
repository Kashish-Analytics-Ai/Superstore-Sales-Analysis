-- Superstore Sales Analysis Project
-- By: Kashish

-- Q1: Sales and Profit by Region
SELECT 
    Region, 
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore 
GROUP BY Region 
ORDER BY Total_Sales DESC;

-- Q2: Top 5 Profitable Sub-Categories  
SELECT 
    Sub_Category,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore 
GROUP BY Sub_Category 
ORDER BY Total_Profit DESC 
LIMIT 5;

-- Q3: Products Running in Loss
SELECT 
    Product_Name,
    ROUND(SUM(Profit), 2) AS Total_Loss
FROM superstore 
WHERE Profit < 0
GROUP BY Product_Name 
ORDER BY Total_Loss ASC 
LIMIT 10;

-- Q4: Monthly Sales Trend
SELECT 
    STRFTIME('%Y-%m', Order_Date) AS Sales_Month,
    ROUND(SUM(Sales), 2) AS Monthly_Sales
FROM superstore 
GROUP BY Sales_Month 
ORDER BY Sales_Month;