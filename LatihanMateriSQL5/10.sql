SELECT e.country, e.last_name, e.first_name, o.shipped_date, o.order_id, 
  CAST(SUM((d.quantity * d.unit_price) - (d.quantity * d.unit_price * d.discount)) AS DECIMAL(10, 2)) AS "Sale_Amount"
FROM employees e
INNER JOIN orders o ON e.employee_id = o.employee_id
INNER JOIN order_details d ON o.order_id = d.order_id
WHERE EXTRACT(YEAR FROM o.shipped_date) = 1997
GROUP BY e.country, e.last_name, e.first_name, o.shipped_date, o.order_id
ORDER BY e.country, e.last_name, e.first_name, o.shipped_date;
