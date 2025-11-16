-- Replace Employee ID With The Unique Identifier

-- Link : https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50

SELECT euni.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI euni
ON e.id = euni.id;