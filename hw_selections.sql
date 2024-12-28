SELECT 
    s.id, 
    s.fullname, 
    ROUND(AVG(g.grade), 2) AS average_grade
FROM students s
JOIN grades g ON s.id = g.student_id
GROUP BY s.id
ORDER BY average_grade DESC
LIMIT 5;


WITH StudentGrades AS (
    SELECT 
        s.id,
        s.fullname,
        ROUND(AVG(g.grade)) as average_grade
    FROM students s
    JOIN grades g ON s.id = g.student_id
    WHERE g.subject_id = 1  -- Предмет, з якого ви хочете знайти середній бал
    GROUP BY s.id
)
SELECT 
    id, 
	fullname, 
    average_grade
FROM StudentGrades
ORDER BY average_grade DESC
LIMIT 1;


SELECT 
    s.id, 
    s.fullname, 
    ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN students s ON s.id = g.student_id
where g.subject_id = 1
GROUP BY s.id
ORDER BY average_grade DESC
LIMIT 1;


select
    ROUND(AVG(g.grade), 2) AS average_grade
from grades g;


SELECT 
    t.id, 
    t.fullname, 
    s.name AS course_name
FROM subjects s
JOIN teachers t ON s.teacher_id = t.id
WHERE t.fullname = 'Michele Huber'; 


SELECT
    s.id AS student_id,
    s.fullname AS student_name,
    g.grade AS grade,
    g.grade_date AS grade_date
FROM grades g
JOIN students s ON g.student_id = s.id
JOIN groups grp ON s.group_id = grp.id
WHERE grp.id = 1
  AND g.subject_id = 1
ORDER BY s.fullname, g.grade_date;


SELECT
    s.id,
    ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN subjects s ON s.id = g.subject_id
JOIN teachers t ON t.id = s.id
where g.subject_id = 1
GROUP BY s.id
ORDER BY average_grade DESC
LIMIT 1;

SELECT
    s.id,
    s.fullname,
    sbj.name
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN subjects sbj ON sbj.id = g.subject_id
WHERE s.fullname = 'Randy Wise';

SELECT
    s.id,
    s.fullname,
    sbj.name AS course_name,
    t.fullname AS teacher_name
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN subjects sbj ON sbj.id = g.subject_id
JOIN teachers t ON t.id = sbj.teacher_id
WHERE s.fullname = 'Randy Wise'
  AND t.fullname = 'Michele Huber';



