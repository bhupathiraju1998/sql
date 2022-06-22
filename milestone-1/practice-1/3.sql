SELECT
  name,
  channel_id,
  no_of_views
FROM
  VIDEO
ORDER BY
  no_of_views DESC,
  published_datetime DESC
LIMIT
  10;