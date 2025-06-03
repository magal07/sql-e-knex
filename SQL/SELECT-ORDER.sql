-- Order by : Organize cells ascending or descending

SELECT id, first_name, email as uEmail
FROM users 
WHERE id BETWEEN 100 AND 150
--     ASCENDING        DESCENDING
ORDER BY id asc, first_name desc;