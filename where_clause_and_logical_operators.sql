SELECT first_name, email
FROM employees
WHERE gender = 'F'
AND department = 'Tools'
AND salary > 110000;

SELECT first_name, hire_date
FROM employees
WHERE salary > 165000
OR (department = 'Sports' AND gender = 'M')


SELECT first_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1-1-2002' AND '1-1-2004' 

SELECT * 
FROM employees
WHERE salary > 40000 
AND salary < 100000
AND department = 'Automotive'
AND gender = 'M'
OR (department = 'Toys' AND gender = 'F')
