# Write your MySQL query statement below

# SELECTING IDs with people above 100 People

with id_table as
(
SELECT *,
        LAG(id, 1)OVER(order by id) as lag_1,
        LAG(id, 2)OVER(order by id) as lag_2,
        LEAD(id, 1)OVER(order by id) as lead_1,
        LEAD(id, 2)OVER(order by id) as lead_2
FROM Stadium
    WHERE people >= 100
)

SELECT id, visit_date, people FROM id_table
WHERE (lag_1 = id - 1 AND lag_2 = id - 2)
OR (lag_1 = id - 1 AND lead_1 = id + 1)
OR (lead_1 = id + 1 AND lead_2 = id + 2)