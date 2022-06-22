SELECT
  DISTINCT(channel.channel_id) AS channel_id,
  channel.name AS channel_name
FROM
  video
  INNER JOIN channel ON video.channel_id = channel.channel_id
WHERE
  video.name LIKE "%review%"
ORDER BY
  channel.name ASC;