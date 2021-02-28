--Question
/* Write an SQL query that reports the product_name, year, and price for each sale_id in the Sales table.
 */
select p.product_name, s.year, s.price from Sales s left join Product P on s.product_id=p.product_id