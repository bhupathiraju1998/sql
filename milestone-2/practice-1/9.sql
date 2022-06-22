SELECT
  cast(strftime("%Y", published_datetime) AS integer) AS year,
  count() AS no_of_videos
FROM
  video
WHERE
  cast(strftime("%Y", published_datetime) AS integer) BETWEEN 2010
  AND 2016
GROUP BY
  cast(strftime("%Y", published_datetime) AS integer)
ORDER BY
  cast(strftime("%Y", published_datetime) AS integer) ASC;