SELECT
  order_id
FROM
  order_details
WHERE
  order_id IN (
    SELECT
      order_id
    FROM
      order_product
    WHERE
      product_id IN(291, 292, 293, 294, 296)
  )
  AND NOT order_id IN (
    SELECT
      order_id
    FROM
      order_product
    WHERE
      product_id IN(301, 302, 303, 304)
  )