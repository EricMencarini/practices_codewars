--https://www.codewars.com/kata/66320689a8fa003242daf696/train/sql
WITH project_totals AS (
  SELECT
    p.project_id,
    p.project_name,
    p.completion_status,
    SUM(bc.component_value) AS total_budget
  FROM 
    projects p
  JOIN budget_components bc ON p.project_id = bc.project_id
  GROUP BY 
    p.project_id, p.project_name, p.completion_status
)
SELECT
  project_id,
  project_name,
  completion_status,
  total_budget::money
FROM project_totals
WHERE 1=1
  AND total_budget > (SELECT AVG(total_budget) FROM project_totals)
  AND completion_status <> 'Completed'
ORDER BY 
  project_name;