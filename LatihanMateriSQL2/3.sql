SELECT
    c.CustomerName,
    p.ProductName,
    COALESCE(SUM(od.Quantity), 0) AS "Total Quantity Order"
FROM
    Customers c
    LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
    LEFT JOIN OrderDetails od ON o.OrderID = od.OrderID
    LEFT JOIN Products p ON od.ProductID = p.ProductID
GROUP BY
    c.CustomerName,
    p.ProductName;
