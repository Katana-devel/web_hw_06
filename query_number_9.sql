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