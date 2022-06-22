SELECT
  user.user_id,
  user.name AS user_name,
  count(post_id) AS posts_count
FROM
  user
  LEFT JOIN post ON post.posted_by = user.user_id
GROUP BY
  user.user_id
ORDER BY
  posts_count DESC,
  user.user_id ASC;