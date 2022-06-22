SELECT
  user_id,
  name,
  post.post_id AS post_id,
  content,
  posted_at,
  count(reaction.reaction_id) AS reactions_count
FROM
  user
  LEFT JOIN post ON user.user_id = post.posted_by
  LEFT JOIN reaction ON post.post_id = reaction.post_id
GROUP BY
  post.post_id
ORDER BY
  user.user_id ASC,
  post.post_id ASC;