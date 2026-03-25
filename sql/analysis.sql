--View data
SELECT * FROM SampleSuperstore LIMIT 10;
--total Sales
SELECT SUM (Sales) AS total_sales FROM SampleSuperstore;
--Total Profit
SELECT SUM(Profit) AS total_profit FROM SampleSuperstore;

--Sales by Category
SELECT Category, SUM(Sales) FROM SampleSuperstore
GROUP BY Category;

--Sales by Region
SELECT Region, SUM(Sales) AS total_sales FROM SampleSuperstore
WHERE Region = 'West'
GROUP BY  Region
ORDER BY total_sales DESC;

--Sales by Profit
Select Profit, Sum(Sales) AS total_sales FROM SampleSuperstore
WHERE Profit < 50
GROUP BY Profit
ORDER BY total_sales DESC
LIMIT 10;

--Profit by Category
SELECT Category, SUM(Profit) AS total_profit FROM SampleSuperstore
GROUP BY Category
ORDER BY total_profit;

--Sales by Discount
SELECT Discount, SUM(Sales) AS total_sales FROM SampleSuperstore
WHERE Discount <=0.5
GROUP BY Discount
ORDER BY Discount ASC;

--Top 5 sub categories having more Sales
SELECT "Sub-Category", SUM(Sales) AS total_sales
From SampleSuperstore
GROUP BY "Sub-Category"
ORDER BY total_sales ASC
LIMIT 5;
