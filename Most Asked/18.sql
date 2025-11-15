-- Write a query to find the average order value by customer for each month.

SELECT customer_id, YEAR(order_date) AS year, MONTH(order_date) AS month,
AVG(order_amount) AS avg_order_value
FROM orders
GROUP BY customer_id, year, month;