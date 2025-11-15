-- Write a query to calculate the year-on-year growth of revenue.

SELECT YEAR(order_date) AS year,
SUM(order_amount) AS revenue,
(SUM(order_amount) — LAG(SUM(order_amount)) OVER (ORDER BY YEAR(order_date))) / LAG(SUM(order_amount)) OVER (ORDER BY YEAR(order_date)) * 100 AS yoy_growth
FROM orders
GROUP BY year;