SELECT COUNT(*) AS OrderCount
FROM OrderDetails
WHERE ProductID = (
    SELECT ProductID
    FROM Products
    WHERE ProductName = 'Konbu'
);
