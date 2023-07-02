SELECT order_id, CAST(SUM((quantity * unit_price) - (quantity * unit_price * discount)) AS DECIMAL(10, 2)) AS subtotal
FROM order_details
GROUP BY order_id
ORDER BY order_id;
