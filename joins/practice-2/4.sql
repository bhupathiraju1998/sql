SELECT
  student_id,
  student.full_name AS student_name,
  score,
  course_id,
  enrollment_date
FROM
  student_course
  INNER JOIN student ON student_course.student_id = student.id
WHERE
  student_course.course_id = 15
  AND student_course.score > 70
  AND cast(
    strftime("%Y", student_course.enrollment_date) AS integer
  ) = 2020;