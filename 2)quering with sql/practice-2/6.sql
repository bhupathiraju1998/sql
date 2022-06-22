SELECT
  *
FROM
  product
WHERE
  (
    brand LIKE "Redmi"
    AND rating > 4
  )
  OR brand LIKE "OnePlus";