SELECT
  count(student_id) AS no_of_courses
FROM
  student_course
  INNER JOIN student ON student_course.student_id = student.id
WHERE
  student.full_name = "Ram";