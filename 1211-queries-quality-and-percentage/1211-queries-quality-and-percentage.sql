# Write your MySQL query statement below
SELECT  query_name,
        round(SUM(rating/position)/COUNT(query_name),2) as quality,
        round(SUM(CASE WHEN rating < 3 THEN 1 else 0 END)*100/COUNT(query_name),2) as poor_query_percentage
    FROM Queries
    GROUP BY 1