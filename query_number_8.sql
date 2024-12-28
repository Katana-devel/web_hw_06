SELECT
    s.id,
    s.fullname,
    sbj.name
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN subjects sbj ON sbj.id = g.subject_id
WHERE s.fullname = 'Randy Wise';