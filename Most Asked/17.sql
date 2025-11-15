-- Write a query to find all pairs of products that were ordered together at least once.

SELECT o1.product_id AS product1, o2.product_id AS product2, COUNT(*) AS frequency
FROM orders o1
JOIN orders o2
ON o1.order_id = o2.order_id
AND o1.product_id < o2.product_id
GROUP BY product1, product2
HAVING COUNT(*) > 0;