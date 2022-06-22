SELECT
  user_likes.user_id AS user_id,
  count() AS no_of_reactions
FROM
  video
  INNER JOIN user_likes ON video.video_id = user_likes.video_id
WHERE
  channel_id = 366
GROUP BY
  user_likes.user_id
ORDER BY
  no_of_reactions DESC,
  user_id ASC;