--https://www.codewars.com/kata/5809575e166583acfa000083/train/sql
WITH clan_info AS
(
SELECT
  COALESCE(NULLIF(TRIM(clan), ''), '[no clan specified]') AS clan,
  COUNT(people) AS total_people,
  SUM(points) AS total_points
FROM
  people
GROUP BY
  clan
ORDER BY
  total_points DESC
)

SELECT
  ROW_NUMBER() OVER(ORDER BY total_points DESC) AS rank,
  *
FROM
  clan_info
