# Write your MySQL query statement below

SELECT  a.product_name,
        SUM(b.unit) as unit
    FROM Products a
    INNER JOIN Orders b
    ON a.product_id = b.product_id
    WHERE LEFT(order_date, 7) = '2020-02'
    GROUP BY 1
    HAVING SUM(b.unit) >= 100



