SELECT
  customer_id,
  avg(total_amount) AS avg_amount_spent
FROM
  order_details
GROUP BY
  customer_id
HAVING
  avg(total_amount) > (
    SELECT
      avg(total_amount)
    FROM
      order_details
  );