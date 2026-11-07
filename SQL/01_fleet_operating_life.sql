WITH engine_life AS (
    SELECT
        engine_id,
        MAX(cycle) AS operating_cycles
    FROM engine_operations
    GROUP BY engine_id
)
SELECT
    COUNT(*) AS Total_Engines,
    ROUND(AVG(operating_cycles), 2)
        AS Average_Operating_Cycles,
    MIN(operating_cycles)
        AS Minimum_Operating_Cycles,
    MAX(operating_cycles)
        AS Maximum_Operating_Cycles
FROM engine_life
