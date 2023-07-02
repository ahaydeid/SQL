SELECT p.product_name, c.company_name, EXTRACT(YEAR FROM o.order_date) AS OrderYear,
  CASE WHEN EXTRACT(QUARTER FROM o.order_date) = 1 THEN CAST(SUM((d.quantity * d.unit_price) - (d.quantity * d.unit_price * d.discount)) AS DECIMAL(10, 0))
    ELSE 0 END AS "Qtr 1",
  CASE WHEN EXTRACT(QUARTER FROM o.order_date) = 2 THEN CAST(SUM((d.quantity * d.unit_price) - (d.quantity * d.unit_price * d.discount)) AS DECIMAL(10, 0))
    ELSE 0 END AS "Qtr 2",
  CASE WHEN EXTRACT(QUARTER FROM o.order_date) = 3 THEN CAST(SUM((d.quantity * d.unit_price) - (d.quantity * d.unit_price * d.discount)) AS DECIMAL(10, 0))
    ELSE 0 END AS "Qtr 3",
  CASE WHEN EXTRACT(QUARTER FROM o.order_date) = 4 THEN CAST(SUM((d.quantity * d.unit_price) - (d.quantity * d.unit_price * d.discount)) AS DECIMAL(10, 0))
    ELSE 0 END AS "Qtr 4"
FROM customers c
INNER JOIN orders o ON o.customer_id = c.customer_id
INNER JOIN order_details d ON d.order_id = o.order_id
INNER JOIN products p ON p.product_id = d.product_id
WHERE EXTRACT(YEAR FROM o.order_date) = 1997
GROUP BY p.product_name, c.company_name, o.order_date;
