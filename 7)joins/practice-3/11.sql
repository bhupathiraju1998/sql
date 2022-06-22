SELECT
  post.post_id AS post_id,
  posted_by,
  content,
  posted_at,
  comment_id,
  comment_content,
  commented_at
FROM
  post
  LEFT JOIN COMMENT ON post.post_id = COMMENT.post_id
WHERE
  post.posted_by = 98
ORDER BY
  post.post_id ASC,
  COMMENT.commented_at DESC;