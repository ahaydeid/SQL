SELECT OrderDetails.OrderID, Customers.CustomerName, SUM(Products.Price * OrderDetails.Quantity) AS TotalPrice, 
    CASE
        WHEN SUM(Products.Price * OrderDetails.Quantity) <= 500 THEN 'Hat'
        WHEN SUM(Products.Price * OrderDetails.Quantity) <= 1000 THEN 'T-shirt'
        ELSE 'TV'
    END AS Bonus
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY OrderDetails.OrderID, Customers.CustomerName
ORDER BY OrderDetails.OrderID ASC;
