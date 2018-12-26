SELECT SUM(salary), department
FROM employees
WHERE region_id IN (4,5,6,7
GROUP BY department
					
SELECT department, COUNT(*)
FROM employees
GROUP BY department;
					
SELECT department, COUNT(*) total_number_employees, 
ROUND(AVG(salary)) avg_salary, 
MIN(salary) min_sal, MAX(salary) max_sal
FROM employees
WHERE salary > 70000		  
GROUP BY department
ORDER BY total_number_employees DESC	
		  
SELECT department, gender, COUNT(*)
FROM employees  
GROUP BY department, gender
ORDER BY department		  

SELECT department, COUNT(*)
FROM employees  
GROUP BY department
HAVING COUNT(*) > 35		  
ORDER BY department		  

SELECT first_name, COUNT(*)
FROM employees
GROUP BY first_name		  
HAVING COUNT(*) > 2
		  
SELECT department
FROM employees
GROUP BY department
		  
SELECT SUBSTRING(email, POSITION('@' IN email)+1) AS email_domain, COUNT(*) AS total_count
FROM employees
WHERE email IS NOT NULL		  
GROUP BY email_domain
ORDER BY total_count DESC
		  
SELECT gender, region_id,
	   MIN(salary) AS min_salary,
	   MAX(salary) AS max_salary,
	   ROUND(AVG(salary)) AS avg_salary
FROM employees
GROUP BY gender, region_id
ORDER BY gender, region_id
		 