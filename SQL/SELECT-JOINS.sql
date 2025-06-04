-- SELECT WITH SEVERAL JOINS

SELECT u.id as uid, 
u.first_name, p.bio, r.name AS role_name
FROM users as u
LEFT JOIN profiles as p 
ON u.id = p.user_id
INNER JOIN users_roles ur ON u.id = ur.user_id
INNER JOIN roles as r ON ur.role_id = r.id
WHERE u.id = 103
ORDER BY uid ASC
LIMIT 0, 2;