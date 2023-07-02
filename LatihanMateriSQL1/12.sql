SELECT *
FROM Products
WHERE CategoryID IN (
    SELECT CategoryID
    FROM Categories
    WHERE CategoryName = 'Beverages'
) AND Price > (SELECT AVG(Price) FROM Products);
