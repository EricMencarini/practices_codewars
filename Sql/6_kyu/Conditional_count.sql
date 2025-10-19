--https://www.codewars.com/kata/5816a3ecf54413a113000074/train/sql

--Solution 1
WITH total_count AS 
(
  SELECT
  EXTRACT(MONTH FROM payment_date) AS month,
  COUNT(payment_id) as total_count,
  SUM(amount) as total_amount
FROM
  payment
GROUP BY
  month
), mike_count AS
(
SELECT
  EXTRACT(MONTH FROM payment_date) AS month,
  COUNT(payment_id) as mike_count,
  SUM(amount) as mike_amount
FROM
  payment
WHERE
  staff_id = 1
GROUP BY
  month
), jon_count AS
(
SELECT
  EXTRACT(MONTH FROM payment_date) AS month,
  COUNT(payment_id) as jon_count,
  SUM(amount) as jon_amount
FROM
  payment
WHERE
  staff_id = 2
GROUP BY
  month
)

SELECT 
*
FROM total_count tc 
  FULL JOIN mike_count mc ON tc.month = mc.month
  FULL JOIN jon_count jc ON mc.month = jc.month
ORDER BY
  tc.month

--Solution 2:
-- SELECT
--   EXTRACT(MONTH FROM payment_date) AS month,
--   COUNT(payment_id) AS total_count,
--   SUM(amount) AS total_amount,
--   --
--   COUNT(
--       CASE WHEN staff_id = 1 
--         THEN payment_id END) AS mike_count,
--   SUM(CASE WHEN staff_id = 1 
--         THEN amount END) AS mike_amount,
--   --
--   COUNT(
--     CASE WHEN staff_id = 2 
--       THEN payment_id END) AS jon_count,
--     SUM(CASE 
--         WHEN staff_id = 2 THEN amount END) AS jon_amount
-- FROM
--   payment
-- GROUP BY
--   month
-- ORDER BY
--   month