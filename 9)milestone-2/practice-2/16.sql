SELECT
  user_likes.user_id AS potential_user_id,
  count(user_likes.reaction_type) AS no_of_likes
FROM
  video
  INNER JOIN user_likes ON video.video_id = user_likes.video_id
WHERE
  user_likes.reaction_type = "LIKE"
  AND video.channel_id = 352
GROUP BY
  user_likes.user_id
HAVING
  count(user_likes.reaction_type) >= 2
EXCEPT
SELECT
  user_likes.user_id AS potential_user_id,
  count(user_likes.reaction_type) AS no_of_likes
FROM
  video
  INNER JOIN user_likes ON video.video_id = user_likes.video_id
  LEFT JOIN channel_user ON user_likes.user_id = channel_user.user_id
WHERE
  channel_user.subscribed_datetime IS NULL
GROUP BY
  user_likes.user_id
ORDER BY
  no_of_likes DESC,
  potential_user_id ASC;