-- INSERT DATA TABLE: users_roles

INSERT INTO users_roles (user_id, role_id)
VALUES
(103, 11);

SELECT user_id, role_id 
FROM users_roles 
WHERE user_id = 103;


SELECT id,
(SELECT id FROM roles ORDER BY rand() limit 1) as anything 
FROM users;

INSERT INTO users_roles (user_id, role_id) 
SELECT id,
(SELECT id FROM roles ORDER BY rand() limit 1) as anything 
FROM users;

