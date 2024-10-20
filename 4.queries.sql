

--- *** Você pode começar com consultas simples e, em seguida,
--- avançar para consultas mais complexas conforme necessário. **/




---Ver todos os clientes e seus pedidos ---------

SELEC * FROM Orders;

SELECT * FROM Customers

----Ver todos os clientes e seus pedidos:
SELECT 
	C.CustomerID, 
	C.FirstName, C.LastName, 
	C.Email, 
	O.OrderDate,
	O.ShippedDate, 
	O.OrderStatus, 
	O.Total,
	Ad.City,
	Ad.ZipCode
FROM Customers AS C 
	INNER JOIN Orders AS O ON O.CustomerID = C.CustomerID
INNER JOIN Customer_Address AS Ad ON Ad.AddressID = C.AddressID


---Ver todos os clientes e seus pedido
SELECT 
	S.StoreName, 
	SUM(O.Total) AS TotalSales
FROM Stores S
	JOIN Orders O ON S.StoreID = O.StoreID
GROUP BY S.StoreName;



---Ver detalhes dos produtos em cada pedido:
SELECT 
	O.OrderID, 
	P.ProductName, 
	OI.Quantity, 
	OI.UnitPrice, 
	OI.Discount
FROM Order_Items OI
	JOIN Products P ON OI.ProductID = P.ProductID
	JOIN Orders O ON O.OrderID = OI.OrderID;


--Pedidos que ainda não foram enviados:
SELECT * FROM Orders
WHERE ShippedDate IS NULL;


---Total de vendas por loja ---
SELECT 
	S.StoreName, 
	SUM(O.Total) AS TotalSales
FROM Stores S
	JOIN Orders O ON S.StoreID = O.StoreID
GROUP BY S.StoreName;


----Cálculo de Total de Pedidos por Cliente
SELECT 
    C.CustomerID,
    C.FirstName,
    C.LastName,
    O.OrderID,
    O.Total,
    SUM(O.Total) OVER (PARTITION BY C.CustomerID ORDER BY O.OrderDate) AS TotalAcumulado
FROM 
    Customers AS C
JOIN 
    Orders AS O ON C.CustomerID = O.CustomerID;
	
------------ Média dos Totais dos Pedidos por Loja -------------	
SELECT 
    StoreID,
    OrderID,
    Total,
    AVG(Total) OVER (PARTITION BY StoreID) AS MediaTotalPorLoja
FROM 
    Orders;

----------. Rankear Pedidos por Valor----------------
SELECT 
    OrderID,
    CustomerID,
    Total,
    RANK() OVER (ORDER BY Total DESC) AS RankTotal
FROM 
    Orders;
	

---------Soma de Taxas de Envio Acumuladas------------
SELECT 
    OrderID,
    ShipFee,
    SUM(ShipFee) OVER (ORDER BY OrderID) AS SomaAcumulativaDeTaxas
FROM 
    Orders;
