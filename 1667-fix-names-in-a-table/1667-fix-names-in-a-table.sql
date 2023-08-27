# Write your MySQL query statement below
select user_id,
        concat(upper(substring(name, 1, 1)),
        lower(substring(name, 2))) as NAME 
    from users 
order by user_id;