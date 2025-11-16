--https://www.codewars.com/kata/64c35f480c0548002150efd4/train/sql
SELECT DISTINCT
  city_name
FROM 
  stations
WHERE
  city_name LIKE ANY (ARRAY['A%','E%','I%','O%','U%'])
ORDER BY city_name ASC;