-- DELETE REGISTER WITH JOINS
SELECT u.first_name, p.bio FROM users AS u
LEFT JOIN profiles AS p 
ON p.user_id = u.id
WHERE u.first_name = 'Katelyn';


-- DELETE 

DELETE p, u FROM users AS u
LEFT JOIN profiles AS p 
ON p.user_id = u.id
WHERE u.first_name = 'Katelyn';

