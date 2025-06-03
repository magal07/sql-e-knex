-- BEETWEN = Select range of date or other attributes.

SELECT * FROM users AS u
WHERE u.created_at 
BETWEEN '2020-01-21 00:00:00' AND '2020-02-16 23:59:59' -- BETWEEN DATE
AND id BETWEEN 145 and 198; -- BETWEEN ID