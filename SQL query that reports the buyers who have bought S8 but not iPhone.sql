--Question
/* Write an SQL query that reports the buyers who have bought S8 but not iPhone. 
Note that S8 and iPhone are products present in the Product table
 */
SELECT s.buyer_id
FROM Sales AS s
INNER JOIN Product AS p
ON p.product_id =s.product_id
WHERE p.product_name = 'S8'

EXCEPT 

SELECT s.buyer_id
FROM Sales AS s
INNER JOIN Product AS p
ON p.product_id =s.product_id
WHERE p.product_name='iPhone'