--https://www.codewars.com/kata/59be9f425227ddd60c00003b/train/sql

SELECT 
    prime
  FROM 
    generate_series(2, 100) AS g(prime)
  
WHERE NOT EXISTS (
    SELECT 1
    FROM 
        generate_series(2, 9) AS d
    WHERE 
        prime % d = 0 AND prime <> d
)
ORDER BY prime


