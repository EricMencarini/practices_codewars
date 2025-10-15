--https://www.codewars.com/kata/589e0837e10c4a1018000028/train/sql

WITH MoM_posts AS
(
SELECT
  DATE_TRUNC('month', created_at)::date AS year_month,
  COUNT(*) AS actual_month_posts,
  LAG(COUNT(*),1) OVER(ORDER BY DATE_TRUNC('month', created_at)) AS last_month_posts
FROM
  posts
GROUP BY
  DATE_TRUNC('month', created_at)
)

SELECT
   year_month::date   AS date,
   actual_month_posts AS count,
   ROUND((
    (actual_month_posts - last_month_posts)::decimal /  NULLIF(last_month_posts,0)) * 100,
     1) || '%'  AS percent_growth
FROM
  MoM_posts
ORDER BY
  date ASC