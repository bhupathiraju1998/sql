SELECT
  comment_id,
  comment_content,
  commented_by,
  commented_at
FROM
  post
  INNER JOIN COMMENT ON post.post_id = COMMENT.post_id
WHERE
  post.post_id = 5
ORDER BY
  commented_at ASC;