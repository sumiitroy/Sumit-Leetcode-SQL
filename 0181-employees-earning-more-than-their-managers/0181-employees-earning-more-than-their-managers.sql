# Write your MySQL query statement below

SELECT
     a.NAME AS Employee
FROM Employee a 
INNER JOIN Employee b
     ON a.ManagerId = b.Id
     AND a.Salary > b.Salary;