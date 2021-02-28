--Question
/*write a SQL query that finds out managers with at least 5 direct report.
For the above table, your SQL query should return:*/

select c.name as name
from
(
select 
e.name as name,
e.department,
m.managerid as id
,count(m.managerid) as count
from Employee e
join Employee m
on e.id=m.managerid
group by m.managerid, e.name, e.department
having count(m.managerid) >= 5
) c
