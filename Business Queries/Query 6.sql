-- Query 6 : Determine the quantities of all products produced vs the quantities of all products sold.


SELECT PD.Product_ID, PD.Product_Name, SUM(MFT.Quantity) AS 'Quantity Produced (in units)' FROM Manufacturing_Fact_Table MFT INNER JOIN Plant_Prod_Bridge PPB ON MFT.Plant_Prod_ID = PPB.Plant_Prod_ID
INNER JOIN Product_Dim PD ON PD.Product_ID = PPB.Product_ID GROUP BY PD.Product_ID,PD.Product_Name