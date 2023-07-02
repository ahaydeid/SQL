SELECT c.category_name, p.product_name,
  CAST(SUM((d.quantity * d.unit_price) - (d.quantity * d.unit_price * d.discount)) AS DECIMAL(12, 2)) AS ProductSales,
  CONCAT('Qtr', '', EXTRACT(QUARTER FROM o.shipped_date)) AS ShippedQuarter
FROM products p
JOIN categories c ON p.category_id = c.category_id
JOIN order_details d ON p.product_id = d.product_id
JOIN orders o ON d.order_id = o.order_id
WHERE EXTRACT(YEAR FROM o.shipped_date) = 1997
GROUP BY ShippedQuarter, c.category_name, p.product_name
ORDER BY c.category_name, p.product_name;
