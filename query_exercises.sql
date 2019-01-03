SELECT LENGTH(first_name), LOWER(last_name)
FROM employees;


SELECT LENGTH(TRIM('HELLO WORLD'))

SELECT first_name ||' '|| last_name Full_name, department
FROM employees

SELECT first_name ||' '|| last_name Full_name, 
		(salary > 140000) True_or_false
FROM employees
ORDER BY salary DESC
				   
SELECT department, ('Clothing' IN (department, first_name))
FROM employees
								   
SELECT department, (department LIKE '%oth%')
FROM employees


SELECT * FROM employees
WHERE department NOT IN (SELECT department FROM departments)

SELECT *
FROM (SELECT * FROM employees WHERE salary > 150000) AS a

SELECT a.first_name, a.salary
FROM (SELECT * FROM employees WHERE salary > 150000) AS a


SELECT a.employee_name, a.yearly_salary
FROM (SELECT first_name AS employee_name, salary AS yearly_salary 
	  FROM employees WHERE salary > 150000) a
	  
