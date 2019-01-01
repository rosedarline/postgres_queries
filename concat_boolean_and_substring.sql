SELECT last_name || ' ' || 'works in the '|| department || 
' department'
FROM professors

SELECT last_name, (salary > 88000)
FROM professors;

SELECT last_name, 
UPPER(SUBSTRING(department, 1, 3)) as department, 
       salary, hire_date
FROM professors
				
SELECT MAX(salary) as higest_salary,
MIN(salary) as lowest_salary
FROM professors
WHERE last_name != 'Wilson'	
				
SELECT MIN(hire_date) 
FROM professors				