# Engineering Findings and Evidence Summary

## Project
LM2500 Marine Gas Turbine Performance &
Predictive Maintenance Analytics

## Data Source and Scope

NASA C-MAPSS FD001 simulated aircraft turbofan
engine data, used as an educational proxy for
marine gas turbine condition-monitoring analysis.

These are not actual LM2500 operating records.

## Finding 1: Operating-Life Variability

- Engines analyzed: 100
- Average operating life: 206.31 cycles
- Median operating life: 199 cycles
- Minimum operating life: 128 cycles
- Maximum operating life: 362 cycles
- Standard deviation: 46.34 cycles

Interpretation:
Operating life varies substantially across the
simulated fleet. This supports investigating
condition indicators and variation between
engine histories.

## Finding 2: Sensor Behavior

Fleet average early-to-late changes:

- Sensor 2: +1.1021
- Sensor 4: +22.3255
- Sensor 11: +0.6811
- Sensor 12: -1.8089

Interpretation:
The selected sensor channels exhibit systematic
average changes over completed engine histories.

These measurements have different physical units.
They cannot be directly compared as equivalent
degradation magnitudes.

Sensor associations do not establish causation.

## Finding 3: Predictive Model Performance

Independent validation:

- Held-out engines: 20
- Validation observations: 4,070
- MAE: 25.7124 cycles
- RMSE: 35.1956 cycles
- Mean signed error: +2.3704 cycles

Interpretation:
The Random Forest model predicts remaining
useful life with meaningful accuracy on the
held-out simulated engines.

Its error magnitude and bias require additional
evaluation before any operational application.

## Finding 4: Near-Failure Prediction Risk

For actual remaining life of 0-30 cycles:

- MAE: 6.05 cycles
- Mean signed error: +4.33 cycles
- Overestimation rate: 75.16%

Interpretation:
The model frequently overestimates remaining
life near failure. This is a potential concern
for maintenance planning because optimistic
predictions could delay inspection or intervention.

No operational maintenance threshold has been
validated by this project.

## Finding 5: Twin-Engine Comparison

Engine A (NASA ID 15):
- Operating life: 207 cycles
- Mean Sensor 4: 1404.0257

Engine B (NASA ID 39):
- Operating life: 128 cycles
- Mean Sensor 4: 1414.0262

Operating-life difference:
79 cycles

Mean Sensor 4 difference (B minus A):
+10.0005

Interpretation:
Engine B has a shorter operating life and
higher average Sensor 4 readings.

These engines are independent simulated
histories, not a physically coupled marine
twin-engine installation.

Their previously calculated prediction errors
are in-sample and are not independent
validation results.

## Preliminary Engineering Implications

1. Investigate temperature and pressure trends
   as candidate condition-monitoring features.

2. Evaluate prediction uncertainty and the
   consequences of remaining-life overestimation.

3. Compare model behavior across individual
   engines and operating-life stages.

4. Validate any proposed maintenance thresholds
   using representative operational data and
   qualified engineering review.

## Limitations

- Simulated aircraft turbofan dataset.
- No actual LM2500 marine operating records.
- Retrospective degradation measurements.
- No demonstrated sensor-to-failure causation.
- No validated operational alarm thresholds.
- No approval for real maintenance decisions.

## Next Task

Step 9, Cell 2:
Maintenance Recommendations and Proposed
Condition-Monitoring Strategies.
