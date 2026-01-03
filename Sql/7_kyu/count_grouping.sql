--https://www.codewars.com/kata/594633020a561e329a0000a2/train/sql

SELECT
  race,
  COUNT(*)
FROM
  demographics
GROUP BY
  race
ORDER BY
  COUNT(*) DESC;
  
