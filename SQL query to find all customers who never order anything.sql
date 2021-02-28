--Question
--Write a SQL query to find all customers who never order anything.
select Name as Customers from Customers Cust
Left join Orders Ords
on Cust.ID=Ords.CustomerId
Where Ords.CustomerID is Null