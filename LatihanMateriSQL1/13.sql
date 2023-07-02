SELECT *
FROM Orders
WHERE ShipperID = (
    SELECT ShipperID
    FROM Shippers
    WHERE ShipperName = 'Speedy Express'
);
