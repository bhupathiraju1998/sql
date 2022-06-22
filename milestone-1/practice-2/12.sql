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
    OR NAME LIKE "Cyber Security"
    OR NAME LIKE "Data Science"
  )
GROUP BY
  channel_id
HAVING
  COUNT(channel_id) >= 2
ORDER BY
  channel_id ASC