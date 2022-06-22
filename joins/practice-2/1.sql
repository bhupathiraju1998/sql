SELECT
  course.id AS course_id,
  course.name AS course_name,
  instructor.full_name AS instructor_name
FROM
  course NATURAL
  JOIN instructor
WHERE
  instructor.full_name = "Alex";