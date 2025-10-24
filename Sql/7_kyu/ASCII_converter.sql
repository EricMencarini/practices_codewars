--https://www.codewars.com/kata/594804a218e96caa8d00051b/train/sql
SELECT
  id,
  ASCII(LEFT(name,1)) AS name,
  birthday,
  ASCII(LEFT(race,1)) AS race
FROM
  demographics
