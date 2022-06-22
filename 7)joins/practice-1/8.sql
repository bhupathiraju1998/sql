SELECT
  name
FROM
  COURSE
  LEFT JOIN REVIEW ON course.id = review.course_id
WHERE
  review.content IS NULL;