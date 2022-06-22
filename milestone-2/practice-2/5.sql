SELECT
  cast(
    strftime("%m", channel_user.subscribed_datetime) AS integer
  ) AS month_in_2018,
  count(strftime("%m", channel_user.subscribed_datetime)) AS subscribers_per_month
FROM
  channel
  INNER JOIN channel_user ON channel.channel_id = channel_user.channel_id
WHERE
  name = "Taylor Swift"
  AND cast(
    strftime("%Y", channel_user.subscribed_datetime) AS integer
  ) = 2018
GROUP BY
  strftime("%m", channel_user.subscribed_datetime)