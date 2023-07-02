SELECT
    o.OrderID,
    c.CustomerName,
    SUM(od.Quantity * p.Price) AS TotalPrice
FROM
    Orders o
    JOIN Customers c ON o.CustomerID = c.CustomerID
    JOIN OrderDetails od ON o.OrderID = od.OrderID
    JOIN Products p ON od.ProductID = p.ProductID
GROUP BY
    o.OrderID,
    c.CustomerName;
