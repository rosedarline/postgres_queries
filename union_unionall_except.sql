SELECT department
FROM employees
UNION 
SELECT department
FROM departments;

SELECT DISTINCT department
FROM employees
UNION ALL
SELECT department
FROM departments;

SELECT DISTINCT department
FROM employees
EXCEPT
SELECT department
FROM departments;

SELECT DISTINCT department, COUNT(*)
FROM employees
GROUP BY department
UNION ALL
SELECT 'TOTAL', COUNT(*)
FROM employees;



