-- Write a query to find the ‘Nth’ highest salary from the employee table (e.g., 5th highest salary).

SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET (N-1);