--Question
/* Mary is a teacher in a middle school and she has a table seat storing students' names and their corresponding seat ids.
The column id is continuous increment.
Mary wants to change seats for the adjacent students.
Can you write a SQL query to output the result for Mary? */

select 
case when
    id = (select max(id)from seat) and id%2<> 0 then id
    when
    id%2 = 0 then id-1
    else
    id+1
    end as id, student
    from seat
    order by id