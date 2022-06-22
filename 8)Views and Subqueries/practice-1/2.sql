CREATE VIEW user_order_details AS
SELECT
  user.id AS user_id,
  name,
  age,
  gender,
  pincode,
  order_details.order_id,
  order_details.total_amount
FROM
  user
  JOIN order_details ON user.id = order_details.customer_id