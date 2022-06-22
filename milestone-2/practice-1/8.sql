SELECT
  name,
  gender,
  age,
  country,
  premium_membership
FROM
  user NATURAL
  JOIN user_likes
WHERE
  user.country LIKE "INDIA"
  AND user.age < 30
  AND user_likes.reaction_type = "LIKE"
  AND user_likes.video_id = 1011
  AND cast(strftime("%Y", reacted_at) AS integer) = 2020
ORDER BY
  user.name ASC