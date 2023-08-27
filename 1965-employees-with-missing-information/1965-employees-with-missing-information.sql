/* Write your PL/SQL query statement below */
with cte as
(
    SELECT COALESCE(a.employee_id, b.employee_id) as employee_id,
       a.name,
       b.salary
    FROM employees a
    FULL JOIN salaries b
    ON a.employee_id = b.employee_id
    )
SELECT employee_id from cte
WHERE name is NULL or salary is NULL
ORDER BY 1