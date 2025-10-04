--https://www.codewars.com/kata/5ce9c1000bab0b001134f5af/train/sql


SELECT
  month,
  CASE 
    WHEN month <= 3 THEN 1
    WHEN month <= 6 AND  month > 3 THEN 2
    WHEN month <= 9 AND  month > 6 THEN 3
    WHEN month <= 12 AND month > 9 THEN 4
    ELSE 0
  END as res
FROM
  quarterof