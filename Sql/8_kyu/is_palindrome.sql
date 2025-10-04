--https://www.codewars.com/kata/576400f2f716ca816d001614/train/sql

SELECT
  str,
  LOWER(str) = LOWER(REVERSE(str)) AS res
FROM
  ispalindrome

 
  
-- # write your SQL statement here: you are given a table 'ispalindrome' with column 'str', return a table with column 'str' and your result in a column named 'res'.
SELECT
  str,
  CASE 
    WHEN LOWER(str) = LOWER(REVERSE(str)) 
      THEN TRUE ELSE FALSE 
  END AS res
FROM
  ispalindrome