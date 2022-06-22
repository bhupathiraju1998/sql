SELECT
  *
FROM
  review
  INNER JOIN course ON course.id = review.course_id
WHERE
  course.name LIKE "Cyber Security";