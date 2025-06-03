-- WHERE - REGISTER FILTER
-- = < <= > >=   (igual, menor, menor ou igual, maior, maior ou igual)
-- --> diferente  <> != 

/*
SELECT * FROM users
WHERE created_at > '2025-06-03 09:12:18';
*/ 

/* And, search 
SELECT * FROM users
WHERE created_at <= '2025-06-03 09:46:20'
and first_name = 'Marcelo' */

 /* Or and And, search */
SELECT * FROM users
WHERE created_at < '2018-01-1 09:46:20'
OR first_name = 'admin' 
AND password_hash = '12345';