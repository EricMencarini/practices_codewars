--https://www.codewars.com/kata/576400f2f716ca816d001614/train/sql


SELECT
  numerator::INT,
  denominator::INT,
  (numerator::INT / gcd(numerator::INT, denominator::INT))   AS reduced_numerator,
  (denominator::INT / gcd(numerator::INT, denominator::INT)) AS reduced_denominator
FROM 
  fraction
ORDER BY 
  numerator::INT ASC, 
  denominator::INT ASC;