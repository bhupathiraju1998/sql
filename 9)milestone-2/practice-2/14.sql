SELECT
  user_id AS active_user_id,
  count() AS no_of_likes
FROM
  user_likes
WHERE
  reaction_type = "LIKE"
GROUP BY
  user_id
HAVING
  count(reaction_type) >= 50
ORDER BY
  user_id ASC;