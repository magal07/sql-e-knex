-- RIGHT JOIN 

SELECT u.id as uid, p.id as pid,
p.bio, u.first_name
FROM users as u
RIGHT JOIN profiles as p 
ON u.id = p.user_id; 

-- Verify foreign key
