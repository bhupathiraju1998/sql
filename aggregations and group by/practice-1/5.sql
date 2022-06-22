SELECT
  NAME,
  COUNT(YEAR) AS no_of_matches
FROM
  PLAYER_MATCH_DETAILS
WHERE
  YEAR = 2012
GROUP BY
  NAME
ORDER BY
  no_of_matches DESC;