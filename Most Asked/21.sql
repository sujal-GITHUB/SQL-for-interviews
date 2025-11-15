-- Write a query to find the first purchase date of each customer.

SELECT customer_id, MIN(order_date) AS first_purchase_date
FROM orders
GROUP BY customer_id;