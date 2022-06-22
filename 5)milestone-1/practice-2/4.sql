SELECT
  channel_id
FROM
  VIDEO
GROUP BY
  channel_id
HAVING
  COUNT(video_id) >= 50
ORDER BY
  channel_id ASC