-- LIKE 
-- %  = anything
-- _ = one character

SELECT * FROM users
-- WHERE first_name like '%a%b%' anything starting and finish b  
-- WHERE first_name like '__c_b'; -- searching for the word Jacob with __
WHERE first_name like '%ja%'; -- seraching all 'ja' inside the table. 