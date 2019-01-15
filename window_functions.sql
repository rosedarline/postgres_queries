SELECT first_name, department,
      (SELECT COUNT(*) FROM employees e1
	   WHERE e1.department = e2.department)
FROM employees e2
GROUP BY department, first_name;

SELECT first_name, department,
COUNT(*) OVER(PARTITION BY department)
FROM employees;

SELECT first_name, department,
SUM(salary) OVER(PARtiTION BY department)
FROM employees;

SELECT first_name, department, region_id,
COUNT(*) OVER(PARTITION BY department) dept_count,
COUNT(*) OVER(PARTITION BY region_id) region_count
FROM employees;

SELECT first_name, department, COUNT(*) OVER(PARTITION BY department) dept_count
FROM employees
WHERE region_id = 3;
