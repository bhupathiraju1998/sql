SELECT
  video_id,
  name,
  duration_in_secs,
  no_of_views
FROM
  VIDEO
WHERE
  strftime("%Y", published_datetime) = "2018"
ORDER BY
  published_datetime DESC,
  name ASC;