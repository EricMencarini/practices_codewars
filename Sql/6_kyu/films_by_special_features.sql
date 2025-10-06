--https://www.codewars.com/kata/6458b73ce9a6e0005832997f/train/sql

WITH calc_popular_features AS --Calc the most popular feature along the table
(
SELECT
  un_special_features AS special_features,
  COUNT(*) AS total_features
FROM 
    film,
    UNNEST(special_features) AS un_special_features
GROUP BY 
  un_special_features
  
), most_popular_feature AS --Return the most popular one
(
 SELECT 
    special_features
 FROM 
    calc_popular_features
 WHERE 
    total_features = (SELECT MAX(total_features) FROM calc_popular_features)
)

SELECT 
  film_id, title, special_features
FROM
  film
WHERE
  (SELECT special_features FROM most_popular_feature) = ANY(special_features)
ORDER BY
  title ASC, film_id ASC