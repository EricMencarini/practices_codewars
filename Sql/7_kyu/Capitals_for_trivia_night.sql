--https://www.codewars.com/kata/5e5f09dc0a17be0023920f6f/solutions/sql

SELECT
  capital
FROM
  countries
WHERE 1=1
  AND (continent LIKE '%Africa%' OR continent LIKE '%Afrika%')
  AND country LIKE 'E%'
ORDER BY
  capital
LIMIT 3