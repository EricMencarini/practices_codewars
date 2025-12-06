--https://www.codewars.com/kata/594a389387a7c6a77a000005/train/sql
SELECT
  LENGTH(name::TEXT) AS id,
  LENGTH(legs::TEXT) AS name,
  LENGTH(arms::TEXT) AS legs,
  LENGTH(characteristics::TEXT) AS arms,
  LENGTH(id::TEXT) AS characteristics
FROM
  monsters;