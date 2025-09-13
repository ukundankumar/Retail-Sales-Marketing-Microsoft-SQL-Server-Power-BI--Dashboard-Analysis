SELECT * FROM retail_sales

SELECT COUNT(DISTINCT OrderID) AS Total_Order FROM retail_sales

SELECT SUM(TotalAmount) AS Total_Revenue FROM retail_sales

SELECT SUM(TotalAmount)/COUNT(DISTINCT OrderID) AS Avg_Order_Value FROM retail_sales

SELECT CAST(SUM(TotalAmount) AS DECIMAL (10,2)) AS Total_Revenue FROM retail_sales

SELECT SUM(UnitPrice) AS Total_Unit_Price FROM retail_sales

SELECT SUM(UnitPrice)/COUNT(DISTINCT OrderID) AS Avg_UnitPrice_Order FROM retail_sales

SELECT SUM(Quantity) AS Total_Quantity FROM retail_sales

SELECT SUM(Quantity)/COUNT(DISTINCT OrderID) AS Avg_Quantity_Order FROM retail_sales

SELECT TOP 5 OrderID AS Top_5_Order, SUM(TotalAmount) AS Total_Revenue FROM retail_sales
GROUP BY OrderID
ORDER BY Total_Revenue DESC


SELECT TOP 5 OrderID AS Bottom_5_Order, SUM(TotalAmount) AS Total_Revenue FROM retail_sales
GROUP BY OrderID
ORDER BY Total_Revenue ASC

SELECT FORMAT(OrderDate, 'MM') AS Month, 
SUM(TotalAmount) AS Revenue
FROM retail_sales
GROUP BY FORMAT(OrderDate, 'MM')
ORDER BY Month

SELECT TOP 5 Product AS Top_5_Product, SUM(TotalAmount) AS Total_Revenue FROM retail_sales
GROUP BY Product
ORDER BY Total_Revenue DESC

SELECT TOP 5 Product AS Bottom_5_Product, SUM(TotalAmount) AS Total_Revenue FROM retail_sales
GROUP BY Product
ORDER BY Total_Revenue ASC

SELECT Region, SUM(TotalAmount) AS Total_Revenue FROM retail_sales
GROUP BY Region
ORDER BY Region ASC

SELECT Quantity, SUM(TotalAmount) AS Total_Revenue FROM retail_sales
GROUP BY Quantity
ORDER BY Quantity ASC

SELECT Category, SUM(TotalAmount) AS Total_Revenue FROM retail_sales
GROUP BY Category
ORDER BY Category ASC