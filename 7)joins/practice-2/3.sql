SELECT
  student_id,
  course.name,
  student_course.score
FROM
  student_course
  INNER JOIN course ON student_course.course_id = course.id
WHERE
  student_course.student_id = 1
  AND cast(
    strftime("%Y", student_course.enrollment_date) AS integer
  ) = 2021;