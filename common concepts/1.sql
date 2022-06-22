SELECT
  name,
  SUM(fours + sixes) AS number_of_boundaries
FROM
  player
GROUP BY
  name
ORDER BY
  number_of_boundaries DESC,
  name DESC;