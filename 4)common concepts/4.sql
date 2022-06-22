SELECT
  name,
  SUM(score) AS total_score,
  CASE
    WHEN SUM(score) >= 150 THEN "GOOD"
    WHEN SUM(score) >= 100
    AND SUM(score) < 150 THEN "AVERAGE"
    ELSE "BELOW AVERAGE"
  END AS badge
FROM
  player
WHERE
  CAST(strftime("%Y", match_date) AS INTEGER) = 2006
GROUP BY
  name
ORDER BY
  total_score DESC