--https://www.codewars.com/kata/5861d28f124b35723e00005e/solutions/sql
SELECT
  distance_to_pump,
  mpg,
  fuel_left,
  distance_to_pump <= (mpg * fuel_left) AS res
FROM
  zerofuel;