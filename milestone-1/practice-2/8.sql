SELECT
  CAST(strftime("%Y", published_datetime) AS INTEGER) AS year,
  COUNT(video_id) AS no_of_videos
FROM
  VIDEO
GROUP BY
  year
ORDER BY
  year ASC;