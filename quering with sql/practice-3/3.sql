SELECT
  *
FROM
  product
WHERE
  category LIKE "Clothing"
ORDER BY
  rating DESC,
  price ASC;