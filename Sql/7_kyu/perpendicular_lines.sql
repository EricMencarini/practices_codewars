--https://www.codewars.com/kata/6391fe3f322221003db3bad6/train/sql
SELECT 
  n,
  (FLOOR(n / 2.0) * CEILING(n / 2.0))::INT AS res
FROM 
  perpendicular;