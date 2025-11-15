-- Write a SQL query to get a list of employees who are older than the average age of employees in their department.

SELECT *
FROM employees e
WHERE age > (
    SELECT AVG(age)
    FROM employees
    WHERE department_id = e.department_id
);