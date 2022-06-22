SELECT
  video_id,
  name,
  (CAST(no_of_views AS FLOAT) / 1000) AS no_of_views_in_thousands
FROM
  video
ORDER BY
  no_of_views_in_thousands DESC,
  name ASC;