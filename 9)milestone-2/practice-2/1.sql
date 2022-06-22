SELECT
  channel.channel_id AS channel_id,
  channel.name AS channel_name,
  count(channel.channel_id) AS no_of_subscribers
FROM
  channel
  INNER JOIN channel_user ON channel.channel_id = channel_user.channel_id
WHERE
  cast(
    strftime("%Y", channel_user.subscribed_datetime) AS integer
  ) = 2018
GROUP BY
  channel_user.channel_id
ORDER BY
  no_of_subscribers DESC,
  channel_name ASC
LIMIT
  10;