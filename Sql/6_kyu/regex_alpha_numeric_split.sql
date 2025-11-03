--https://www.codewars.com/kata/594257d4db68b6e99200002c/train/sql
SELECT 
  project,
  REGEXP_REPLACE(address, '[^A-Za-z]', '', 'g') AS letters,
  REGEXP_REPLACE(address, '[^0-9]', '', 'g') AS numbers
FROM
  repositories;

