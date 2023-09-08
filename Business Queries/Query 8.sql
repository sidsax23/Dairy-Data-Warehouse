--Query 8 :Which plant has the highest and lowest production quantity in 2021?

SELECT TOP 1
    Plant_Prod_Bridge.Plant_ID,
    SUM(Manufacturing_Fact_Table.Quantity) AS Total_Quantity
FROM Manufacturing_Fact_Table
JOIN Plant_Prod_Bridge ON Manufacturing_Fact_Table.Plant_Prod_ID = Plant_Prod_Bridge.Plant_Prod_ID
JOIN Time_Dim ON Manufacturing_Fact_Table.Time_ID = Time_Dim.Time_ID
WHERE Time_Dim.Year = 2021
GROUP BY Plant_Prod_Bridge.Plant_ID
ORDER BY Total_Quantity DESC; -- plant with highest production quantity


SELECT TOP 1
    Plant_Prod_Bridge.Plant_ID,
    SUM(Manufacturing_Fact_Table.Quantity) AS Total_Quantity
FROM Manufacturing_Fact_Table
JOIN Plant_Prod_Bridge ON Manufacturing_Fact_Table.Plant_Prod_ID = Plant_Prod_Bridge.Plant_Prod_ID
JOIN Time_Dim ON Manufacturing_Fact_Table.Time_ID = Time_Dim.Time_ID
WHERE Time_Dim.Year = 2021
GROUP BY Plant_Prod_Bridge.Plant_ID
ORDER BY Total_Quantity ASC; -- plant with lowest production quantity

