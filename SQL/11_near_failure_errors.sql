SELECT
    engine_id,
    COUNT(*) AS Near_Failure_Observations,
    ROUND(AVG(Absolute_Error), 2)
        AS Near_Failure_MAE,
    ROUND(AVG(Error), 2)
        AS Mean_Signed_Error,
    ROUND(
        100.0 * SUM(
            CASE WHEN Error > 0 THEN 1 ELSE 0 END
        ) / COUNT(*), 2
    ) AS Overestimation_Rate,
    ROUND(MAX(Error), 2)
        AS Maximum_Overestimation
FROM rul_predictions
WHERE Actual_RUL <= 30
GROUP BY engine_id
ORDER BY Overestimation_Rate DESC,
         Near_Failure_MAE DESC
