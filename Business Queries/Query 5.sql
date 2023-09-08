-- Query 5 : What is the profit earned at each store on a quarterly basis for the year 2022 ?

SELECT SPB.Store_ID, TD.Quarter, SUM(SSFT.Profit) AS 'Total Profit' INTO #TEMP_TABLE FROM Store_Sales_Fact_Table SSFT 
INNER JOIN Time_Dim TD ON SSFT.Time_ID=TD.Time_ID INNER JOIN Store_Prod_Bridge SPB ON SSFT.Store_Prod_ID=SPB.Store_Prod_ID 
WHERE TD.Year = 2022 GROUP BY SPB.Store_ID, TD.Quarter

SELECT Store_ID, Quarter, SUM([Total Profit]) AS 'Quarterly Profit' FROM #TEMP_TABLE GROUP BY Store_ID,Quarter ORDER BY Quarter ASC
