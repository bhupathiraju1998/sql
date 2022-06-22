SELECT
  NAME,
  COUNT() AS half_centuries
FROM
  PLAYER_MATCH_DETAILS
WHERE
  SCORE >= 50
GROUP BY
  NAME
ORDER BY
  half_centuries DESC;