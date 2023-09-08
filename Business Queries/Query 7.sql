-- Query 7 : Determine the top 5 suppliers that provided the highest total quantity of products in 2022.

SELECT TOP 5
    Supplier_Name,
    SUM(Quantity) AS Total_Quantity
FROM Procurement_Fact_Table
JOIN Supplier_Dim ON Procurement_Fact_Table.Supplier_ID = Supplier_Dim.Supplier_ID INNER JOIN Time_Dim TD ON Procurement_Fact_Table.Time_ID = TD.Time_ID
WHERE TD.Year = 2022
GROUP BY Supplier_Name
ORDER BY 2 DESC;