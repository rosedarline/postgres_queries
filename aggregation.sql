
CREATE TABLE fruit_imports
(
	id integer,
	name varchar(20),
	season varchar(10),
	state varchar(20),
	supply integer,
	cost_per_unit decimal
);

insert into fruit_imports values(1, 'Apple', 'All Year', 'Kansas', 32900, 0.22);
insert into fruit_imports values(2, 'Avocado', 'All Year', 'Nebraska', 27000, 0.15);
insert into fruit_imports values(3, 'Coconut', 'All Year', 'California', 15200, 0.75);
insert into fruit_imports values(4, 'Orange', 'Winter', 'California', 17000, 0.22);
insert into fruit_imports values(5, 'Pear', 'Winter', 'Iowa', 37250, 0.17);
insert into fruit_imports values(6, 'Lime', 'Spring', 'Indiana', 40400, 0.15);
insert into fruit_imports values(7, 'Mango', 'Spring', 'Texas', 13650, 0.60);
insert into fruit_imports values(8, 'Orange', 'Spring', 'Iowa', 18000, 0.26);
insert into fruit_imports values(9, 'Apricot', 'Spring', 'Indiana', 55000, 0.20);
insert into fruit_imports values(10, 'Cherry', 'Summer', 'Texas', 62150, 0.02);
insert into fruit_imports values(11, 'Cantaloupe', 'Summer', 'Texas', 8000, 0.49);
insert into fruit_imports values(12, 'Apricot', 'Summer', 'Kansas', 14500, 0.20);
insert into fruit_imports values(13, 'Mango', 'Summer', 'Texas', 17000, 0.68);
insert into fruit_imports values(14, 'Pear', 'Fall', 'Nebraska', 30500, 0.12);
insert into fruit_imports values(15, 'Grape', 'Fall', 'Illinois', 72500, 0.35);


SELECT * FROM fruit_imports

SELECT state, SUM(supply) AS total_supply
FROM fruit_imports
GROUP BY state
ORDER BY total_supply DESC


SELECT season, MAX(cost_per_unit) AS max_cost
FROM fruit_imports
GROUP BY season



SELECT state, COUNT(name)
FROM fruit_imports
GROUP BY state
HAVING COUNT(name) > 1

SELECT season, COUNT(name)
FROM fruit_imports
GROUP BY season
HAVING COUNT(name) = 3 OR COUNT(name) = 4


SELECT state, SUM(cost_per_unit * cost_per_unit) AS total_cost
FROM fruit_imports
GROUP BY state
ORDER BY total_cost DESC
LIMIT 1

CREATE table fruits (fruit_name varchar(10));
INSERT INTO fruits VALUES ('Orange');
INSERT INTO fruits VALUES ('Apple');
INSERT INTO fruits VALUES (NULL);
INSERT INTO fruits VALUES (NULL);

SELECT * FROM fruits

SELECT COUNT(COALESCE(fruit_name, 'NONE'))
FROM fruits									