SELECT a.student_id,a.student_name,b.subject_name,COUNT(c.subject_name) as attended_exams
FROM Students as a
INNER JOIN Subjects as b
LEFT JOIN Examinations as c
ON a.student_id=c.student_id AND b.subject_name=c.subject_name
GROUP BY a.student_id, b.subject_name
ORDER BY student_id, subject_name