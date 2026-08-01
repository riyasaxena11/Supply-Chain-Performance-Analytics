SELECT 
COUNT(*) AS Total_Orders
FROM DataCoSupplyChainDataset;
SELECT 
ROUND(SUM(Sales),2) AS Total_Sales
FROM DataCoSupplyChainDataset;
SELECT 
ROUND(SUM(`Order Profit Per Order`),2) AS Total_Profit
FROM DataCoSupplyChainDataset;
SELECT
ROUND(AVG(Sales),2) AS Average_Order_Value
FROM DataCoSupplyChainDataset;
SELECT
ROUND(AVG(`Order Profit Per Order`),2) AS Avg_Profit
FROM DataCoSupplyChainDataset;
SELECT
`Category Name`,
ROUND(SUM(Sales),2) AS Total_Sales
FROM DataCoSupplyChainDataset
GROUP BY `Category Name`
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT
`Product Name`,
ROUND(SUM(Sales),2) AS Total_Sales
FROM DataCoSupplyChainDataset
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT
Market,
ROUND(SUM(Sales),2) AS Sales
FROM DataCoSupplyChainDataset
GROUP BY Market
ORDER BY Sales DESC;
SELECT
`Customer Id`,
`Customer Fname`,
`Customer Lname`,
ROUND(SUM(Sales),2) AS Revenue
FROM DataCoSupplyChainDataset
GROUP BY 
`Customer Id`,
`Customer Fname`,
`Customer Lname`
ORDER BY Revenue DESC
LIMIT 10;
SELECT
`Delivery Status`,
COUNT(*) AS Orders
FROM DataCoSupplyChainDataset
GROUP BY `Delivery Status`;
SELECT
late_delivery_risk,
COUNT(*) AS Orders
FROM DataCoSupplyChainDataset
GROUP BY late_delivery_risk;
SELECT
ROUND(AVG(Delivery_Days),2) AS Avg_Delivery_Days
FROM DataCoSupplyChainDataset;
SELECT
`Shipping Mode`,
ROUND(SUM(Sales),2) AS Sales
FROM DataCoSupplyChainDataset
GROUP BY `Shipping Mode`
ORDER BY Sales DESC;
SELECT
`Shipping Mode`,
`Delivery Status`,
COUNT(*) AS Orders
FROM DataCoSupplyChainDataset
GROUP BY
`Shipping Mode`,
`Delivery Status`
ORDER BY Orders DESC;
SELECT
`Category Name`,
ROUND(SUM(`Order Profit Per Order`),2) AS Profit
FROM DataCoSupplyChainDataset
GROUP BY `Category Name`
ORDER BY Profit DESC;
SELECT
`Order Region`,
ROUND(SUM(`Order Profit Per Order`),2) AS Profit
FROM DataCoSupplyChainDataset
GROUP BY `Order Region`
ORDER BY Profit DESC;
SELECT
`Product Name`,
ROUND(SUM(`Order Profit Per Order`),2) AS Profit
FROM DataCoSupplyChainDataset
GROUP BY `Product Name`
ORDER BY Profit DESC
LIMIT 10;
SELECT
ROUND(AVG(`Order Item Discount Rate`),4) AS Avg_Discount,
ROUND(AVG(`Order Profit Per Order`),2) AS Avg_Profit
FROM DataCoSupplyChainDataset;
SELECT
`Category Name`,
ROUND(AVG(`Order Item Discount Rate`),4) AS Avg_Discount,
ROUND(AVG(`Order Profit Per Order`),2) AS Avg_Profit
FROM DataCoSupplyChainDataset
GROUP BY `Category Name`
ORDER BY Avg_Discount DESC;
SELECT
`Customer Segment`,
ROUND(SUM(Sales),2) AS Sales
FROM DataCoSupplyChainDataset
GROUP BY `Customer Segment`
ORDER BY Sales DESC;
SELECT
`Order Country`,
ROUND(SUM(Sales),2) AS Sales
FROM DataCoSupplyChainDataset
GROUP BY `Order Country`
ORDER BY Sales DESC
LIMIT 10;
SELECT
`Order Status`,
COUNT(*) AS Orders
FROM DataCoSupplyChainDataset
GROUP BY `Order Status`;
SELECT
`Category Name`,
COUNT(*) AS Product_Count
FROM DataCoSupplyChainDataset
GROUP BY `Category Name`
ORDER BY Product_Count DESC;
SELECT
DATE_FORMAT(`order date (DateOrders)`,'%Y-%m') AS Order_Month,
ROUND(SUM(Sales),2) AS Monthly_Sales
FROM DataCoSupplyChainDataset
GROUP BY Order_Month
ORDER BY Order_Month;