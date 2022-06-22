SELECT
  NAME,
  SUM(SCORE) AS total_score
FROM
  PLAYER_MATCH_DETAILS
GROUP BY
  NAME
ORDER BY
  total_score DESC