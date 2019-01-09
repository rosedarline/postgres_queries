SELECT * FROM employees;

SELECT first_name, country
FROM employees
INNER JOIN regions 
ON employees.region_id = regions.region_id;

SELECT first_name, email, division
FROM employees 
INNER JOIN departments
ON employees.department = departments.department
WHERE email IS NOT NULL;

SELECT first_name, email, division, country
FROM employees 
INNER JOIN departments
ON employees.department = departments.department
INNER JOIN regions
ON employees.region_id = regions.region_id
WHERE email IS NOT NULL;

SELECT DISTINCT employees.department, departments.department
FROM employees
LEFT JOIN departments
ON employees.department = departments.department

SELECT DISTINCT employees.department, departments.department
FROM employees
RIGHT JOIN departments
ON employees.department = departments.department

SELECT DISTINCT employees.department
FROM employees
LEFT JOIN departments
ON employees.department = departments.department
WHERE departments.department IS NULL

