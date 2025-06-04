-- INSERT DATA TABLE users_roles
INSERT IGNORE INTO users_roles (user_id, role_id) 
SELECT id,
(SELECT id FROM roles ORDER BY rand() limit 1) as anything 
FROM users ORDER BY RAND() LIMIT 20;

