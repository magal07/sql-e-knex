-- LEFT JOIN - Same thing example above

SELECT u.id as uid, p.id as pid,
p.bio, u.first_name
FROM users as u
LEFT JOIN profiles 2 p 
ON u.id = p.user_id; 

