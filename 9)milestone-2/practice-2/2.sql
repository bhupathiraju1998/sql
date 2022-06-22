SELECT
  count(DISTINCT user_likes.user_id) AS no_of_users_reached
FROM
  video
  LEFT JOIN user_likes ON video.video_id = user_likes.video_id
WHERE
  video.channel_id = 352
  AND user_likes.reaction_type = "LIKE";