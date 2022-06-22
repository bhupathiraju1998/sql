SELECT
  channel_id,
  SUM(CAST(duration_in_secs AS FLOAT) / 3600) AS no_of_hours
FROM
  VIDEO
GROUP BY
  channel_id
ORDER BY
  no_of_hours DESC