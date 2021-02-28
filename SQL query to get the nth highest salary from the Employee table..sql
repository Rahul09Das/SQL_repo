--Question:
-- Write a SQL query to get the nth highest salary from the Employee table.

CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        /* Write your T-SQL query statement below. */
        select distinct
        case when 
        a.salary is not null then a.salary
        else null end as getNthHighestSalary
        from
        (select 
        DENSE_RANK () over (order by salary desc) as rank ,
        salary
        from Employee)a
        where a.rank = @N
    );
END