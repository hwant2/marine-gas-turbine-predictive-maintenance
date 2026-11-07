SELECT
    engine_id,
    MAX(cycle) AS operating_cycles,
    ROUND(AVG(sensor_2), 4)
        AS Avg_LPC_Outlet_Temp,
    ROUND(AVG(sensor_4), 4)
        AS Avg_LPT_Outlet_Temp,
    ROUND(AVG(sensor_11), 4)
        AS Avg_HPC_Outlet_Pressure,
    ROUND(AVG(sensor_12), 4)
        AS Avg_Fuel_Flow_Pressure_Ratio
FROM engine_operations
WHERE engine_id IN (15, 39)
GROUP BY engine_id
ORDER BY engine_id
