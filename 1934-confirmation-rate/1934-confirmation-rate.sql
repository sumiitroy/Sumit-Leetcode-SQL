# Write your MySQL query statement below

with cte as
(
SELECT user_id,
        ROUND(SUM(CASE WHEN action = 'confirmed' THEN 1 else 0 END)
        /
        COUNT(user_id),2) as Confirmation_rate
    FROM confirmations
    GROUP BY 1
    )
SELECT b.user_id,
       IFNULL(confirmation_rate, 0) as confirmation_rate
    FROM cte a
    RIGHT JOIN Signups b
    ON a.user_id = b.user_id