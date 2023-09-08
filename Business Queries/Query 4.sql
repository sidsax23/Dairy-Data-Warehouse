-- Query 4 : See which items sell the least with respect to :- a.) Quantity b.) Amount c.) Profit Generated

--a.) Quantity
SELECT PD.Product_ID, PD.Product_Name, SUM(SFT.Quantity) AS Total_Sales_in_Units FROM Store_Sales_Fact_Table SFT INNER JOIN Store_Prod_Bridge SB ON SB.Store_Prod_ID = SFT.Store_Prod_ID INNER JOIN Product_Dim PD ON SB.Product_ID = PD.Product_ID GROUP BY PD.Product_ID,PD.Product_Name ORDER BY Total_Sales_in_Units ASC;

--b.) Amount
SELECT PD.Product_ID, PD.Product_Name, SUM(SFT.Sales) AS Total_Sales_in_INR FROM Store_Sales_Fact_Table SFT INNER JOIN Store_Prod_Bridge SB ON SB.Store_Prod_ID = SFT.Store_Prod_ID INNER JOIN Product_Dim PD ON SB.Product_ID = PD.Product_ID GROUP BY PD.Product_ID,PD.Product_Name ORDER BY Total_Sales_in_INR ASC;

--c.) Profit Generated
SELECT PD.Product_ID,PD.Product_Name, SUM(SFT.Profit) AS Total_Profit_in_INR FROM Store_Sales_Fact_Table SFT INNER JOIN Store_Prod_Bridge SB ON SB.Store_Prod_ID = SFT.Store_Prod_ID INNER JOIN Product_Dim PD ON SB.Product_ID = PD.Product_ID GROUP BY PD.Product_ID,PD.Product_Name ORDER BY Total_Profit_in_INR ASC;
