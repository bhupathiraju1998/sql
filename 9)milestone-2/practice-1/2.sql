SELECT
  video.name AS video_name,
  no_of_views,
  channel.name AS channel_name
FROM
  video
  INNER JOIN channel ON video.channel_id = channel.channel_id
ORDER BY
  no_of_views DESC,
  channel_name ASC
LIMIT
  10;