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