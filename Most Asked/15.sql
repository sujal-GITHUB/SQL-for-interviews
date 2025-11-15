-- Write a query to display the employee(s) with the longest tenure at the company.

SELECT *
FROM employees
ORDER BY hire_date ASC
LIMIT 1;