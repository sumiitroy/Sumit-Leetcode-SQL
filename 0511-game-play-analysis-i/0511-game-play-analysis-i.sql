# Write your MySQL query statement below

with CTE as
(
    SELECT player_id,
           event_date as first_login,
       ROW_NUMBER() OVER (PARTITION by player_id ORDER by event_date ASC) as rn
    FROM Activity
)

SELECT player_id, first_login FROM cte
WHERE rn = 1