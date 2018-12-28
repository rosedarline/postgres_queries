SELECT * FROM departments

SELECT * 
FROM employees
WHERE department 
   IN (SELECT department  FROM departments WHERE division = 'Electronics');

SELECT * FROM regions

SELECT *
FROM employees
WHERE salary > 130000
  AND region_id IN 
  (SELECT region_id FROM regions WHERE country = 'Asia' OR Country = 'Canada');


SELECT *
FROM employees
WHERE salary > 130000
  AND region_id IN 
  (SELECT region_id FROM regions WHERE country IN ('Asia', 'Canada'));


SELECT First_name, department, (SELECT MAX(salary) FROM employees ) - salary
FROM employees
WHERE region_id IN (SELECT region_id FROM regions 
					WHERE country IN ('Asia', 'Canada'));				

SELECT * FROM employees
WHERE region_id IN (SELECT region_id FRom regions WHERE country = 'United States');									  
												   

SELECT * FROM employees
WHERE region_id > ALL (SELECT region_id FRom regions WHERE country = 'United States');									  
												   
									  
SELECT * FROM employees
WHERE department = ANY(SELECT department 
					   FROM departments 
					   WHERE division = 'Kids')
AND hire_date > ALL (SELECT hire_date 
				 FROM employees 
				 WHERE department = 'Maintenace' )
									  
SELECT salary FROM(SELECT salary, COUNT(*)
				   FROM employees
				   GROUP BY salary
				   ORDER BY COUNT(*) DESC, salary DESC
				   LIMIT 1) a
									  
SELECT salary
FROM employees
GROUP BY salary
HAVING COUNT(*) >= ALL (SELECT COUNT(*) FROM employees GROUP BY salary)
ORDER BY salary DESC
LIMIT 1