SELECT
  *
FROM
  product
WHERE
  (
    brand LIKE "Puma"
    AND rating > 3.5
  )
  OR (
    brand LIKE "Denim"
    AND rating > 4.0
  );