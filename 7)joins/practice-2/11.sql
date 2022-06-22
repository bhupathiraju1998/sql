SELECT
  student.id AS student_id,
  student.full_name AS student_name,
  course.id AS course_id,
  course.name AS course_name,
  score,
  enrollment_date
FROM
  student
  LEFT JOIN student_course ON student.id = student_course.student_id
  LEFT JOIN course ON student_course.course_id = course.id;