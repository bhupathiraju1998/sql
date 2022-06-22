SELECT
  name,
  COUNT() AS no_of_matches
FROM
  player_match_details
WHERE
  score > 50
GROUP BY
  name
HAVING
  no_of_matches >= 2
ORDER BY
  name ASC