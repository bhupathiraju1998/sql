SELECT
  user_likes.user_id AS active_user_id,
  count(user_likes.user_id) AS no_of_likes
FROM
  channel
  INNER JOIN video ON channel.channel_id = video.channel_id
  INNER JOIN user_likes ON video.video_id = user_likes.video_id
WHERE
  channel.name = "Tedx"
  AND user_likes.reaction_type = "LIKE"
GROUP BY
  user_likes.user_id
HAVING
  count(user_likes.user_id) >= 5
ORDER BY
  no_of_likes DESC,
  active_user_id ASC;