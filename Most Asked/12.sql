-- Write a query to list all the employees who are also managers.

SELECT DISTINCT e.*
FROM employees e
JOIN employees m
ON e.employee_id = m.manager_id;