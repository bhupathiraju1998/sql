SELECT
  user_id,
  pincode,
  sum(total_amount) AS total_amount_spent
FROM
  location_order_details
GROUP BY
  user_id
HAVING
  total_amount_spent > 50000;