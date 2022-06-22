SELECT
  channel_id
FROM
  VIDEO
WHERE
  CAST(strftime("%Y", published_datetime) AS INTEGER) BETWEEN 2018
  AND 2021
  AND(
    NAME LIKE "%Robotics%"
    OR NAME LIKE "%AI/ML%"
  )
GROUP BY
  channel_id
ORDER BY
  channel_id ASC