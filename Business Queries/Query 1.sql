-- Query 1 : Calculate Net profit by subtracting losses on unsold items from total profit earned.

DECLARE @Total_Sales DECIMAL(10,2);
SET @Total_Sales = (SELECT SUM(Sales) from Store_Sales_Fact_Table) + (SELECT SUM(Sales) from Distributor_Sales_Fact_Table)

-- Manufacturing cost involves the costs associated with both sold and unsold items as all items were manufactured prior to distribution
DECLARE @Total_Manufacturing_Cost DECIMAL(10,2);
SET @Total_Manufacturing_Cost = (SELECT SUM(Manufacturing_Cost) from Manufacturing_Fact_Table)

-- Subtracting sales and manufacturing cost will also take the manufacturing costs associated with unsold items into account
SELECT @Total_Sales-@Total_Manufacturing_Cost AS 'Net Profit' 

