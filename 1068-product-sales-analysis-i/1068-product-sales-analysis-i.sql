# Write your MySQL query statement below
select product_name, year, price
from Sales AS S
JOIN Product AS P
on S.product_id = P.product_id;