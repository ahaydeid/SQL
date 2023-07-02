SELECT Products.ProductName, SUM(OrderDetails.Quantity) AS "Total Quantity Sold",
    CASE
        WHEN SUM(OrderDetails.Quantity) < 30 THEN 'Not recommended product'
        WHEN SUM(OrderDetails.Quantity) < (SELECT AVG(TotalQuantity) FROM (SELECT ProductID, SUM(Quantity) AS TotalQuantity FROM OrderDetails GROUP BY ProductID) AS ProductTotals) THEN 'Recommended Product'
        ELSE 'Best Seller'
    END AS Details
FROM Products
JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
GROUP BY Products.ProductID, Products.ProductName
LIMIT 30;
