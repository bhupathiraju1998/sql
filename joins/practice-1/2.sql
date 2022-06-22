SELECT
  *
FROM
  review
  JOIN student ON review.student_id = student.id;