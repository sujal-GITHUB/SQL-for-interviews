-- Write a query to get the second-lowest salary from the employee table without using LIMIT or OFFSET.

SELECT MIN(salary)
FROM employees
WHERE salary > (SELECT MIN(salary) FROM employees);