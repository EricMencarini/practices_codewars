--https://www.codewars.com/kata/64d9f2cd057026003eb4904f/train/sql
SELECT
    c.customer_id,
    c.name,
    'Product 1: ' || COUNT(CASE WHEN o.product_name = 'Product 1' THEN 1 END) || ' times || ' ||
    'Product 2: ' || COUNT(CASE WHEN o.product_name = 'Product 2' THEN 1 END) || ' times'
        AS product_summary
FROM customers c
INNER JOIN orders o 
    ON o.customer_id = c.customer_id
GROUP BY 
    c.customer_id, 
    c.name
HAVING 
    COUNT(CASE WHEN o.product_name = 'Product 1' THEN 1 END) > 0
    AND COUNT(CASE WHEN o.product_name = 'Product 2' THEN 1 END) > 0
    AND COUNT(CASE WHEN o.product_name = 'Product 3' THEN 1 END) = 0
ORDER BY 
    c.customer_id DESC;
