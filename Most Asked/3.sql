-- Write a query to find the first and last record for each employee based on the ‘hire_date’ column.

(SELECT * FROM employees ORDER BY hire_date ASC LIMIT 1)
UNION
(SELECT * FROM employees ORDER BY hire_date DESC LIMIT 1);