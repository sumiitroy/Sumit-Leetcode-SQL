# Write your MySQL query statement below
with cte as
(SELECT actor_id,
        director_id,
        count(timestamp)
    FROM ActorDirector
    group by actor_id, director_id
    having count(timestamp) > 2)
    
SELECT actor_id,
        director_id FROM cte