--https://www.codewars.com/kata/5977b6641e250a661a0000f0/train/sql


WITH calc_entry_exit_same_time AS 
(
  SELECT 
    entry_time AS et, 1 AS n_visit
  FROM 
    visits
  UNION ALL
  SELECT exit_time AS et, 
    -1 AS n_visit
  FROM 
    visits
),
cumulated_visits AS 
(
  SELECT
    et,
    SUM(n_visit) OVER (ORDER BY et, n_visit ASC) AS concurrent_visits
  FROM 
    calc_entry_exit_same_time
)
SELECT
  et AS when_happened,
  concurrent_visits AS visits_count
FROM 
  cumulated_visits
ORDER BY 
  concurrent_visits DESC, 
  et ASC
LIMIT 1;
