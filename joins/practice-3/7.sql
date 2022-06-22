SELECT
  post.post_id AS post_id,
  content,
  posted_by,
  count() AS positive_reactions_count
FROM
  post
  LEFT JOIN reaction ON post.post_id = reaction.post_id
WHERE
  reaction.reaction_type IN ("LIKE", "LIT", "WOW", "LOVE")
GROUP BY
  reaction.post_id
ORDER BY
  positive_reactions_count DESC,
  post.post_id ASC;