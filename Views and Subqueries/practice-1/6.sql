SELECT
  name,
  rating
FROM
  product
WHERE
  category = "WATCH"
  AND rating > (
    SELECT
      avg(rating)
    FROM
      product
  )