--https://www.codewars.com/kata/5811501c2d35672d4f000146/solutions/sql

WITH special_sales AS
(
  SELECT 
    *
  FROM
    sales 
  WHERE
    price > 90
)

SELECT
  d.id,
  d.name
FROM
  departments d
WHERE
  d.id IN (SELECT d.id FROM special_sales)