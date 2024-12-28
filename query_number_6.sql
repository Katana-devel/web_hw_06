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