SELECT 
    d.order_id, 
    p.product_name, 
    d.unit_price, 
    d.quantity, 
    d.discount, 
    CAST(SUM((d.quantity * d.unit_price) - (d.quantity * d.unit_price * d.discount)) AS DECIMAL(10, 2)) AS ExtendedPrice
FROM 
    order_details d
INNER JOIN 
    products p ON d.product_id = p.product_id
GROUP BY 
    d.order_id, p.product_name, d.unit_price, d.quantity, d.discount
ORDER BY 
    d.order_id;
