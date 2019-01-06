SELECT * FROM employees
SELECT department, COUNT(*)
FROM employees
WHERE department IN ('Sports', 'Tools', 'Clothing', 'Computers')
GROUP BY department

SELECT SUM(CASE WHEN department = 'Sports' THEN 1 ELSE 0 END) AS Sports,
SUM (CASE WHEN department = 'Tools' THEN 1 ELSE 0 END) AS Tools,
SUM (CASE WHEN = 'Clothing' THEN 1 ELSE 0 END) AS Clothing,
SUM (CASE WHEN department = 'Computers' THEN 1 ELSE 0 END) AS Computers
FROM employees

SELECT * FROM regions

SELECT first_name,
CASE WHEN region_id = 1 THEN (SELECT country FROM regions WHERE region_id = 1) END AS region_1,
CASE WHEN region_id = 2 THEN (SELECT country FROM regions WHERE region_id = 2) END AS region_2,
CASE WHEN region_id = 3 THEN (SELECT country FROM regions WHERE region_id = 3) END AS region_3,
CASE WHEN region_id = 4 THEN (SELECT country FROM regions WHERE region_id = 4) END AS region_4,
CASE WHEN region_id = 5 THEN (SELECT country FROM regions WHERE region_id = 5) END AS region_5,
CASE WHEN region_id = 6 THEN (SELECT country FROM regions WHERE region_id = 6) END AS region_6,
CASE WHEN region_id = 7 THEN (SELECT country FROM regions WHERE region_id = 7) END AS region_7
FROM employees;

SELECT COUNT(r_g.region_1) + COUNT(r_g.region_2) + COUNT(r_g.region_3) AS United_states,
COUNT(r_g.region_4) + COUNT(r_g.region_5) AS Asia,
COUNT(r_g.region_6) + COUNT(r_g.region_7) AS Canada
FROM(
SELECT first_name,
CASE WHEN region_id = 1 THEN (SELECT country FROM regions WHERE region_id = 1) END AS region_1,
CASE WHEN region_id = 2 THEN (SELECT country FROM regions WHERE region_id = 2) END AS region_2,
CASE WHEN region_id = 3 THEN (SELECT country FROM regions WHERE region_id = 3) END AS region_3,
CASE WHEN region_id = 4 THEN (SELECT country FROM regions WHERE region_id = 4) END AS region_4,
CASE WHEN region_id = 5 THEN (SELECT country FROM regions WHERE region_id = 5) END AS region_5,
CASE WHEN region_id = 6 THEN (SELECT country FROM regions WHERE region_id = 6) END AS region_6,
CASE WHEN region_id = 7 THEN (SELECT country FROM regions WHERE region_id = 7) END AS region_7
FROM employees
) r_g

SELECT United_states + Asia + Canada FROM(
SELECT COUNT(r_g.region_1) + COUNT(r_g.region_2) + COUNT(r_g.region_3) AS United_states,
COUNT(r_g.region_4) + COUNT(r_g.region_5) AS Asia,
COUNT(r_g.region_6) + COUNT(r_g.region_7) AS Canada
FROM(
SELECT first_name,
CASE WHEN region_id = 1 THEN (SELECT country FROM regions WHERE region_id = 1) END AS region_1,
CASE WHEN region_id = 2 THEN (SELECT country FROM regions WHERE region_id = 2) END AS region_2,
CASE WHEN region_id = 3 THEN (SELECT country FROM regions WHERE region_id = 3) END AS region_3,
CASE WHEN region_id = 4 THEN (SELECT country FROM regions WHERE region_id = 4) END AS region_4,
CASE WHEN region_id = 5 THEN (SELECT country FROM regions WHERE region_id = 5) END AS region_5,
CASE WHEN region_id = 6 THEN (SELECT country FROM regions WHERE region_id = 6) END AS region_6,
CASE WHEN region_id = 7 THEN (SELECT country FROM regions WHERE region_id = 7) END AS region_7
FROM employees
) r_g
)a

