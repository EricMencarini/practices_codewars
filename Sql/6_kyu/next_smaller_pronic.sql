--https://www.codewars.com/kata/5a90f6d457c5624ecc000012/train/sql

SELECT 
  n, 
  CAST(SQRT(n) AS BIGINT) * (CAST(SQRT(n) AS BIGINT) - 1) AS res
FROM 
  pronic