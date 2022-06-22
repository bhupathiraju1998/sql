SELECT
  *
FROM
  product
WHERE
  rating > 3.6
  AND price < 1000
  AND brand LIKE "Puma";