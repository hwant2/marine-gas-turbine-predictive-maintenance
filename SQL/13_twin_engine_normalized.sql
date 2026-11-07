SELECT
    engine_id,
    operating_cycles,

    ROUND(Sensor_2_Change, 4)
        AS Sensor_2_Total_Change,
    ROUND(
        100.0 * Sensor_2_Change /
        operating_cycles, 4
    ) AS Sensor_2_Per_100_Cycles,

    ROUND(Sensor_4_Change, 4)
        AS Sensor_4_Total_Change,
    ROUND(
        100.0 * Sensor_4_Change /
        operating_cycles, 4
    ) AS Sensor_4_Per_100_Cycles,

    ROUND(Sensor_11_Change, 4)
        AS Sensor_11_Total_Change,
    ROUND(
        100.0 * Sensor_11_Change /
        operating_cycles, 4
    ) AS Sensor_11_Per_100_Cycles,

    ROUND(Sensor_12_Change, 4)
        AS Sensor_12_Total_Change,
    ROUND(
        100.0 * Sensor_12_Change /
        operating_cycles, 4
    ) AS Sensor_12_Per_100_Cycles

FROM twin_engine_degradation
ORDER BY engine_id
