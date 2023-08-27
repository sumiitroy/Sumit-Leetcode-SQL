# Write your MySQL query statement below

with first_order as
(
    SELECT customer_id,
            min(order_date) as first_order_date,
            min(customer_pref_delivery_date) as first_del_date
    FROM Delivery
    GROUP BY 1
)

SELECT round((SELECT count(customer_id) FROM first_order
                WHERE datediff(first_del_date, first_order_date) < 1)*100
                /
        (SELECT COUNT(DISTINCT customer_id) FROM Delivery),2) as immediate_percentage      