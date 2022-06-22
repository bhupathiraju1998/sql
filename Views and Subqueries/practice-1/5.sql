SELECT
  name,
  (
    SELECT
      avg(rating)
    FROM
      product
    WHERE
      category = "MOBILE"
  ) - rating AS rating_variance
FROM
  product
WHERE
  category = "MOBILE";