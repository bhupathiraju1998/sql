SELECT
  CAST(strftime("%m", subscribed_datetime) AS INTEGER) AS month_of_year,
  COUNT(user_id) AS no_of_subscribers
FROM
  CHANNEL_USER
WHERE
  channel_id = 351
  AND CAST(strftime("%Y", subscribed_datetime) AS INTEGER) = 2020
GROUP BY
  month_of_year
ORDER BY
  month_of_year ASC;