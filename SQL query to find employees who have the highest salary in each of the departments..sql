--Question
/* Write a SQL query to find employees who have the highest salary in each of the departments. 
For the above tables, your SQL query should return the following rows (order of rows does not matter).
 */
select d.Name as Department,a.Name as Employee,a.Salary
from Employee a
join 
(
select Emp.DepartmentID as Department, max(Emp.Salary) as Max
from Employee as Emp
Group by Emp.DepartmentID
) b
on a.departmentid = b.department
join Department d
on a.departmentid = d.Id
where a.Salary = b.Max

