SELECT
  UPPER(name) AS name
FROM
  player
WHERE
  played_for_team = "SRH"
EXCEPT
SELECT
  UPPER(name) AS name
FROM
  player
WHERE
  played_for_team <> "SRH"
ORDER BY
  NAME ASC