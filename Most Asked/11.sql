-- Write a query to list all products that have never been ordered (assuming an ‘orders’ table and a ‘products’ table).

SELECT p.product_id, p.product_name
FROM products p
LEFT JOIN orders o
ON p.product_id = o.product_id
WHERE o.product_id IS NULL;