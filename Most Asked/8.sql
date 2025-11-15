-- Write a query to get the total number of employees hired per month and year.

SELECT YEAR(hire_date) AS year, MONTH(hire_date) AS month, COUNT(*) AS total_hires
FROM employees
GROUP BY year, month;