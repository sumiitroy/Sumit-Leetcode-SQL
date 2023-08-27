# Write your MySQL query statement below
SELECT customer_id,
        count(customer_id) as count_no_trans
FROM
(
SELECT v.visit_id,
       v.customer_id,
       t.transaction_id,
       t.amount
    FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.amount is NULL
) as sub
GROUP BY 1