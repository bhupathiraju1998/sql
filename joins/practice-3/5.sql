SELECT
  user.user_id,
  user.name AS user_name,
  user.age AS age,
  user.gender AS gender,
  count(post_id) AS posts_count
FROM
  user
  LEFT JOIN post ON post.posted_by = user.user_id
GROUP BY
  user.user_id
HAVING
  posts_count >= 2
ORDER BY
  posts_count DESC,
  user.user_id ASC;