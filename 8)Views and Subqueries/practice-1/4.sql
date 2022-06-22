SELECT
  name,
  (
    SELECT
      avg(rating)
    FROM
      product
  ) - rating AS rating_variance
FROM
  product