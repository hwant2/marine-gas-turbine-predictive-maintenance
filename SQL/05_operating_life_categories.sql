WITH engine_summary AS (
    SELECT
        engine_id,
        MAX(cycle) AS operating_cycles,
        AVG(sensor_4) AS avg_sensor_4,
        AVG(sensor_11) AS avg_sensor_11,
        AVG(sensor_12) AS avg_sensor_12
    FROM engine_operations
    GROUP BY engine_id
),
classified AS (
    SELECT
        *,
        CASE
            WHEN operating_cycles < 175
                THEN 'Shorter Life'
            WHEN operating_cycles <= 250
                THEN 'Intermediate Life'
            ELSE 'Longer Life'
        END AS life_category
    FROM engine_summary
)
SELECT
    life_category,
    COUNT(*) AS Engines,
    ROUND(AVG(operating_cycles), 2)
        AS Avg_Operating_Cycles,
    ROUND(AVG(avg_sensor_4), 4)
        AS Avg_LPT_Outlet_Temp,
    ROUND(AVG(avg_sensor_11), 4)
        AS Avg_HPC_Outlet_Pressure,
    ROUND(AVG(avg_sensor_12), 4)
        AS Avg_Fuel_Flow_Pressure_Ratio
FROM classified
GROUP BY life_category
ORDER BY
    CASE life_category
        WHEN 'Shorter Life' THEN 1
        WHEN 'Intermediate Life' THEN 2
        ELSE 3
    END
