SELECT
  name,
  MAX(score) AS highest_score
FROM
  player
WHERE
  CAST (strftime("%Y", match_date) AS INTEGER) = 2006
GROUP BY
  name
ORDER BY
  highest_score DESC