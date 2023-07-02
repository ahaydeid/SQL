SELECT
    c.CustomerName,
    COUNT(DISTINCT p.ProductID) AS "Total Product"
FROM
    Customers c
    LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
    LEFT JOIN OrderDetails od ON o.OrderID = od.OrderID
    LEFT JOIN Products p ON od.ProductID = p.ProductID
GROUP BY
    c.CustomerName;
