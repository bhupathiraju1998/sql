SELECT
  name
FROM
  player
WHERE
  played_for_team = "CSK"
UNION
SELECT
  name
FROM
  player
WHERE
  played_for_team = "SRH"
UNION
SELECT
  name
FROM
  player
WHERE
  played_for_team = "MI"
ORDER BY
  name ASC;