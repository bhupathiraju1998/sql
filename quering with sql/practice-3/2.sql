SELECT
  *
FROM
  product
WHERE
  price BETWEEN 750
  AND 1000
ORDER BY
  price ASC,
  name ASC;