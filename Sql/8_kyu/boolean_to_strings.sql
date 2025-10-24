--https://www.codewars.com/kata/53369039d7ab3ac506000467/solutions/sql
SELECT
 bool,
 CASE
  WHEN bool 
    THEN 'Yes'
      ELSE 'No'
 END AS res
FROM
  booltoword