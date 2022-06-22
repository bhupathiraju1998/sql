SELECT
  DISTINCT(user_likes.user_id) AS user_id
FROM
  video
  INNER JOIN user_likes ON video.video_id = user_likes.video_id
WHERE
  video.channel_id = 364
  AND user_likes.reaction_type = "LIKE"
EXCEPT
SELECT
  user_likes.user_id AS user_id
FROM
  user_likes
WHERE
  user_likes.reaction_type = "LIKE"
  AND user_likes.video_id = 1005
ORDER BY
  user_likes.user_id ASC;