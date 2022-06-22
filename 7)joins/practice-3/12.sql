SELECT
  post.post_id AS post_id,
  posted_by,
  content,
  posted_at,
  count(COMMENT.comment_id) AS comments_count
FROM
  post
  LEFT JOIN COMMENT ON post.post_id = COMMENT.post_id
WHERE
  post.posted_by = 98
GROUP BY
  post.post_id
ORDER BY
  post.post_id ASC;