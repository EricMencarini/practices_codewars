--https://www.codewars.com/kata/6496dbe08673b33ddae5c733/train/sql
WITH range_date AS (
  SELECT 
      (gs)::date AS date,
      TO_CHAR((gs)::date, 'Day') AS day_of_week,
      ROW_NUMBER() OVER (ORDER BY (gs)::date ASC) AS dod
  FROM generate_series(
      DATE '2023-07-01',
      DATE '2023-09-30',
      INTERVAL '1 day'
  ) AS gs
  WHERE EXTRACT(ISODOW FROM (gs)::date) < 6
)
SELECT 
  rd.date,
  rd.day_of_week,
  e.employee_id,
  e.full_name
FROM range_date rd
JOIN (
    SELECT 
        employee_id,
        full_name,
        ROW_NUMBER() OVER (ORDER BY birth_date DESC) AS employee_mirror, 
        COUNT(*) OVER () AS total
    FROM employees
    WHERE team = 'backend'
) e
  ON ((rd.dod - 1) % e.total) + 1 = e.employee_mirror
ORDER BY rd.date;
