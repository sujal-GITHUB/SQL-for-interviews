-- Write a query to identify customers who made a purchase every month for the past year.

SELECT customer_id
FROM orders
WHERE order_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY customer_id
HAVING COUNT(DISTINCT MONTH(order_date)) = 12;