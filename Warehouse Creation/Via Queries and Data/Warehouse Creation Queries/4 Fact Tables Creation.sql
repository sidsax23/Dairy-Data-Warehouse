CREATE TABLE Procurement_Fact_Table (
    Procurement_ID INT PRIMARY KEY,
    Supplier_ID INT,
    Procurement_Prod_ID INT,
    Time_ID INT,
    Quantity INT,
    Procurement_Cost DECIMAL(10, 2),
    FOREIGN KEY (Supplier_ID) REFERENCES Supplier_Dim(Supplier_ID),
    FOREIGN KEY (Procurement_Prod_ID) REFERENCES Procurement_Prod_Dim(Procurement_Prod_ID),
    FOREIGN KEY (Time_ID) REFERENCES Time_Dim(Time_ID)
);

CREATE TABLE Manufacturing_Fact_Table (
    Production_ID INT PRIMARY KEY,
	Plant_Prod_ID INT,
    Time_ID INT,
    Quantity INT,
    Manufacturing_Cost DECIMAL(20, 2),
    FOREIGN KEY (Plant_Prod_ID) REFERENCES Plant_Prod_Bridge(Plant_Prod_ID),
    FOREIGN KEY (Time_ID) REFERENCES Time_Dim(Time_ID)
);


CREATE TABLE Store_Sales_Fact_Table (
    Sales_ID INT PRIMARY KEY,
	Store_Prod_ID INT,
    Time_ID INT,
    Quantity INT,
    Sales DECIMAL(20, 2),
    Profit DECIMAL(20, 2),
    FOREIGN KEY (Store_Prod_ID) REFERENCES Store_Prod_Bridge(Store_Prod_ID),
    FOREIGN KEY (Time_ID) REFERENCES Time_Dim(Time_ID),
);

CREATE TABLE Distributor_Sales_Fact_Table (
    Sales_ID INT PRIMARY KEY,
	Distributor_Prod_ID INT,
    Time_ID INT,
    Quantity INT,
    Sales DECIMAL(20, 2),
    Profit DECIMAL(20, 2),
    FOREIGN KEY (Distributor_Prod_ID) REFERENCES Distributor_Prod_Bridge(Distributor_Prod_ID),
    FOREIGN KEY (Time_ID) REFERENCES Time_Dim(Time_ID),
);
