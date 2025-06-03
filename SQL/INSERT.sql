SELECT first_name, id  FROM users u;

-- select email as Email_Usuario, first_name as Nome, id as Identificador  from users as u;

select u.email Email, 
u.first_name Nome,
 u.id Identificador 
 from users u;