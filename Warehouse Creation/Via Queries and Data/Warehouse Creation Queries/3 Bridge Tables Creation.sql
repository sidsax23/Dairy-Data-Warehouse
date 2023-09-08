CREATE TABLE Plant_Prod_Bridge (
    Plant_Prod_ID INT PRIMARY KEY,
    Plant_ID INT,
    Product_ID INT,
    FOREIGN KEY (Plant_ID) REFERENCES Plant_Dim(Plant_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product_Dim(Product_ID)
);

CREATE TABLE Store_Prod_Bridge (
    Store_Prod_ID INT PRIMARY KEY,
    Store_ID INT,
    Product_ID INT,
    FOREIGN KEY (Store_ID) REFERENCES Store_Dim(Store_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product_Dim(Product_ID)
);

CREATE TABLE Distributor_Prod_Bridge (
    Distributor_Prod_ID INT PRIMARY KEY,
    Distributor_ID INT,
    Product_ID INT,
    FOREIGN KEY (Distributor_ID) REFERENCES Distributor_Dim(Distributor_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product_Dim(Product_ID)
);