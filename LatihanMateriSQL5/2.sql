SELECT 
    o.shipped_date, 
    o.order_id, 
    CAST(SUM((D.quantity * D.unit_price) - (D.quantity * D.unit_price * D.discount)) AS DECIMAL(10, 2)) AS subtotal, 
    EXTRACT(YEAR FROM o.shipped_date) AS year
FROM 
    order_details D
INNER JOIN 
    orders o ON D.order_id = o.order_id
WHERE 
    o.shipped_date >= '1996-12-24' AND o.shipped_date <= '1997-09-30'
GROUP BY 
    o.order_id, o.shipped_date
ORDER BY 
    o.shipped_date;
