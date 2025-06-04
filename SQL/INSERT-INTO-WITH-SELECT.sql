-- INSERT SELECT: Insert values into on table using another 

INSERT INTO profiles
(bio, description, user_id)
SELECT CONCAT('BIO FROM: ', first_name), CONCAT('DESCRIPTION FROM: ', first_name), id 
FROM users;
