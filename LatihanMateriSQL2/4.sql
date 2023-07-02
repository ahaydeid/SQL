SELECT Customers.Country, Products.ProductName, SUM(OrderDetails.Quantity) AS "Total  Quantity Per Product"
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY Customers.Country, Products.ProductName;
