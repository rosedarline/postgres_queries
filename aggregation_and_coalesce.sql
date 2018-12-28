SELECT state, SUM(supply) AS sum_supply
FROM fruit_imports
GROUP BY state
ORDER BY sum_supply DESC
LIMIT 1

SELECT season, SUM(cost_per_unit) AS total_cost
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

SELECT state, SUM(supply * cost_per_unit) AS total_cost
FROM fruit_imports
GROUP BY state
ORDER BY total_cost DESC
LIMIT 1

SELECT COUNT(COALESCE(fruit_name, 'NONE'))
FROM fruits
	
								  
					  
SELECT * FROM fruits
					  