--https://www.codewars.com/kata/554e4a2f232cdd87d9000038/train/sql

SELECT dna, 
  TRANSLATE(dna, 'ATCG', 'TAGC') AS res 
FROM 
  dnastrand