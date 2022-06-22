SELECT
  name,
  MAX(score) AS highest_score,
  MIN(score) AS lowest_score
FROM
  player
WHERE
  (CAST(score AS FLOAT) / no_of_balls) * 100 > 50
GROUP BY
  name;