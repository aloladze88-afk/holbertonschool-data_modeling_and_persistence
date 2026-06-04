SELECT c.title
FROM courses AS c
JOIN enrollments AS e
  ON c.id = e.course_id
GROUP BY c.id, c.title
HAVING COUNT(e.student_id) > (
    SELECT AVG(enrollment_count)
    FROM (
        SELECT COUNT(*) AS enrollment_count
        FROM enrollments
        GROUP BY course_id
    ) AS course_counts
)
ORDER BY c.title ASC;