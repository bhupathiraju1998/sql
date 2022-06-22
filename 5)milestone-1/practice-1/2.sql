SELECT
  video_id,
  name,
  duration_in_secs,
  no_of_views
FROM
  VIDEO
WHERE
  channel_id = 353
  AND no_of_views > 50000
ORDER BY
  no_of_views DESC,
  name ASC;