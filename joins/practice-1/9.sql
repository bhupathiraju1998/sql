SELECT
  full_name
FROM
  student
  LEFT JOIN student_course ON student_course.student_id = student.id
WHERE
  course_id IS NULL;