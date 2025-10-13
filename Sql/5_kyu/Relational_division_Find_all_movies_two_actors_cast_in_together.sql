--https://www.codewars.com/kata/5817b124e7f4576fd00020a2/train/sql

--Solution1:
SELECT
  f.title
FROM
  film f
JOIN film_actor fa ON f.film_id = fa.film_id
WHERE
  fa.actor_id IN ('105','122')
GROUP BY
  f.title
HAVING
  COUNT(*) > 1
ORDER BY
  f.title ASC

--Solution2:
SELECT
 title
FROM
  film f
    JOIN  film_actor fa1  ON fa1.film_id = f.film_id AND fa1.actor_id = 105
    JOIN  film_actor fa2  ON fa2.film_id = f.film_id AND fa2.actor_id = 122
ORDER BY
  title
