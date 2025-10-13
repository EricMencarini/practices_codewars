--https://www.codewars.com/kata/64aebf66362be64fd1eb9da5/train/sql

WITH calc_transactions AS 
(
  SELECT
    store_id,
    product_id,
    transaction_date,
    quantity,
    ROW_NUMBER() OVER ( PARTITION BY store_id, product_id ORDER BY quantity DESC, transaction_date ASC) AS rank_trans
  FROM sales
)

, max_day AS 
(
  SELECT
    store_id,
    product_id,
    transaction_date,
    quantity AS max_quantity
  FROM 
    calc_transactions
  WHERE 
    rank_trans = 1
)

SELECT
  m.store_id,
  m.product_id,
  m.transaction_date,
  m.max_quantity,
  SUM(s.quantity) AS total_quantity_on_max_day
FROM sales s
JOIN max_day m
  ON s.store_id = m.store_id
    AND s.product_id = m.product_id
    AND s.transaction_date = m.transaction_date
GROUP BY
  m.store_id, m.product_id, m.transaction_date, m.max_quantity
ORDER BY
  m.store_id ASC, m.product_id ASC

