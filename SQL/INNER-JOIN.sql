-- SELECT VALUES TWO TABLES

SELECT u.id as uid, p.id as pid,
p.bio, u.first_name
FROM users as u, profiles as p
WHERE u.id = p.user_id;

-- INNER JOIN - Same thing example above

SELECT u.id as uid, p.id as pid,
p.bio, u.first_name
FROM users as u
INNER JOIN profiles as p 
ON u.id = p.user_id -- ON = Condition
WHERE u.first_name LIKE '%a%'
ORDER BY u.first_name DESC
LIMIT 5;
