# Write your MySQL query statement below
WITH cte as
(
SELECT a.name, 
       a.salary, 
       a.departmentId, 
       b.name as department
    FROM Employee as a
    INNER JOIN Department as b
    ON a.departmentId = b.id
)

SELECT department, 
       name as employee,
       salary
       FROM (
             SELECT *, 
             dense_rank()over 
             (PARTITION BY department ORDER BY salary desc) as rn from 
              cte
            ) as a
        WHERE rn = 1