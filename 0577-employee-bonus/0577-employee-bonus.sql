# Write your MySQL query statement below

SELECT a.name,
       b.bonus
    FROM employee a
    LEFT JOIN Bonus b
    ON a.empId = b.empId
    WHERE b.bonus is NULL OR b.bonus < 1000