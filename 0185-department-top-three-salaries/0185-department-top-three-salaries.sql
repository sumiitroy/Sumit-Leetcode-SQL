# Write your MySQL query statement below
with join_tab as
(
Select ab.id, ab.name, salary, cd.name as dept_name from Employee as ab
Join Department as cd
ON ab.departmentId = cd.id
)

select dept_name as department, name as Employee,
salary from (select *, dense_rank()over(partition by dept_name order by salary desc) as rnk from join_tab) as hw
where rnk <= 3
Order by salary desc