SELECT
  count() AS no_of_subscribers
FROM
  channel
  INNER JOIN channel_user ON channel.channel_id = channel_user.channel_id
WHERE
  channel_user.channel_id = 376
  AND cast(strftime("%Y", subscribed_datetime) AS integer) = 2018
GROUP BY
  channel_user.channel_id