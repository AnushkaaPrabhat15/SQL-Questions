SELECT 
CASE 
WHEN id = (SELECT MAX(id) FROM seat) AND id % 2 = 1 THEN id 
WHEN id % 2 = 1 THEN id + 1 ELSE id - 1 END AS id, student
FROM seat
ORDER BY id


#to swap odd number and even number, use id % 2 to check
#id % 2 = 1 is odd number. Then, add 1 to the id
#id % 2 = 0 is even number. Then, subtract 1 from the id
#but last odd number is not swapped (e.g. id=5 in example)
#therefore we must check whether the id is max or not, by using subquery SELECT MAX(id) FROM seat
#to sort by ID in the end