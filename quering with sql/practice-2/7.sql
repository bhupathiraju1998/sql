SELECT
  *
FROM
  product
WHERE
  (
    name LIKE "%Cake%"
    AND (
      brand LIKE "Britannia"
      OR brand LIKE "Cadbury"
    )
  )
  AND rating > 4.0;