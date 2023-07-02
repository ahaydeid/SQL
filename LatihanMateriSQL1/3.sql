SELECT ProductName, Price
FROM Products
WHERE Price = (
    SELECT MIN(Price)
    FROM Products
);