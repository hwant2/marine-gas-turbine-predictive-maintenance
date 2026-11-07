SELECT
    engine_id,
    MAX(cycle) AS operating_cycles
FROM engine_operations
GROUP BY engine_id
ORDER BY operating_cycles ASC, engine_id
LIMIT 5
