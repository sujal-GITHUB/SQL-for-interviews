-- Write a query to find the 2nd highest salary from an employee table.

SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;