# Write your MySQL query statement below

with cte as
(
  SELECT 'Low Salary' as category
  UNION
  SELECT 'Average Salary' as category
  UNION
  SELECT 'High Salary' as category
),
cte2 as
(
SELECT  CASE WHEN income < 20000 THEN 'Low Salary'
             WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
             WHEN income > 50000 THEN 'High Salary' END AS sal_category
    FROM Accounts
)
SELECT a.category, COUNT(b.sal_category) as accounts_count
FROM cte a
LEFT JOIN cte2 b
ON a.category = b.sal_category
GROUP BY a.category




