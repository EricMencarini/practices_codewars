--https://www.codewars.com/kata/6492b17a7c08e4005790053e/train/sql
--Solution 1:
WITH youngest_team_members AS
(
SELECT
  employee_id,
  full_name,
  team,
  birth_date,
  ROW_NUMBER() OVER(PARTITION BY team ORDER BY birth_date DESC) AS rank -- Rank birth date by team.
FROM 
  employees
)

SELECT
  employee_id,
  full_name,
  team,
  birth_date
FROM
  youngest_team_members
WHERE 
  rank = 1
ORDER BY
  team ASC;

--Solution 2:
SELECT DISTINCT ON (team)
  employee_id,
  full_name,
  team,
  birth_date
FROM employees
ORDER BY team, birth_date DESC;


--Solution3:
-- WITH youngest_teams AS
-- (
-- SELECT
--   team,
--   MAX(birth_date) AS birth_date
-- FROM
--   employees
-- GROUP BY
--   team

-- )

-- SELECT
--   *
-- FROM employees e
-- JOIN youngest_teams yt ON e.birth_date = yt.birth_date
-- ORDER BY
--   yt.team ASC