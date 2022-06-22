SELECT
  count(video.video_id) AS no_of_videos
FROM
  channel
  INNER JOIN video ON channel.channel_id = video.channel_id
WHERE
  channel.name LIKE "News for you"
  AND cast(
    strftime("%Y", video.published_datetime) AS integer
  ) = 2018