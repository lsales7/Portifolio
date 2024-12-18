USE ImportExport

-- RECEITA TOTAL 
SELECT
	FORMAT(SUM(OD.UnitPrice * OD.Quantity * (1-OD.Discount)),'C') Total_Revenue
FROM [Order Details] OD

--MARGEM DE LUCRO
SELECT
	AVG(O.Freight) Averege_Freight_Cost
FROM ORDERS O

--TOTAL DE PEDIDOS
SELECT
	COUNT(OrderID) Orders
FROM [Order Details]

--TOTAL DE RECEITA POR CLIENTE
SELECT 
	C.CustomerID,
	C.CompanyName,
	SUM(OD.UnitPrice * OD.Quantity * (1-OD.Discount)) Total_Revenue_Customer
	
FROM Customers C
INNER JOIN Orders O ON O.CustomerID = C.CustomerID
INNER JOIN [Order Details] OD ON OD.OrderID = O.OrderID
GROUP BY C.CustomerID, C.CompanyName
ORDER BY 3 DESC

--PRODUTOS MAIS VENDIDOS

SELECT
	p.ProductName,
	C.CategoryName,
	COUNT (OD.OrderID) BestSelling_Product
FROM Products P
INNER JOIN [Order Details] OD ON OD.ProductID = P.ProductID
INNER JOIN Categories c ON C.CategoryID = P.CategoryID
GROUP BY P.ProductName, c.CategoryName
ORDER BY 3 DESC

--TOTAL DE RECEITA POR ANO

SELECT 
	YEAR (O.OrderDate) 'Year',
	SUM (OD.UnitPrice * OD.Quantity * (1-OD.Discount)) Total_Revenue_Year
FROM Orders O
INNER JOIN [Order Details] OD ON OD.OrderID = O.OrderID
GROUP BY YEAR (O.OrderDate) 

--TOTAL DE RECEITA POR ANO SEM DESCONTO

SELECT 
	YEAR (O.OrderDate) 'Year',
	SUM (OD.UnitPrice * OD.Quantity) Total_Revenue_Year
FROM Orders O
INNER JOIN [Order Details] OD ON OD.OrderID = O.OrderID
GROUP BY YEAR (O.OrderDate) 

--TOTAL DE RECEITA POR TRIMESTRE

SELECT 
	YEAR (O.OrderDate) 'Year',
	DATEPART(QUARTER, O.OrderDate) Quarter,
	SUM (OD.UnitPrice * OD.Quantity) Total_Revenue_Year
FROM Orders O
INNER JOIN [Order Details] OD ON OD.OrderID = O.OrderID
GROUP BY YEAR (O.OrderDate), DATEPART(QUARTER, O.OrderDate)
ORDER BY YEAR (O.OrderDate)


--TEMPO MÉDIO DE ENTREGA

SELECT
	O.ShipCountry,
	AVG (DATEDIFF(Day, O.OrderDate, O.ShippedDate)) AVG_Delivery_Country
FROM Orders O
WHERE O.ShippedDate IS NOT NULL
GROUP BY O.ShipCountry
ORDER BY 2 ASC


--FRETE DE EXPORTAÇÃO PAGO POR PAÍS 

SELECT
	O.ShipCountry,
	SUM(O.Freight) Total_Freight_Country
FROM Orders O
GROUP BY O.ShipCountry
ORDER BY Total_Freight_Country DESC


