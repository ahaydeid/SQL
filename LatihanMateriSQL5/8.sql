SELECT 
    c.category_name, 
    p.product_name, 
    p.quantity_per_unit, 
    p.units_in_stock,
    CASE
        WHEN p.discontinued = 1 THEN 'y'
        ELSE 'n'
    END AS discontinued
FROM 
    products p
INNER JOIN 
    categories c ON p.category_id = c.category_id
ORDER BY 
    c.category_name, p.product_name;
