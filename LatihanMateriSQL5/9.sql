SELECT city, company_name, contact_name,
  CASE
    WHEN customer_id IS NULL THEN 'Suppliers'
    WHEN customer_id IS NOT NULL THEN 'Customers'
  END AS "Relationship"
FROM customers
UNION ALL
SELECT city, company_name, contact_name,
  CASE
    WHEN supplier_id IS NULL THEN 'Customers'
    WHEN supplier_id IS NOT NULL THEN 'Suppliers'
  END AS "Relationship"
FROM suppliers
ORDER BY city;
