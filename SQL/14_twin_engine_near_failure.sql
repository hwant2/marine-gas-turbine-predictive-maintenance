SELECT
    engine_id,
    COUNT(*) AS observations,
    ROUND(AVG(Absolute_Error), 2)
        AS near_failure_MAE,
    ROUND(AVG(Prediction_Error), 2)
        AS mean_signed_error,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN Prediction_Error > 0
                THEN 1 ELSE 0
            END
        ) / COUNT(*), 2
    ) AS overestimation_rate
FROM twin_engine_predictions
WHERE Actual_RUL <= 30
GROUP BY engine_id
ORDER BY engine_id
