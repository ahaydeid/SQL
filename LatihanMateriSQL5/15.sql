SELECT c.category_name AS product_category,
  CASE
    WHEN s.country IN ('USA', 'Brazil', 'Canada') THEN 'America'
    WHEN s.country IN ('Australia', 'Japan', 'Singapore') THEN 'Asia Pacific'
    ELSE 'Europe'
  END AS supplier_continent,
  SUM(p.units_in_stock) AS unit_in_stock
FROM categories c
INNER JOIN products p ON c.category_id = p.category_id
INNER JOIN suppliers s ON p.supplier_id = s.supplier_id
GROUP BY c.category_name, supplier_continent
ORDER BY c.category_name;
