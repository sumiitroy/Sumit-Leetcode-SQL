# Write your MySQL query statement below
with cte as
(
SELECT num,
LAG(num, 1)OVER() as lag_1,
LAG(num, 2)OVER() as lag_2,
LEAD(num, 1)OVER() as lead_1,
LEAD(num, 2)OVER() as lead_2
FROM Logs
)
SELECT DISTINCT num as ConsecutiveNums FROM cte
WHERE (num = lag_1 AND num = lag_2)
OR (num = lag_1 AND num = lead_1)
OR (num = lead_1 AND num = lead_2)
