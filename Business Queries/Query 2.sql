-- Query 2 : Calculate Net profit that would have been yielded had all items that were manufactured were sold (Benchmarking).


/* CREATING TEMPORARY TABLE :- */

SELECT MFT.Quantity * PD.Product_Selling_Price AS Benchmark_Sales INTO #TEMP_TABLE FROM Manufacturing_Fact_Table MFT INNER JOIN Plant_Prod_Bridge PPB ON MFT.Plant_Prod_ID = PPB.Plant_Prod_ID
INNER JOIN Product_Dim PD ON PD.Product_ID = PPB.Product_ID  


DECLARE @Total_Sales_Benchmark DECIMAL(10,2);
SET @Total_Sales_Benchmark = (SELECT SUM(Benchmark_Sales) from #TEMP_TABLE)

-- Manufacturing cost involves the costs associated with both sold and unsold items as all items were manufactured prior to distribution
DECLARE @Total_Manufacturing_Cost DECIMAL(10,2);
SET @Total_Manufacturing_Cost = (SELECT SUM(Manufacturing_Cost) from Manufacturing_Fact_Table)

-- Subtracting sales and manufacturing cost will also take the manufacturing costs associated with unsold items into account
SELECT @Total_Sales_Benchmark-@Total_Manufacturing_Cost AS 'Net Profit (Benchmark)' 

