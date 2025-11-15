-- Write a query to find the total salary of each department and display departments with a total salary greater than a specified value (e.g., 50,000).

SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
HAVING SUM(salary) > 50000;