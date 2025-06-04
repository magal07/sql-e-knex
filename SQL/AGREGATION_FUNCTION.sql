SELECT 
max(salary) AS max_salary,
min(salary) AS min_salary,
avg(salary) as avg_salary,
sum(salary) as sum_salary,
count(salary) as count_salary
FROM users
WHERE first_name = 'Lux';


SELECT
u.first_name,
max(u.salary) AS max_salary,
min(u.salary) AS min_salary,
avg(u.salary) as avg_salary,
sum(u.salary) as sum_salary,
COUNT(u.id) as total
FROM users AS u
LEFT JOIN profiles as p 
ON p.user_id = u.id
GROUP BY first_name
ORDER BY total DESC;