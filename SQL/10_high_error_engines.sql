SELECT
    engine_id,
    COUNT(*) AS Observations,
    ROUND(AVG(Absolute_Error), 2) AS MAE,
    ROUND(
        SQRT(AVG(Error * Error)), 2
    ) AS RMSE,
    ROUND(AVG(Error), 2) AS Mean_Signed_Error,
    ROUND(MAX(Absolute_Error), 2)
        AS Maximum_Absolute_Error
FROM rul_predictions
GROUP BY engine_id
ORDER BY MAE DESC, engine_id
LIMIT 10
