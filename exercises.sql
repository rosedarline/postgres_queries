SELECT * 
FROM employees E CROSS JOIN departments 

SELECT * FROM employees
SELECT * FROM regions

(SELECT first_name, department, hire_date, country
FROM employees
INNER JOIN regions
ON employees.region_id = regions.region_id
WHERE hire_date = (SELECT MIN(hire_date) FROM employees e2)
LIMIT 1)
UNION ALL
SELECT first_name, department, hire_date, country
FROM employees
INNER JOIN regions
on employees.region_id = regions.region_id
WHERE hire_date = (SELECT MAx(hire_date) FROM employees e2)
ORDER BY hire_date

SELECT last_name, first_name, hire_date, salary,
(SELECT SUM(salary) FROM employees e2
 WHERE  e2.hire_date BETWEEN e.hire_date - 90 AND e.hire_date) AS spending_pattern
FROM employees e
ORDER BY hire_date;