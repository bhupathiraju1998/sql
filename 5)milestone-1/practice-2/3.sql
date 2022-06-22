SELECT
  channel_id,
  COUNT(video_id) AS videos_count
FROM
  VIDEO
GROUP BY
  channel_id