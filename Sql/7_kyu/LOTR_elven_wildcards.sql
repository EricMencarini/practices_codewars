--https://www.codewars.com/kata/5ad90fb688a0b74111000055/train/sql

SELECT
  CONCAT(INITCAP(firstname),' ',INITCAP(lastname)) AS shortlist
FROM
  elves
WHERE 
  firstname like '%tegil%'
  OR lastname like '%astar%';