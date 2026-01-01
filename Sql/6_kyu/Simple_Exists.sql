--https://www.codewars.com/kata/58113a64e10b53ec36000293/train/sql
SELECT
  departments.id,
  departments.name
FROM
  departments
WHERE
  EXISTS (SELECT * FROM sales
            WHERE sales.department_id = departments.id
              AND sales.price > 98
  );
