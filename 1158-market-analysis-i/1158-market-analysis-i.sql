# Write your MySQL query statement below
SELECT a.user_id as buyer_id,
        a.join_date,
        count(b.order_id) as orders_in_2019
    FROM Users a
    LEFT JOIN (SELECT * from Orders
              WHERE order_date >= '2019-01-01' AND order_date <= '2019-12-31') b
    ON a.user_id = b.buyer_id
    GROUP by 1,2