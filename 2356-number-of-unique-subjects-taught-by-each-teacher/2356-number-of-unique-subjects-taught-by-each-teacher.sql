# Write your MySQL query statement below

SELECT  teacher_id,
        COUNT(DISTINCT subject_id) as cnt
    FROM teacher
    GROUP BY 1