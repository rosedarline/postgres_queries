SELECT first_name, salary
FROM employees e1
WHERE salary > (SELECT ROUND(AVG(salary)) 
				FROM employees e2 WHERE e1.department = e2.department);
							 
SELECT first_name, salary
FROM employees e1
WHERE salary > (SELECT ROUND(AVG(salary)) 
				FROM employees e2 WHERE e1.region_id = e2.region_id);							 
							 
SELECT first_name, department, salary,
(SELECT ROUND(AVG(salary)) 
				FROM employees e2 WHERE e1.department = e2.department) AS avg_department_salary							 							 
FROM employees e1;

SELECT department
FROM departments
WHERE 38 < (SELECT COUNT(*) FROM employees e
		    WHERE e.department = departments.department)

SELECT department, (SELECT MAX(salary) FROM employees WHERE department = d.department)
FROM departments d
WHERE 38 < (SELECT COUNT(*) FROM employees e2
		    WHERE d.department = e2.department)

SELECT department, first_name, salary, 
CASE WHEN salary = max_by_department THEN 'HIGHEST SALARY'
	 WHEN salary = min_by_department THEN 'LOWEST SALARY'
END AS salary_in_department
FROM(			  
SELECT department, first_name, salary, 
			  (SELECT MAX(salary) FROM employees e2 
			   WHERE e1.department = e2.department) AS max_by_department,
			  (SELECT MIN(salary) FROM employees e2 
			   WHERE e1.department = e2.department) AS min_by_department
FROM employees e1		 
  ) by_departmet
WHERE salary = max_by_department
  OR salary = min_by_department
ORDER BY department
		  