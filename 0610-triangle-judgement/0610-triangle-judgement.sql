# Write your MySQL query statement below
/*Approach
Use a CASE statement to evaluate whether the given lengths (x, y, z) can form a triangle.
Conditions:
x + y > z: Sum of x and y is greater than z.
x + z > y: Sum of x and z is greater than y.
y + z > x: Sum of y and z is greater than x.
If all these conditions are true, then the line segments (x, y, z) can form a triangle, so return 'Yes'.
Otherwise, return 'No' */

select x, y, z,
case when x+y>z and x+z>y and  y+z>x then 'Yes' else 'No' end as triangle 
from triangle
