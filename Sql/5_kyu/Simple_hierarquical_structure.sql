--https://www.codewars.com/kata/5812a2a2492760dfca000450/train/sql

WITH RECURSIVE employee_levels AS 
(
SELECT 
  id, 
  first_name,
  last_name,
  manager_id,
  1 AS level
FROM
  employees e
WHERE
  e.manager_id IS NULL
  
  UNION ALL

SELECT
  e.id, 
  e.first_name,
  e.last_name,
  e.manager_id,
  el.level + 1 AS level
FROM
  employees e, 
  employee_levels el
WHERE
  e.manager_id = el.id
)

SELECT 
  * 
FROM 
  employee_levels el
ORDER BY
  el.level ASC