-- Rising Temperature

-- Link : https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50

SELECT w1.id
FROM Weather w1
JOIN Weather w2
ON DATE_ADD(w2.recordDate, INTERVAL 1 DAY) = w1.recordDate
WHERE w1.temperature > w2.temperature