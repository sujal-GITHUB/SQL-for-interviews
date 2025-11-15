-- Write a SQL query to find employees who have the same manager.

SELECT e1.name AS Employee
FROM employees e1   
JOIN employees e2
ON e1.managerId = e2.managerId
AND e1.emp_id < e2.emp_id;
