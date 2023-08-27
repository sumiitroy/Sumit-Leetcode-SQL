# Write your MySQL query statement below

SELECT w.id
       FROM Weather w
    JOIN Weather s
   ON datediff(w.recordDate, s.recordDate) = 1
   AND w.temperature > s.temperature