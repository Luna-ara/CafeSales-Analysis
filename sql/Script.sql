SELECT ITEM ,SUM(ccs."Total Spent") as Total_Revenue
FROM cleaned_cafe_sales ccs 
GROUP BY ITEM
ORDER BY Total_Revenue Desc;


SELECT ITEM ,SUM(ccs.Quantity ) as Total_Quantity
FROM cleaned_cafe_sales ccs 
GROUP BY ITEM
ORDER BY Total_Quantity desc;

SELECT ITEM , AVG(ccs."Total Spent" ) as Average 
FROM cleaned_cafe_sales ccs 
GROUP BY ITEM
ORDER BY Average desc;

SELECT 
    strftime('%Y-%m', "Transaction Date") AS Year_Month,
    SUM("Total Spent") AS Monthly_Revenue,
    COUNT("Transaction ID") AS Total_Transactions
FROM 
    cleaned_cafe_sales
GROUP BY 
    Year_Month
ORDER BY 
    Year_Month ASC;

SELECT ccs."Payment Method"  ,Count(Item) as Cout
FROM cleaned_cafe_sales ccs 
GROUP BY "Payment Method" 
ORDER BY Cout  Desc;

SELECT ccs."Payment Method"  ,SUM(ccs."Total Spent" ) as Total_Spent
FROM cleaned_cafe_sales ccs 
GROUP BY "Payment Method" 
ORDER BY Total_Spent  Desc;

SELECT Item, AVG(Quantity) AS Average_Quantity
From cleaned_cafe_sales ccs 
GROUP BY ccs.Item
Order by Average_Quantity  Desc;

SELECT 
    CASE strftime('%m', "Transaction Date")
        WHEN '01' THEN 'January'
        WHEN '02' THEN 'February'
        WHEN '03' THEN 'March'
        WHEN '04' THEN 'April'
        WHEN '05' THEN 'May'
        WHEN '06' THEN 'June'
        WHEN '07' THEN 'July'
        WHEN '08' THEN 'August'
        WHEN '09' THEN 'September'
        WHEN '10' THEN 'October'
        WHEN '11' THEN 'November'
        WHEN '12' THEN 'December'
    END AS Month,
    SUM("Total Spent") AS Monthly_Revenue,
    COUNT("Transaction ID") AS Total_Transactions
FROM 
    cleaned_cafe_sales
GROUP BY 
    Month
ORDER BY strftime('%m', "Transaction Date") ASC;

