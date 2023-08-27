# Write your MySQL query statement below
SELECT product_id
    FROM ( SELECT * FROM Products
            WHERE low_fats = 'Y'
            AND recyclable = 'Y'
    ) as abcd