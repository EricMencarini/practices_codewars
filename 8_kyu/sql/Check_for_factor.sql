--https://www.codewars.com/kata/55cbc3586671f6aa070000fb/train/sql

SELECT 
  id,
  CASE WHEN base%factor = 0 THEN true ELSE false END as res 
FROM
  kata