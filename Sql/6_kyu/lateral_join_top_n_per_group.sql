--https://www.codewars.com/kata/5820176255c3d23f360000a9/solutions/sql
SELECT
  c.id AS category_id,
  c.category,
  p.title,
  p.views,
  p.id AS post_id
FROM 
  categories AS c
    LEFT JOIN LATERAL (
  SELECT
    p2.id,
    p2.title,
    p2.views
  FROM 
      posts AS p2
  WHERE 
      p2.category_id = c.id
  ORDER BY 
      p2.views DESC, 
      p2.id ASC
  LIMIT 2
) AS p ON TRUE
ORDER BY
  c.category ASC,
  p.views DESC,
  p.id ASC;
