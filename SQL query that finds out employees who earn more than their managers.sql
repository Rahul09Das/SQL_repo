/* Question
Given the Employee table, write a SQL query that finds out employees who earn more than their managers. 
For the above table, Joe is the only employee who earns more than his manager.
 */
select 
a.Name as Employee
from
Employee a
join Employee b
on a.ManagerId=b.id
where a.Salary>b.Salary and b.Salary is not null