--https://www.codewars.com/kata/644424f8d7bab510f1375d20/train/sql
--Solution1 with subqueries.
SELECT
 film_id,
 title,
 length
FROM
  film
WHERE
  length NOT BETWEEN 
    (SELECT MIN(length) FROM film WHERE rating = 'R') 
  AND 
    (SELECT PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY length) FROM film WHERE rating ='PG-13')
ORDER BY 
  length, 
  title, 
  film_id;
  
--Solution2 with CTE's.

-- WITH min_r AS
-- (
--   SELECT MIN(length) AS min_length
--   FROM film
--   WHERE rating = 'R'
-- ),
-- avg_pg_13 AS 
-- (
--   SELECT PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY length) AS avg_length
--   FROM film
--   WHERE rating = 'PG-13'
-- ),
-- filtered_films AS
-- (
--   SELECT
--     f.film_id,
--     f.title,
--     f.length
--   FROM film f
--     JOIN min_r ON TRUE
--     JOIN avg_pg_13 ON TRUE
--   WHERE
--     f.length NOT BETWEEN min_r.min_length AND avg_pg_13.avg_length
-- )

-- SELECT
--   film_id,
--   title,
--   length
-- FROM 
--   filtered_films
-- ORDER BY 
--   length, 
--   title, 
--   film_id;
