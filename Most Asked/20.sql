-- Write a query to find the total revenue for each region in a given quarter.

SELECT region, QUARTER(order_date) AS quarter, SUM(order_amount) AS total_revenue
FROM orders
GROUP BY region, quarter;