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
