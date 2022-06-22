SELECT
  *
FROM
  product
WHERE
  brand IN ("Puma", "Denim")
  AND rating > 4
ORDER BY
  price ASC;