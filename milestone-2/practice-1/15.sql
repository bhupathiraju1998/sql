SELECT
  user.country AS country,
  count() AS no_of_subscribers
FROM
  user
  INNER JOIN channel_user ON user.user_id = channel_user.user_id
WHERE
  channel_user.channel_id = 399
GROUP BY
  user.country
ORDER BY
  user.country ASC;