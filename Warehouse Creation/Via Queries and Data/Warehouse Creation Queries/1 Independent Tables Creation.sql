CREATE TABLE Time_Dim (
    Time_ID INT NOT NULL PRIMARY KEY ,
    Date DATE,
    Day VARCHAR(20),
    Day_Number INT,
    Month VARCHAR(20),
    Quarter VARCHAR(20),
    Year INT,
    Holiday_Flag INT
);

CREATE TABLE Location_Dim (
    Location_ID INT NOT NULL PRIMARY KEY,
    City VARCHAR(50),
    State VARCHAR(50),
    Pincode VARCHAR(10)
);

CREATE TABLE Procurement_Prod_Dim (
    Procurement_Prod_ID INT NOT NULL PRIMARY KEY,
    Fat_Content VARCHAR(20),
    Cost DECIMAL(10, 2),
    Description VARCHAR(100),
    Type VARCHAR(50)
);

CREATE TABLE Product_Dim (
    Product_ID INT NOT NULL PRIMARY KEY,
    Product_Name VARCHAR(50),
    Product_Type VARCHAR(50),
    Product_Sub_Type VARCHAR(50),
    Product_Selling_Price DECIMAL(10, 2),
    Product_Cost DECIMAL(10, 2),
    Shelf_Life INT
);
