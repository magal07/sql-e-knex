
-- 1º Exercício 

INSERT INTO users 
(id, first_name, last_name, email, password_hash, salary) 
VALUES ("2",
	"EX1",
    "Mayo",
    "EX1.diam@consectetueripsum.ca",
    "EX1",
    "1000.00"
  ),
(
	"3",
    "EX2",
    "Stewart",
    "EX2.sit@nunc.edu",
    "EX2",
    "2000.00"
  ),
(
	"4",
    "EX3",
    "Hall",
    "EX3.Morbi@porttitorscelerisqueneque.edu",
    "EX3",
    "3000.00"
  ),
(
	"5",
    "EX4",
    "Manning",
    "EX4.at@sociis.edu",
    "EX4",
    "4000.00"
  ),
  (
     "6",
    "EX5",
    "Manning",
    "EX5.at@sociis.edu",
    "EX5",
    "5000.00");

-- 2º Exercício 
INSERT INTO profiles (bio, description, user_id) VALUES
('Uma bio', 'Uma description', (SELECT id FROM users WHERE email = 'email1@a.com')),
('Uma bio', 'Uma description', (SELECT id FROM users WHERE email = 'email2@a.com')),
('Uma bio', 'Uma description', (SELECT id FROM users WHERE email = 'email3@a.com')),
('Uma bio', 'Uma description', (SELECT id FROM users WHERE email = 'email4@a.com')),
('Uma bio', 'Uma description', (SELECT id FROM users WHERE email = 'email5@a.com'));


INSERT INTO users_roles (user_id, role_id ) VALUES
(2, 11),
(3, 12),
(4, 13),
(5, 14),
(6, 11);

3º

INSERT INTO users_roles (user_id, role_id ) VALUES
(
	(SELECT id FROM users WHERE email = 'email1@a.com'),
	(SELECT id FROM roles WHERE name = 'PUT')
),
(
	(SELECT id FROM users WHERE email = 'email2@a.com'),
	(SELECT id FROM roles WHERE name = 'PUT')
),
(
	(SELECT id FROM users WHERE email = 'email3@a.com'),
	(SELECT id FROM roles WHERE name = 'PUT')
),
(
	(SELECT id FROM users WHERE email = 'email4@a.com'),
	(SELECT id FROM roles WHERE name = 'PUT')
),
(
	(SELECT id FROM users WHERE email = 'email5@a.com'),
	(SELECT id FROM roles WHERE name = 'POST')
),
(
	(SELECT id FROM users WHERE email = 'email5@a.com'),
	(SELECT id FROM roles WHERE name = 'GET')
);

-- 4º Exercício 
SELECT * FROM users
ORDER BY id DESC 
LIMIT 5;

-- 5º Exercício 

UPDATE users 
SET first_name = 'EXERCÍCIO 5'
WHERE id = 6;

-- 6º Exercício
-- Example basic
DELETE FROM users_roles
WHERE user_id = 6;

-- Example especify 
DELETE
FROM users_roles 
WHERE user_id = (SELECT id FROM users WHERE email = 'email4@a.com') 
AND role_id = (SELECT id FROM roles WHERE name = 'PUT');

-- 7º Exercício

-- SELECT u.id AS uid, first_name, r.name
DELETE u
FROM users u
INNER JOIN users_roles ur 
ON u.id = ur.user_id
INNER JOIN roles r
ON ur.role_id = r.id
WHERE name = 'PUT' AND u.id = 4;

-- 8º Exercício 

SELECT u.id AS uid, first_name, r.name, p.bio
FROM users u
INNER JOIN users_roles ur 
ON u.id = ur.user_id
INNER JOIN roles r
INNER JOIN profiles p
ON p.user_id = u.id;

-- 9º Exercício 

SELECT u.id AS uid, first_name, r.name, p.bio
FROM users u
LEFT JOIN users_roles ur 
ON u.id = ur.user_id
INNER JOIN roles r
INNER JOIN profiles p
ON p.user_id = u.id;

-- 10º Exercício

SELECT u.id AS uid, first_name, r.name, p.bio, u.salary 
FROM users u
LEFT JOIN users_roles ur 
ON u.id = ur.user_id
INNER JOIN roles r
INNER JOIN profiles p
ON p.user_id = u.id
ORDER BY salary DESC;















