SELECT
  name,
  age,
  post_id,
  content,
  posted_at
FROM
  post
  JOIN user ON post.posted_by = user.user_id
WHERE
  name = "James Williams"
ORDER BY
  posted_at DESC
LIMIT
  5;