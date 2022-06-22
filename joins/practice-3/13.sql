SELECT
  user_id,
  name,
  post.post_id AS post_id,
  content,
  posted_at,
  count(COMMENT.comment_id) AS comments_count
FROM
  user
  LEFT JOIN post ON user.user_id = post.posted_by
  LEFT JOIN COMMENT ON post.post_id = COMMENT.post_id
GROUP BY
  post.post_id
ORDER BY
  user.user_id ASC,
  post.post_id ASC;