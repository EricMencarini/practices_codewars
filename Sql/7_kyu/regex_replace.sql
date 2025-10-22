--https://www.codewars.com/kata/5942b066db68b6f35f000084/solutions/sql
SELECT
  project,
  commits,
  contributors,
  REGEXP_REPLACE(address, '[0-9]', '!', 'g') AS address
FROM
  repositories