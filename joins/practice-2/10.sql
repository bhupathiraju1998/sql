SELECT
  student_course.student_id,
  student.full_name,
  course.id AS course_id,
  course.name AS course_name,
  student_course.enrollment_date
FROM
  student
  JOIN student_course ON student.id = student_course.student_id
  JOIN course ON student_course.course_id = course.id
WHERE
  course.name = "Machine Learning"
  AND CAST(
    strftime("%Y", enrollment_date) AS integer
  ) = 2021;