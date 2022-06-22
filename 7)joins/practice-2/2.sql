SELECT
  course.name AS course_name,
  student_id,
  content
FROM
  review
  INNER JOIN course ON review.course_id = course.id
WHERE
  course.name = "Cyber Security";