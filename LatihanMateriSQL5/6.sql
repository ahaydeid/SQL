SELECT 
    c.category_id, 
    c.category_name, 
    p.product_name, 
    CAST(SUM((d.quantity * d.unit_price) - (d.quantity * d.unit_price * d.discount)) AS DECIMAL(10, 2)) AS ProductSales
FROM 
    categories c
INNER JOIN 
    products p ON c.category_id = p.category_id
INNER JOIN 
    order_details d ON p.product_id = d.product_id
INNER JOIN 
    orders o ON o.order_id = d.order_id
WHERE 
    EXTRACT(YEAR FROM o.order_date) = 1997
GROUP BY 
    c.category_id, c.category_name, p.product_name
ORDER BY 
    c.category_name, p.product_name;
