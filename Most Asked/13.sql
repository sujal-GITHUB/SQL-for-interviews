-- Write a query to find employees who have joined in the same month and year.

SELECT e1.employee_id, e1.name, e1.hire_date
FROM employees e1
JOIN employees e2
ON YEAR(e1.hire_date) = YEAR(e2.hire_date)
AND MONTH(e1.hire_date) = MONTH(e2.hire_date)
AND e1.employee_id != e2.employee_id;