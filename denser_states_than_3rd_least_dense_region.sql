WITH cte1 AS (
	SELECT 
		region,
		SUM(state_pop) AS total_region_pop
	FROM homelessness 
	GROUP BY region
),

cte2 AS (
	SELECT 
		*,
		RANK() OVER (ORDER BY total_region_pop) AS ranking
	FROM cte1
),

cte3 AS (
	SELECT total_region_pop
	FROM cte2
	WHERE ranking = 3
)

SELECT 
	state,
	SUM(state_pop) AS total_state_pop
FROM homelessness
GROUP BY state 
HAVING SUM(state_pop) >= (SELECT total_region_pop FROM cte3)

