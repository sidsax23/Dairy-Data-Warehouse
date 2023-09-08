CREATE TABLE Supplier_Dim (
    Supplier_ID INT PRIMARY KEY,
    Location_ID INT,
    Supplier_Name VARCHAR(50),
    Supplier_Address VARCHAR(100),
    Supplier_Phone_Number VARCHAR(20),
    Supplier_Email VARCHAR(50),
    FOREIGN KEY (Location_ID) REFERENCES Location_Dim(Location_ID)
);

CREATE TABLE Plant_Dim (
    Plant_ID INT PRIMARY KEY,
    Plant_Name VARCHAR(50),
    Plant_Address VARCHAR(100),
    Location_ID INT,
    FOREIGN KEY (Location_ID) REFERENCES Location_Dim(Location_ID)
);

CREATE TABLE Store_Dim (
    Store_ID INT PRIMARY KEY,
    Location_ID INT,
    Store_Name VARCHAR(50),
    Store_Address VARCHAR(100),
    Store_Phone_Number VARCHAR(20),
    Store_Email VARCHAR(50),
    FOREIGN KEY (Location_ID) REFERENCES Location_Dim(Location_ID)
);

CREATE TABLE Distributor_Dim (
    Distributor_ID INT PRIMARY KEY,
    Location_ID INT,
    Distributor_Name VARCHAR(50),
    Distributor_Address VARCHAR(100),
    Distributor_Phone_Number VARCHAR(20),
    Distributor_Email VARCHAR(50),
    FOREIGN KEY (Location_ID) REFERENCES Location_Dim(Location_ID)
);

