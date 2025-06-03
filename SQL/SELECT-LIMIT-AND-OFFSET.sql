-- LIMIT: Limit the amount of values.

SELECT id, first_name, email as uEmail
FROM users 
WHERE id BETWEEN 100 AND 150
ORDER BY id asc
/* LIMITED THE 50 CELLS
LIMIT 50; 											inversion    offset,limit								*/
LIMIT 5 OFFSET 4; -- skip according to numbers reported - alternative 5,4 