# Write your MySQL query statement below

with CTE as
(
    SELECT
      customer_number, count(customer_number) as total
FROM Orders
GROUP BY customer_number
ORDER by total desc
LIMIT 1
)

SELECT customer_number FROM cte