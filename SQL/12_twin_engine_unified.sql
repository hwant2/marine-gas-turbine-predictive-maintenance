WITH operational AS (
    SELECT
        engine_id,
        MAX(cycle) AS operating_cycles,
        ROUND(AVG(sensor_2), 4) AS avg_sensor_2,
        ROUND(AVG(sensor_4), 4) AS avg_sensor_4,
        ROUND(AVG(sensor_11), 4) AS avg_sensor_11,
        ROUND(AVG(sensor_12), 4) AS avg_sensor_12
    FROM engine_operations
    WHERE engine_id IN (15, 39)
    GROUP BY engine_id
),
predictions AS (
    SELECT
        engine_id,
        COUNT(*) AS prediction_records,
        ROUND(AVG(Absolute_Error), 2) AS MAE,
        ROUND(AVG(Prediction_Error), 2)
            AS mean_signed_error
    FROM twin_engine_predictions
    GROUP BY engine_id
)
SELECT
    CASE o.engine_id
        WHEN 15 THEN 'Engine A'
        WHEN 39 THEN 'Engine B'
    END AS engine_label,
    o.engine_id,
    o.operating_cycles,
    o.avg_sensor_2,
    o.avg_sensor_4,
    o.avg_sensor_11,
    o.avg_sensor_12,
    p.prediction_records,
    p.MAE,
    p.mean_signed_error
FROM operational o
JOIN predictions p
    ON o.engine_id = p.engine_id
ORDER BY o.engine_id
