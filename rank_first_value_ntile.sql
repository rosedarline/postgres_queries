SELECT first_name, email, department, salary,
		RANK() OVER(PARTITION BY department ORDER BY salary DESC)
FROM employees;

SELECT * FROM(
SELECT first_name, email, department, salary,
		RANK() OVER(PARTITION BY department ORDER BY salary DESC)
FROM employees
) a
WHERE RANK = 8;

SELECT first_name, email, department, salary,
		NTILE(5) OVER(PARTITION BY department ORDER BY salary DESC) AS salary_bracket
FROM employees;

SELECT first_name, email, department, salary,
		FIRST_VALUE(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS first_value
FROM employees;

SELECT first_name, email, department, salary,
		FIRST_VALUE(salary) OVER(PARTITION BY department ORDER BY first_name ASC) AS first_value
FROM employees;

SELECT first_name, email, department, salary,
		NTH_VALUE(salary, 5) OVER(PARTITION BY department ORDER BY first_name ASC) AS nth_value
FROM employees;
