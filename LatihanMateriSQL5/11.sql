SELECT product_name, unit_price
FROM products
WHERE unit_price > (SELECT AVG(total)
                    FROM (SELECT SUM(unit_price) AS total
                          FROM products
                          GROUP BY product_name) AS average)
ORDER BY unit_price;
