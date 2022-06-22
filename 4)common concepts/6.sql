SELECT
  name
FROM
  player
WHERE
  played_for_team LIKE "CSK"
INTERSECT
SELECT
  name
FROM
  player
WHERE
  played_for_team LIKE "RCB"
ORDER BY
  name ASC;