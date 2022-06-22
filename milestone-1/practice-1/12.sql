SELECT
  gender,
  COUNT(premium_membership) AS total_users
FROM
  USER
WHERE
  premium_membership <> 0
GROUP BY
  GENDER