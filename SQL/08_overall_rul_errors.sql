SELECT
    COUNT(*) AS Observations,
    COUNT(DISTINCT engine_id) AS Engines,
    ROUND(AVG(Absolute_Error), 4) AS MAE,
    ROUND(
        SQRT(AVG(Error * Error)), 4
    ) AS RMSE,
    ROUND(AVG(Error), 4) AS Mean_Signed_Error,
    ROUND(
        100.0 * SUM(
            CASE WHEN Error > 0 THEN 1 ELSE 0 END
        ) / COUNT(*), 2
    ) AS Overestimation_Rate
FROM rul_predictions
