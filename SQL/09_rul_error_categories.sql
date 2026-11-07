WITH categorized AS (
    SELECT
        *,
        CASE
            WHEN Actual_RUL <= 30
                THEN 'Near Failure (0-30)'
            WHEN Actual_RUL <= 100
                THEN 'Intermediate (31-100)'
            ELSE 'Longer Life (101+)'
        END AS RUL_Category
    FROM rul_predictions
)
SELECT
    RUL_Category,
    COUNT(*) AS Observations,
    ROUND(AVG(Absolute_Error), 2) AS MAE,
    ROUND(
        SQRT(AVG(Error * Error)), 2
    ) AS RMSE,
    ROUND(AVG(Error), 2) AS Mean_Signed_Error,
    ROUND(
        100.0 * SUM(
            CASE WHEN Error > 0 THEN 1 ELSE 0 END
        ) / COUNT(*), 2
    ) AS Overestimation_Rate
FROM categorized
GROUP BY RUL_Category
ORDER BY
    CASE RUL_Category
        WHEN 'Near Failure (0-30)' THEN 1
        WHEN 'Intermediate (31-100)' THEN 2
        ELSE 3
    END
