SELECT
  name
FROM
  course
  LEFT JOIN student_course ON student_course.course_id = course.id
WHERE
  student_id IS NULL;