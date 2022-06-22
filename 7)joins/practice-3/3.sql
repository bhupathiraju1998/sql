SELECT
  count(post_id) AS posts_count
FROM
  post
  JOIN user ON post.posted_by = user.user_id
WHERE
  name = "James Williams"
ORDER BY
  posted_at DESC