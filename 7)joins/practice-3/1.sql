SELECT
  name,
  age,
  post_id,
  content,
  posted_at
FROM
  post
  JOIN user ON post.posted_by = user.user_id
ORDER BY
  posted_at DESC