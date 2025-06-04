-- GROUP BY

SELECT first_name, COUNT(id) as total FROM users 
GROUP BY first_name 
ORDER BY total DESC;


SELECT * FROM users 
WHERE first_name = 'LUX';

SELECT u.first_name, COUNT(u.id) as total FROM users AS u
LEFT JOIN profiles as p 
ON p.user_id = u.id
WHERE u.id IN (117, 118, 119, 120)
GROUP BY first_name
ORDER BY total DESC
LIMIT 10;