--https://www.codewars.com/kata/649d368a27e215c473e220ba/train/sql
SELECT
  p.id AS product_id,
  p.product_name,
  COUNT(*) AS count_orders
FROM
  orders o
  JOIN products p ON o.product_id = p.id
GROUP BY
  p.id,
  p.product_name
ORDER BY
  count_orders DESC,
  p.id DESC
LIMIT 2;