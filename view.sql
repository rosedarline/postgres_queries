CREATE VIEW v_employee_information AS
SELECT first_name, email, e.department, salary, division, region, country
FROM employees e, departments d, regions r
WHERE e.department = d.department
AND e.region_id = r.region_id

SELECT * FROM v_employee_information

SELECT first_name, region
FROM v_employee_information

-- INLINE VIEW
SELECT * 
FROM (SELECT * FROM departments) sub

SELECT * FROM regions