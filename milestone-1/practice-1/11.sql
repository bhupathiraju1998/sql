SELECT
  COUNT(premium_membership) AS premium_users_count
FROM
  USER
WHERE
  premium_membership <> 0