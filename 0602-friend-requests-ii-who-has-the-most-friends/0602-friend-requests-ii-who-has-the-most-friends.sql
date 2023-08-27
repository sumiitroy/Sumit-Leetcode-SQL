# Write your MySQL query statement below
with cte as
(
SELECT requester_id as id FROM RequestAccepted
UNION ALL
SELECT accepter_id as id FROM RequestAccepted
)

SELECT id, count(id) as num FROM cte
GROUP BY 1
ORDER BY num desc
LIMIT 1




