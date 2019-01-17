SELECT first_name, hire_date, salary,
       SUM(salary) 
	   OVER(ORDER BY hire_date RANGE BETWEEN UNBOUNDED PRECEDING AND
	   CURRENT ROW) AS runnig_total_salaries
FROM employees;

SELECT first_name, hire_date, department, salary,
       SUM(salary) 
	   OVER(PARTITION BY department ORDER BY hire_date RANGE BETWEEN UNBOUNDED PRECEDING AND
	   CURRENT ROW) AS runnig_total_salaries
FROM employees;

SELECT first_name, hire_date, department, salary,
       SUM(salary) 
	   OVER(ORDER BY hire_date ROWS BETWEEN 1 PRECEDING AND CURRENT ROW)
FROM employees;