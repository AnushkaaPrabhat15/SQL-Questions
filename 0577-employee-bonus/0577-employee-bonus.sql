# Write your MySQL query statement below
SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN bonus b
ON e.empId = b.empId 
WHERE b.bonus < 1000 OR b.bonus IS NULL;




/*Use a LEFT JOIN to combine the Employee table with the Bonus table. This ensures that all employees are included in the result, regardless of whether they have a bonus.

In the ON clause of the LEFT JOIN, match the empId from the Employee table with the empId from the Bonus table.
Use a WHERE clause to filter the results so that only employees with a bonus less than 1000 or no bonus at all are included.
Select the name from the Employee table and the bonus from the Bonus table.*/