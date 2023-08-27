# Write your MySQL query statement below

with cte as
(
SELECT  turn,
        person_id,
        person_name,
        weight,
        SUM(weight)OVER(order by turn) as total_weight
    FROM queue
    GROUP BY 1,2,3,4
)
SELECT person_name FROM (
    SELECT * 
    FROM cte
    WHERE total_weight <= 1000
    ORDER BY total_weight desc
    LIMIT 1
    ) as sub



