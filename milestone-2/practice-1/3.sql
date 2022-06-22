SELECT
  name,
  no_of_views,
  cast(strftime("%Y", published_datetime) AS integer) AS year
FROM
  video
WHERE
  name LIKE "%MUSIC%"
  AND cast(strftime("%Y", published_datetime) AS integer) < 2016
ORDER BY
  year DESC,
  name ASC;