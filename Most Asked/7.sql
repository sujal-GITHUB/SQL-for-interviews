-- Write a query to find the running total of orders for each customer sorted by order date.

SELECT customer_id, order_id, order_date,
SUM(order_amount) OVER (PARTITION BY customer_id ORDER BY order_date) AS running_total
FROM orders;