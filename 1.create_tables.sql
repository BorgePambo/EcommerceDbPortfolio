

/*-------Um sistema de gerenciamento de vendas pode incluir várias 
funcionalidades, como controle de clientes, produtos, pedidos e pagamentos. */

--Modeloagem de Dados




---Create Customer Table -------------
CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY IDENTITY(1, 1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(150) NOT NULL UNIQUE,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),
	Occupation VARCHAR(100),
    PhoneNumber VARCHAR(11) UNIQUE,
    AddressID INTEGER
);
GO

CREATE TABLE Customer_Address(
	AddressID INTEGER PRIMARY KEY IDENTITY(1000, 1),
	Street VARCHAR(100) NOT NULL,
	Neighborhood VARCHAR(100),
	City VARCHAR(100) NOT NULL,
	StateName VARCHAR(100) NOT NULL,
	ZipCode VARCHAR(10)

)
GO

CREATE TABLE Categories (
    CategoryID INTEGER PRIMARY KEY IDENTITY(1, 1), 
    Name VARCHAR(100) NOT NULL UNIQUE
);
GO


CREATE TABLE Products (
    ProductID INTEGER PRIMARY KEY IDENTITY(1, 1),  -
	CategoryID INT NOT NULL,
    ProductName VARCHAR(100) NOT NULL,
	BrandName VARCHAR(100) NOT NULL UNIQUE                        
    Price DECIMAL(10, 2) NOT NULL,                
    ModeloYear INT NOT NULL,	
);
GO


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1, 1),         
    CustomerID INT NOT NULL,                        
    StoreID INT,                                  
    OrderDate DATETIME NOT NULL,                    
    EstimatedDate DATE,                             
    ShippedDate DATETIME,                           
    OrderStatus VARCHAR(100),
	ShipFee DECIMAL(10, 2),
	Total DECIMAL(10, 2)
);
GO


CREATE TABLE Order_Items (
    Order_ItemID INT PRIMARY KEY IDENTITY(1, 1),    
    OrderID INT NOT NULL,                          
    ProductID INT NOT NULL,                        
    Quantity INT NOT NULL,                         
    UnitPrice DECIMAL(10, 2) NOT NULL,          
    Discount DECIMAL(10, 2) DEFAULT 0.00,         
);
GO


CREATE TABLE Stores (
    StoreID INT PRIMARY KEY IDENTITY(1,1),       
    StoreName VARCHAR(100) NOT NULL,   
	Email VARCHAR(150), 
    City VARCHAR(100) NOT NULL,                     
    State VARCHAR(100) NOT NULL,                   
    ZipCode VARCHAR(10),                            
    Phone VARCHAR(15)                                                      
);
GO


/* CREATE A STAFF TABLE TO STORE EMPLOYEE DATS */
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY IDENTITY(1, 1),         -- Identificador do funcionário
    FirstName VARCHAR(50) NOT NULL,                 -- Primeiro nome
    LastName VARCHAR(50) NOT NULL,                  -- Sobrenome
    Email VARCHAR(150) NOT NULL,                    -- E-mail
    Phone VARCHAR(15),                              -- Telefone
    Position VARCHAR(100) NOT NULL,                 -- Cargo
    StoreID INT                                     -- Identificador da loja
);
GO









