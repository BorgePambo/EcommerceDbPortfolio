2----INSERINDO OS DADOS NA TABELA ------------------------

INSERT INTO Customer_Address (Street, Neighborhood, City, StateName, ZipCode) VALUES 
('123 Main St', 'Downtown', 'San Diego', 'CA', '92101'),      -- Califórnia
('456 Elm St', 'Wynwood', 'Miami', 'FL', '33127'),            -- Flórida
('789 Oak St', 'Brooklyn', 'New York', 'NY', '11201'),        -- Nova York
('321 Maple Ave', 'Lincoln Park', 'Chicago', 'IL', '60614'),  -- Illinois
('654 Pine Rd', 'Uptown', 'Dallas', 'TX', '75201'),           -- Texas
('987 Cedar Blvd', 'Hollywood', 'Los Angeles', 'CA', '90028'), -- Califórnia
('135 Birch Ln', 'Capitol Hill', 'Washington', 'DC', '20002'), -- DC
('246 Spruce Dr', 'Old Town', 'San Antonio', 'TX', '78205'),   -- Texas
('357 Willow Ct', 'North End', 'Boston', 'MA', '02113'),       -- Massachusetts
('468 Ash St', 'Lakeview', 'Seattle', 'WA', '98103');          -- Washington



-----inserindo as tabelas 
INSERT INTO Customers (FirstName, LastName, Email, Gender, Occupation, PhoneNumber, AddressID) VALUES 
('John', 'Doe', 'john.doe@example.com', 'M', 'Engineer', '5551234567', 1),
('Jane', 'Smith', 'jane.smith@example.com', 'F', 'Teacher', '5559876543', 2),
('Bob', 'Johnson', 'bob.johnson@example.com', 'M', 'Designer', '5552345678', 3),
('Alice', 'Williams', 'alice.williams@example.com', 'F', 'Artist', '5553456789', 4),
('Michael', 'Brown', 'michael.brown@example.com', 'M', 'Architect', '5554567890', 5),
('Emily', 'Jones', 'emily.jones@example.com', 'F', 'Nurse', '5555678901', 6),
('David', 'Garcia', 'david.garcia@example.com', 'M', 'Accountant', '5556789012', 7),
('Sophia', 'Martinez', 'sophia.martinez@example.com', 'F', 'Manager', '5557890123', 8),
('James', 'Hernandez', 'james.hernandez@example.com', 'M', 'Sales', '5558901234', 9),
('Olivia', 'Lopez', 'olivia.lopez@example.com', 'F', 'Scientist', '5559012345', 10);


-----inserindo as tabelas na coluna Store
INSERT INTO Stores (StoreName, Email, City, State, Phone, ZipCode) VALUES 
('Supermarket A', 'contact@supermarketa.com', 'Los Angeles', 'CA', '3101234567', '90001'), 
('Electronics Hub', 'info@electronicshub.com', 'New York', 'NY', '2127654321', '10001'),
('Fashion Boutique', 'sales@fashionboutique.com', 'Chicago', 'IL', '3129876543', '60601'),
('Bookstore B', 'info@bookstoreb.com', 'Houston', 'TX', '7134567890', '77001'),
('Grocery Store C', 'hello@grocerystorec.com', 'Miami', 'FL', '3056543210', '33101'),
('Health Store D', 'support@healthstored.com', 'Phoenix', 'AZ', '6021234567', '85001'),
('Furniture Store E', 'sales@furniturestoree.com', 'San Diego', 'CA', '6192345678', '92101'),
('Toys and Games F', 'contact@toysandgamesf.com', 'San Antonio', 'TX', '2107654321', '78201'),
('Sporting Goods G', 'info@sportingoodsg.com', 'Philadelphia', 'PA', '2158765432', '19101'),
('Pet Supplies H', 'support@petsuppliesh.com', 'Dallas', 'TX', '2149876543', '75201');



INSERT INTO Categories(Name) VALUES 
('Electronics'),     
('Clothing'),         
('Groceries'),        
('Furniture'),        
('Books'),            
('Toys'),            
('Health & Beauty'),  
('Sporting Goods'),   
('Pet Supplies'),     
('Home Appliances')
GO


INSERT INTO Products (CategoryID, ProductName, BrandName, Price, ModeloYear) VALUES
(1, 'Smartphone X', 'TechBrand', 799.99, 2023),     -- Eletrônicos
(1, 'Laptop Pro', 'CompuTech', 1200.50, 2023),      -- Eletrônicos
(1, '4K Smart TV', 'VisionTech', 999.99, 2022),     -- Eletrônicos
(1, 'Wireless Earbuds', 'SoundMax', 149.99, 2023),  -- Eletrônicos
(2, 'Leather Jacket', 'FashionWear', 250.00, 2023), -- Roupas
(2, 'Running Shoes', 'SportyBrand', 89.99, 2022),   -- Roupas
(2, 'Jeans Slim Fit', 'DenimCo', 49.99, 2023),      -- Roupas
(2, 'Summer Dress', 'StyleGlam', 39.99, 2023),      -- Roupas
(3, 'Organic Apples', 'GreenFarms', 2.99, 2023),    -- Alimentos
(3, 'Almond Milk', 'NutriDrink', 3.49, 2023),       -- Alimentos
(3, 'Whole Wheat Bread', 'BakeriesBest', 1.99, 2023), -- Alimentos
(3, 'Ground Coffee', 'CafeRoast', 5.99, 2023),      -- Alimentos
(4, 'Wooden Dining Table', 'HomeStyle', 350.00, 2022), -- Móveis
(4, 'Office Chair', 'ErgoComfort', 120.99, 2023),   -- Móveis
(4, 'Bookshelf', 'SpaceSaver', 80.50, 2023),        -- Móveis
(4, 'Sofa 3-Seater', 'ComfyHome', 499.99, 2022),    -- Móveis
(5, 'Mystery Novel', 'BookHouse', 12.99, 2023),     -- Livros
(5, 'Science Fiction', 'GalaxyReads', 15.49, 2022), -- Livros
(5, 'Cooking Recipe Book', 'ChefMaster', 18.99, 2023), -- Livros
(5, 'Self-Help Guide', 'MindWell', 14.99, 2022);    -- Livros


------------INSERINDO na tabela Orders(Pedido)----------------------
INSERT INTO Orders 
(CustomerID, StoreID, OrderDate, EstimatedDate, ShippedDate, OrderStatus, ShipFee, Total)
VALUES
(1, 1, '2024-01-01', '2024-01-05', '2024-01-03', 'Shipped', 10.00, 150.75),
(2, 1, '2024-01-02', '2024-01-06', '2024-01-04', 'Delivered', 5.00, 245.50),
(3, 2, '2024-01-03', '2024-01-07', NULL, 'Cancelled', 0.00, 0.00),
(4, 3, '2024-01-04', '2024-01-08', '2024-01-06', 'Delivered', 8.50, 80.99),
(5, 2, '2024-01-05', '2024-01-09', '2024-01-07', 'Shipped', 12.00, 120.00),
(6, 1, '2024-01-06', '2024-01-10', NULL, 'Pending', 15.00, 200.25),
(7, 4, '2024-01-07', '2024-01-11', '2024-01-09', 'Delivered', 20.00, 325.99),
(8, 3, '2024-01-08', '2024-01-12', NULL, 'Cancelled', 0.00, 0.00),
(9, 2, '2024-01-09', '2024-01-13', '2024-01-11', 'Shipped', 6.00, 450.00),
(10, 5, '2024-01-10', '2024-01-14', '2024-01-12', 'Delivered', 11.00, 600.75);


--------------INSERINDO NA TABELA OrderItem (Itens de Pedido)----------------
INSERT INTO Order_Items (OrderID, ProductID, Quantity, UnitPrice, Discount) VALUES
(1, 1, 2, 50.25, 5.00),       -- Pedido 1
(1, 2, 1, 100.50, 0.00),      -- Pedido 1
(2, 3, 1, 245.50, 10.00),     -- Pedido 2
(2, 4, 3, 75.00, 5.00),       -- Pedido 2
(3, 5, 1, 80.99, 0.00),       -- Pedido 3
(3, 6, 2, 60.00, 0.00),       -- Pedido 3
(4, 7, 5, 40.05, 5.00),       -- Pedido 4
(4, 8, 3, 108.66, 15.00),     -- Pedido 4
(5, 9, 2, 75.50, 0.00),       -- Pedido 5
(5, 10, 4, 112.50, 8.00),     -- Pedido 5
(6, 11, 1, 85.00, 0.00),      -- Pedido 6
(6, 12, 2, 65.50, 5.00),      -- Pedido 6
(7, 13, 1, 150.00, 10.00),    -- Pedido 7
(7, 14, 3, 50.00, 0.00),      -- Pedido 7
(8, 15, 4, 90.00, 0.00),      -- Pedido 8
(9, 16, 2, 200.00, 20.00),    -- Pedido 9
(9, 17, 3, 75.00, 5.00),      -- Pedido 9
(10, 18, 1, 20.00, 0.00),      -- Pedido 10
(10, 19, 2, 150.00, 0.00),     -- Pedido 10
(10, 20, 1, 100.00, 0.00),     -- Pedido 10
(1, 1, 1, 25.00, 0.00),       -- Pedido 1
(2, 2, 2, 40.00, 0.00),       -- Pedido 2
(3, 3, 1, 30.00, 0.00),       -- Pedido 3
(4, 4, 1, 45.00, 0.00),       -- Pedido 4
(5, 5, 1, 90.00, 0.00),       -- Pedido 5
(6, 6, 1, 100.00, 0.00),      -- Pedido 6
(7, 7, 1, 80.00, 0.00),       -- Pedido 7
(8, 8, 1, 20.00, 0.00),       -- Pedido 8
(9, 9, 1, 150.00, 0.00),      -- Pedido 9
(10, 10, 1, 200.00, 0.00);     -- Pedido 10

