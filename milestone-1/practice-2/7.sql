SELECT
  name,
  no_of_views,
  CASE
    WHEN no_of_views <= 10000 THEN "poor"
    WHEN no_of_views BETWEEN 10000
    AND 100000 THEN "average"
    ELSE "good"
  END AS category
FROM
  VIDEO
WHERE
  channel_id = 350
ORDER BY
  published_datetime ASC;