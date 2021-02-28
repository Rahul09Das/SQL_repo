--Question
/*Write a SQL query to find the cancellation rate of requests with unbanned users (both client and driver must not be banned) each day between "2013-10-01" and "2013-10-03".
The cancellation rate is computed by dividing the number of canceled (by client or driver) requests with unbanned users by the total number of requests with unbanned users on that day.
Return the result table in any order. Round Cancellation Rate to two decimal points.
*/

select Request_at as Day,
cast(ROUND(sum(case when status like '%cancelled%' then 1 else 0 end)*1.0/count(status),2) as float) as 'Cancellation Rate'
from Trips
where Request_at between '2013-10-01' and '2013-10-03'
and Client_Id not in (select distinct Users_Id from Users where banned = 'Yes')
and Driver_Id not in (select distinct Users_Id from Users where banned = 'Yes')
group by Request_at