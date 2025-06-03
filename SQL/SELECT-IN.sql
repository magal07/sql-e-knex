-- SELECT IN: Select elements entry sent values.

SELECT * FROM users
WHERE id in (113, 114, 115, 116, 117) 
AND first_name in ('Aspen', 'Lynn');