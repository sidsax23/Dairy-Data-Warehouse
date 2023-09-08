-- Inserting Time Data
BULK INSERT dbo.Time_Dim
FROM 'D:\Users\Sidharth\Desktop\STUDY STUFF\College\BITS-Pilani\2nd Semester\DW - Data Warehousing - SS G515\Project\Time Data.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO

-- Inserting Location Data
BULK INSERT dbo.Location_Dim
FROM 'D:\Users\Sidharth\Desktop\STUDY STUFF\College\BITS-Pilani\2nd Semester\DW - Data Warehousing - SS G515\Project\Location Data.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO

--Inserting Procurement Product Data
BULK INSERT dbo.Procurement_Prod_Dim
FROM 'D:\Users\Sidharth\Desktop\STUDY STUFF\College\BITS-Pilani\2nd Semester\DW - Data Warehousing - SS G515\Project\Procurement Product Data.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO


BULK INSERT dbo.Supplier_Dim
FROM 'D:\Users\Sidharth\Desktop\STUDY STUFF\College\BITS-Pilani\2nd Semester\DW - Data Warehousing - SS G515\Project\Suppliers Data.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO


BULK INSERT dbo.Procurement_Fact_Table
FROM 'D:\Users\Sidharth\Desktop\STUDY STUFF\College\BITS-Pilani\2nd Semester\DW - Data Warehousing - SS G515\Project\Procurement Fact Table Data.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO

BULK INSERT dbo.Product_Dim
FROM 'D:\Users\Sidharth\Desktop\STUDY STUFF\College\BITS-Pilani\2nd Semester\DW - Data Warehousing - SS G515\Project\Product Data.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO

BULK INSERT dbo.Plant_Dim
FROM 'D:\Users\Sidharth\Desktop\STUDY STUFF\College\BITS-Pilani\2nd Semester\DW - Data Warehousing - SS G515\Project\Plant Data.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO

BULK INSERT dbo.Plant_Prod_Bridge
FROM 'D:\Users\Sidharth\Desktop\STUDY STUFF\College\BITS-Pilani\2nd Semester\DW - Data Warehousing - SS G515\Project\Plant-Prod Data.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO


BULK INSERT dbo.Manufacturing_Fact_Table
FROM 'D:\Users\Sidharth\Desktop\STUDY STUFF\College\BITS-Pilani\2nd Semester\DW - Data Warehousing - SS G515\Project\Manufacturing Fact Table.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO


BULK INSERT dbo.Store_Dim
FROM 'D:\Users\Sidharth\Desktop\STUDY STUFF\College\BITS-Pilani\2nd Semester\DW - Data Warehousing - SS G515\Project\Store Data.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO


BULK INSERT dbo.Distributor_Dim
FROM 'D:\Users\Sidharth\Desktop\STUDY STUFF\College\BITS-Pilani\2nd Semester\DW - Data Warehousing - SS G515\Project\Distributor Data.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO


BULK INSERT dbo.Store_Prod_Bridge
FROM 'D:\Users\Sidharth\Desktop\STUDY STUFF\College\BITS-Pilani\2nd Semester\DW - Data Warehousing - SS G515\Project\Store-Prod Data.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO

BULK INSERT dbo.Distributor_Prod_Bridge
FROM 'D:\Users\Sidharth\Desktop\STUDY STUFF\College\BITS-Pilani\2nd Semester\DW - Data Warehousing - SS G515\Project\Distributor-Prod Data.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO

BULK INSERT dbo.Store_Sales_Fact_Table
FROM 'D:\Users\Sidharth\Desktop\STUDY STUFF\College\BITS-Pilani\2nd Semester\DW - Data Warehousing - SS G515\Project\Store Sales Fact Table Data.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO

BULK INSERT dbo.Distributor_Sales_Fact_Table
FROM 'D:\Users\Sidharth\Desktop\STUDY STUFF\College\BITS-Pilani\2nd Semester\DW - Data Warehousing - SS G515\Project\Distributor Sales Fact Table Data.csv'
WITH
(
        FORMAT='CSV',
        FIRSTROW=2
)
GO
