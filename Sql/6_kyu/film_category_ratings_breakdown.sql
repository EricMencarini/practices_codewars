--https://www.codewars.com/kata/64354b5b870c66000ff7f4c5/train/sql
WITH movies AS (
  SELECT
    c.name AS category_name,
    f.rating AS film_rating,
    COUNT(*) AS count_movies
  FROM 
    film f
  JOIN film_category fc ON f.film_id = fc.film_id
  JOIN category c ON fc.category_id = c.category_id
  GROUP BY 
    c.name, 
    f.rating
)

SELECT
  category_name,
  film_rating,
  ROUND((count_movies::numeric / SUM(count_movies) 
          OVER (PARTITION BY category_name)) * 100, 3)::numeric(6,3) AS percentage
FROM
  movies
ORDER BY
  category_name ASC,
  percentage DESC,
  film_rating ASC;
