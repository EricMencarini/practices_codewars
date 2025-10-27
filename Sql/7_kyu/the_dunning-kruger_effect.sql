--https://www.codewars.com/kata/649f1fc4771a460058981959/train/sql

--Solution1:
WITH calc_skills_diff AS
(
  SELECT
  id,
  name,
  perceived_skill_level - actual_skill_level AS diff_skill
FROM
  users
WHERE
  perceived_skill_level > actual_skill_level   
)

SELECT
 id,
 name,
 diff_skill AS skill_overestimation,
 CASE
    WHEN diff_skill >  7 THEN 'Extreme case of Dunning-Kruger effect detected!'
    WHEN diff_skill >  5 THEN 'Serious case of overconfidence'
    WHEN diff_skill >  2 THEN 'Moderate case of overconfidence'
  ELSE 'Mild case of overconfidence'
  END AS overconfidence_category
FROM
  calc_skills_diff
ORDER BY
  skill_overestimation DESC,
  id DESC;

--Solution2:
-- SELECT
--   id,
--   name,
--   perceived_skill_level - actual_skill_level AS skill_overestimation,
--   CASE
--     WHEN perceived_skill_level - actual_skill_level >  7 THEN 'Extreme case of Dunning-Kruger effect detected!'
--     WHEN perceived_skill_level - actual_skill_level >  5 THEN 'Serious case of overconfidence'
--     WHEN perceived_skill_level - actual_skill_level >  2 THEN 'Moderate case of overconfidence'
--   ELSE 'Mild case of overconfidence'
--   END AS overconfidence_category
-- FROM
--   users
-- WHERE
--   perceived_skill_level > actual_skill_level 
-- ORDER BY
--   skill_overestimation DESC,
--   id DESC;