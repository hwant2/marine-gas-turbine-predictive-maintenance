WITH engine_life AS (
    SELECT
        engine_id,
        MAX(cycle) AS max_cycle
    FROM engine_operations
    GROUP BY engine_id
),
life_windows AS (
    SELECT
        o.engine_id,
        o.cycle,
        o.sensor_2,
        o.sensor_4,
        o.sensor_11,
        o.sensor_12,
        l.max_cycle,
        CASE
            WHEN o.cycle <=
                CAST(l.max_cycle * 0.10 AS INTEGER)
            THEN 'Early'
            WHEN o.cycle >
                l.max_cycle -
                CAST(l.max_cycle * 0.10 AS INTEGER)
            THEN 'Late'
            ELSE 'Middle'
        END AS life_stage
    FROM engine_operations o
    JOIN engine_life l
        ON o.engine_id = l.engine_id
),
sensor_means AS (
    SELECT
        engine_id,
        MAX(max_cycle) AS operating_cycles,

        AVG(CASE WHEN life_stage = 'Early'
            THEN sensor_2 END) AS early_s2,
        AVG(CASE WHEN life_stage = 'Late'
            THEN sensor_2 END) AS late_s2,

        AVG(CASE WHEN life_stage = 'Early'
            THEN sensor_4 END) AS early_s4,
        AVG(CASE WHEN life_stage = 'Late'
            THEN sensor_4 END) AS late_s4,

        AVG(CASE WHEN life_stage = 'Early'
            THEN sensor_11 END) AS early_s11,
        AVG(CASE WHEN life_stage = 'Late'
            THEN sensor_11 END) AS late_s11,

        AVG(CASE WHEN life_stage = 'Early'
            THEN sensor_12 END) AS early_s12,
        AVG(CASE WHEN life_stage = 'Late'
            THEN sensor_12 END) AS late_s12

    FROM life_windows
    GROUP BY engine_id
)
SELECT
    engine_id,
    operating_cycles,

    ROUND(late_s2 - early_s2, 4)
        AS Sensor_2_Change,

    ROUND(late_s4 - early_s4, 4)
        AS Sensor_4_Change,

    ROUND(late_s11 - early_s11, 4)
        AS Sensor_11_Change,

    ROUND(late_s12 - early_s12, 4)
        AS Sensor_12_Change

FROM sensor_means
ORDER BY engine_id
