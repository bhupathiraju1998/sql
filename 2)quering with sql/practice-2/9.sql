SELECT
  *
FROM
  product
WHERE
  (
    brand LIKE "Puma"
    OR brand LIKE "Nike"
    OR brand LIKE "Levi's"
  )
  AND (
    name LIKE "%Shirt%"
    AND NOT name LIKE "%Black%"
  );