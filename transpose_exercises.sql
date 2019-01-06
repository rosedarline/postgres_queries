SELECT * FROM fruit_imports;

SELECT name,
CASE 
	WHEN supply < 20000 THEN 'LOW'
	WHEN supply > 20000 AND supply < 50000 THEN 'ENOUGH'
	WHEN supply > 50000 THEN 'FULL'
END AS category
FROM fruit_imports

SELECT SUM(CASE WHEN supply < 20000 THEN 1 ELSE 0 END) AS low,
		SUM(CASE WHEN supply > 20000 AND supply < 50000 THEN 1 ELSE 0 END) AS enough,
		SUM(CASE WHEN supply > 50000 THEN 1 ELSE 0 END) AS full
FROM fruit_imports;


SELECT name, t_supply,
CASE WHEN t_supply < 20000 THEN 'LOW'
     WHEN t_supply >= 20000 AND t_supply <= 50000 THEN 'ENOUGH'
     WHEN t_supply > 50000 THEN 'FULL'
END as category
FROM (
SELECT name, sum(supply) t_supply
FROM fruit_imports
GROUP BY name
    ) total_supply


SELECT SUM(CASE WHEN season = 'Winter' THEN total_cost END) AS Winter_total,
SUM(CASE WHEN season = 'Summer' THEN total_cost END) AS Summer_total,
SUM(CASE WHEN season = 'Spring' THEN total_cost END) AS Spring_total,
SUM(CASE WHEN season = 'Fall' THEN total_cost END) AS Spring_total,
SUM(CASE WHEN season = 'All Year' THEN total_cost END) AS Spring_total
FROM (
SELECT season, SUM(supply * cost_per_unit) total_cost
from fruit_imports
group by season
    ) season
