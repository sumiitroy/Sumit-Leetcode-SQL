# Write your MySQL query statement below

SELECT a.product_id,
       ROUND(SUM(units * price)/SUM(units),2) as average_price
    FROM Prices a
    INNER JOIN UnitsSold b
    ON a.product_id = b.product_id
    AND b.purchase_date between a.start_date and a.end_date
    GROUP BY 1