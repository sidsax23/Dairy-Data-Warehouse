
UPDATE Procurement_Fact_Table
SET Procurement_Cost = Quantity * PPD.Cost
FROM Procurement_Fact_Table INNER JOIN Procurement_Prod_Dim PPD ON Procurement_Fact_Table.Procurement_Prod_ID = PPD.Procurement_Prod_ID


UPDATE Manufacturing_Fact_Table
SET Manufacturing_Cost = Quantity * PD.Product_Cost
FROM Manufacturing_Fact_Table 
INNER JOIN Plant_Prod_Bridge PPB ON Manufacturing_Fact_Table.Plant_Prod_ID = PPB.Plant_Prod_ID
INNER JOIN Product_Dim PD ON PPB.Product_ID = PD.Product_ID

-- Updating Sales in Store Sales Fact Table
UPDATE Store_Sales_Fact_Table
SET Sales = Quantity * PD.Product_Selling_Price
FROM Store_Sales_Fact_Table 
INNER JOIN Store_Prod_Bridge SPB ON Store_Sales_Fact_Table.Store_Prod_ID = SPB.Store_Prod_ID
INNER JOIN Product_Dim PD ON SPB.Product_ID = PD.Product_ID

-- Updating Profit in Store Sales Fact Table
UPDATE Store_Sales_Fact_Table
SET Profit = (SFT.Quantity * PD.Product_Selling_Price) - (PD.Product_Cost) 
FROM Store_Sales_Fact_Table SFT
INNER JOIN Store_Prod_Bridge SPB ON Store_Sales_Fact_Table.Store_Prod_ID = SPB.Store_Prod_ID
INNER JOIN Product_Dim PD ON SPB.Product_ID = PD.Product_ID
INNER JOIN Manufacturing_Fact_Table MFT ON MFT.Product_ID = PD.Product_ID


-- Updating Distributor in Store Sales Fact Table
UPDATE Distributor_Sales_Fact_Table
SET Sales = Quantity * PD.Product_Selling_Price
FROM Distributor_Sales_Fact_Table 
INNER JOIN Distributor_Prod_Bridge DPB ON Distributor_Sales_Fact_Table.Distributor_Prod_ID = DPB.Distributor_Prod_ID
INNER JOIN Product_Dim PD ON DPB.Product_ID = PD.Product_ID


-- Updating Profit in Store Sales Fact Table
UPDATE Distributor_Sales_Fact_Table
SET Profit = Quantity * (PD.Product_Selling_Price - PD.Product_Cost)
FROM Distributor_Sales_Fact_Table 
INNER JOIN Distributor_Prod_Bridge DPB ON Distributor_Sales_Fact_Table.Distributor_Prod_ID = DPB.Distributor_Prod_ID
INNER JOIN Product_Dim PD ON DPB.Product_ID = PD.Product_ID