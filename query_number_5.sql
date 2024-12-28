SELECT
    t.id,
    t.fullname,
    s.name AS course_name
FROM subjects s
JOIN teachers t ON s.teacher_id = t.id
WHERE t.fullname = 'Michele Huber';