SELECT ProductName, Price
FROM Products
WHERE Price = (
    SELECT MAX(Price)
    FROM Products
);