


-- Adicionando a chave estrangeira das Tabelas

ALTER TABLE Customers 
ADD CONSTRAINT FK_Customers_AddressID 
FOREIGN KEY (AddressID) REFERENCES Customer_Address(AddressID);

ALTER TABLE Products
ADD CONSTRAINT FK_Products_Category
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);
GO

ALTER TABLE Order_Items 
ADD  CONSTRAINT fk_OrderItens_Orders 
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID);

ALTER TABLE Order_Items 
ADD CONSTRAINT fk_OrdItens_Product 
FOREIGN KEY (ProductID) REFERENCES Products(ProductID);

ALTER TABLE Orders
ADD CONSTRAINT fk_order_store 
FOREIGN KEY(StoreID) REFERENCES Stores(StoreID);


ALTER TABLE Staffs
ADD CONSTRAINT fk_staff_store 
FOREIGN KEY(StoreID) REFERENCES Stores(StoreID)
GO
