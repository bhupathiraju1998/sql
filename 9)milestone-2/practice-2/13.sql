SELECT
  cast(strftime("%H", user_likes.reacted_at) AS integer) AS hour_of_engagement,
  count(user_likes.reaction_type) AS no_of_likes
FROM
  channel
  INNER JOIN video ON channel.channel_id = video.channel_id
  INNER JOIN video_genre ON video.video_id = video_genre.video_id
  INNER JOIN genre ON genre.genre_id = video_genre.genre_id
  INNER JOIN user_likes ON user_likes.video_id = video.video_id
WHERE
  genre.genre_type LIKE "COMEDY"
  AND user_likes.reaction_type LIKE "LIKE"
GROUP BY
  cast(strftime("%H", user_likes.reacted_at) AS int)
ORDER BY
  no_of_likes DESC
LIMIT
  1