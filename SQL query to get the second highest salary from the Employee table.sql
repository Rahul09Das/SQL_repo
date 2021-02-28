--Question
--Write a SQL query to get the second highest salary from the Employee table.

select 
Case when max(salary) is not null then max(salary)
else
null end as SecondHighestSalary
from Employee
where Salary not in (
select max(salary) from Employee)