# Write your MySQL query statement below
with cte as
(
SELECT class, count(student)
    FROM Courses
GROUP BY class
HAVING count(student) >= 5
)

SELECT class from cte