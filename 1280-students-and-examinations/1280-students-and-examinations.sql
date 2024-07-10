# Write your MySQL query statement below
SELECT s.student_id, s.student_name, sub.subject_name, COUNT(e.subject_name)AS attended_exams 
FROM students s
CROSS JOIN subjects sub
LEFT JOIN Examinations e
ON e.student_id = s.student_id
AND e.subject_name= sub.subject_name
Group by student_id, student_name, subject_name
Order by student_id ,subject_name



