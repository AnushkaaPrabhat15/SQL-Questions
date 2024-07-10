# Write your MySQL query statement below
SELECT e1.name
From Employee e1
Join Employee e2
ON e1.id= e2.managerID
Group by e2.managerID
Having count(e2.managerID)>=5