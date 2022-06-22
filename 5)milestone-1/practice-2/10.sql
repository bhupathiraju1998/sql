SELECT
  CAST(strftime("%H", reacted_at) AS INTEGER) AS hour_of_day,
  CASE
    WHEN reaction_type LIKE "LIKE" THEN COUNT(video_id)
    ELSE COUNT(video_id)
  END AS no_of_reactions
FROM
  USER_LIKES
WHERE
  CAST(strftime("%Y", reacted_at) AS INTEGER) = 2020
GROUP BY
  hour_of_day
ORDER BY
  hour_of_day ASC;