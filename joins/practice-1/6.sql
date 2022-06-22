SELECT
  *
FROM
  COURSE
  LEFT JOIN REVIEW ON course.id = review.course_id
WHERE
  course.name LIKE "Cyber Security";