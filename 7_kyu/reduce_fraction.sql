--https://www.codewars.com/kata/576400f2f716ca816d001614/train/sql

SELECT
  numerator::int,
  denominator::int,
  (numerator::int / gcd(numerator::int, denominator::int))   AS reduced_numerator,
  (denominator::int / gcd(numerator::int, denominator::int)) AS reduced_denominator
FROM 
  fraction
ORDER BY 
  numerator::int ASC, 
  denominator::int ASC;