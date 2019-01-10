SELECT * FROM employees
SELECT * FROM departments
SELECT * FROM regions

SELECT first_name, country
FROM employees, regions
WHERE employees.region_id = regions.region_id


SELECT first_name, email, division, country
FROM employees, departments, regions
WHERE employees.department = departments.department
AND employees.region_id = regions.region_id
AND email IS NOT NULL;

SELECT first_name, email, employees.department,division, country
FROM employees, departments, regions
WHERE employees.department = departments.department
AND employees.region_id = regions.region_id
AND email IS NOT NULL;

SELECT first_name, email, e.department,division, country
FROM employees e, departments d, regions r
WHERE e.department = d.department
AND e.region_id = r.region_id
AND email IS NOT NULL;

SELECT country, COUNT(employee_id)
FROM employees e, regions r
WHERE e.region_id = r.region_id
GROUP BY country


SELECT country, COUNT(employee_id)
FROM employees e, (SELECT * FROM regions) r
WHERE e.region_id = r.region_id
GROUP BY country

