# LM2500 Marine Gas Turbine
# Performance and Predictive Maintenance Analytics

## Final Engineering Recommendations Report

### Executive Summary

This educational engineering analytics project
evaluates simulated gas turbine operating histories,
sensor trends, and remaining useful life predictions.

The analysis uses NASA C-MAPSS FD001 simulated
aircraft turbofan data as a proxy for exploring
marine gas turbine condition-monitoring concepts.

It does not contain actual GE LM2500 marine gas
turbine operational measurements.

### Dataset and Fleet

- Simulated engines: 100
- Operating observations: 20,631
- Mean engine operating life: 206.31 cycles
- Median operating life: 199 cycles
- Minimum operating life: 128 cycles
- Maximum operating life: 362 cycles

### Predictive Maintenance Model

Random Forest regression was evaluated using
engine-level training and validation separation.

- Training engines: 80
- Held-out validation engines: 20
- Validation observations: 4,070
- Mean absolute error: 25.71 cycles
- Root mean squared error: 35.20 cycles
- R-squared: 0.7126

Near-failure remaining-life overestimation
occurred in 75.16% of held-out observations
with actual RUL between 0 and 30 cycles.

### Twin-Engine Comparison

Two independent simulated engine histories
were compared as an educational twin-engine
case study.

- Engine A (ID 15): 207 operating cycles
- Engine B (ID 39): 128 operating cycles
- Difference: 79 cycles

These are not physically coupled marine engines.
Their previously reported model predictions
were calculated in-sample.

### Principal Engineering Conclusion

Sensor trends and machine learning predictions
can support condition-monitoring research, but
the observed RUL overestimation, domain mismatch,
and absence of operational validation prevent
using this model for real maintenance decisions.

All proposed maintenance recommendations
require independent testing, qualified
engineering review, and applicable approval.

---

## Detailed Engineering Findings

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

---

## Maintenance Recommendations

## LM2500 Marine Gas Turbine Analytics

### Scope

These recommendations are research and engineering-development proposals based on NASA C-MAPSS FD001 simulated aircraft turbofan data.

They are not approved LM2500 maintenance instructions, inspection intervals, alarm limits, or operating procedures.

## Evidence-Based Recommendations

### Priority 1: Sensor Condition Monitoring

**Supporting Evidence**

Fleet Sensor 4 increased by 22.3255 native units and Sensor 11 by 0.6811 between early and late observations.

**Proposed Engineering Action**

Develop trend monitoring for selected temperature and pressure channels. Evaluate baseline-relative changes, sensor quality, and operating context.

**Expected Benefit**

Improved visibility into developing equipment-condition changes.

**Required Validation**

Confirm sensor definitions, calibration, normal operating ranges, and behavior using representative equipment data.

### Priority 2: RUL Prediction Risk

**Supporting Evidence**

Near-failure predictions overestimated remaining life 75.16% of the time on held-out validation engines.

**Proposed Engineering Action**

Investigate calibrated prediction intervals, conservative lower-bound estimates, and explicit uncertainty reporting rather than relying on point predictions alone.

**Expected Benefit**

Better understanding of prediction uncertainty and optimistic model errors.

**Required Validation**

Evaluate calibration, coverage, false alarms, missed detections, and maintenance consequences on independent datasets.

### Priority 3: Equipment Reliability Analysis

**Supporting Evidence**

The simulated fleet ranged from 128 to 362 operating cycles, with a standard deviation of 46.34 cycles.

**Proposed Engineering Action**

Compare engine-level histories and investigate variation in sensor behavior, operating conditions, and failure timing.

**Expected Benefit**

Identification of unusual histories for further engineering investigation.

**Required Validation**

Account for operating regimes, exposure, maintenance history, and differences between engine populations.

### Priority 4: Inspection Prioritization

**Supporting Evidence**

Model errors differ across remaining-life stages and individual validation engines.

**Proposed Engineering Action**

Design a prototype review queue combining sensor anomalies, data quality flags, model uncertainty, and engineer assessment. Do not use unvalidated RUL predictions as automatic inspection triggers.

**Expected Benefit**

A structured approach to reviewing potential equipment concerns.

**Required Validation**

Have qualified maintenance engineers evaluate proposed rules against approved procedures and actual failure outcomes.

### Priority 5: Predictive Model Improvement

**Supporting Evidence**

Held-out validation MAE was 25.71 cycles and RMSE was 35.20 cycles.

**Proposed Engineering Action**

Compare additional models, assess feature stability, test prediction calibration, and evaluate generalization across operating conditions.

**Expected Benefit**

More reliable characterization of model accuracy and limitations.

**Required Validation**

Use engine-level separation, untouched test data, and documented evaluation criteria. Avoid test-data leakage.

## Suggested Development Sequence

1. Verify source data and sensor definitions.
2. Build baseline-relative condition trends.
3. Evaluate model uncertainty and error bias.
4. Prototype an engineer-reviewed alert queue.
5. Test with independent representative data.
6. Obtain appropriate engineering approval before any operational use.

## Engineering Safety Boundary

Continue using approved OEM and site-specific maintenance procedures for actual equipment. No simulated-data threshold or model output should replace qualified engineering judgment.

## Next Task

Step 9 Cell 3: Model Limitations, Risk Controls, and Implementation Requirements.

---

## Engineering Risk Assessment

## LM2500 Marine Gas Turbine Analytics

### Scope

This is a preliminary engineering-development risk assessment for an educational project using NASA C-MAPSS FD001 simulated data.

Risk scores are illustrative judgments, not measured probabilities or approved operational safety classifications.

## Risk Register

### R01: Dataset representativeness

- Likelihood: 5/5
- Impact: 5/5
- Preliminary score: 25/25
- Preliminary level: Critical

**Evidence / limitation**

NASA C-MAPSS FD001 represents simulated aircraft turbofans, not operational LM2500 marine gas turbines.

**Proposed mitigation**

Obtain authorized representative marine turbine data and verify equipment, sensor, operating-regime, and failure-mode mapping.

**Validation requirement**

Document data provenance, applicability, and engineering approval of the dataset.

### R02: Optimistic RUL predictions

- Likelihood: 5/5
- Impact: 5/5
- Preliminary score: 25/25
- Preliminary level: Critical

**Evidence / limitation**

75.16% of held-out near-failure predictions overestimated actual RUL.

**Proposed mitigation**

Investigate calibrated uncertainty intervals, conservative lower bounds, and human-reviewed decision rules.

**Validation requirement**

Test interval coverage, error direction, missed detections, and false alarms on independent engine histories.

### R05: Unvalidated maintenance decisions

- Likelihood: 4/5
- Impact: 5/5
- Preliminary score: 20/25
- Preliminary level: Critical

**Evidence / limitation**

No OEM-approved inspection thresholds or maintenance decision rules were established by this project.

**Proposed mitigation**

Keep analytics advisory-only. Require qualified engineering review and continue following approved OEM maintenance procedures.

**Validation requirement**

Complete operational hazard assessment, procedure review, and formal authorization before any maintenance integration.

### R04: Generalization and leakage

- Likelihood: 4/5
- Impact: 4/5
- Preliminary score: 16/25
- Preliminary level: High

**Evidence / limitation**

The model was validated on 20 held-out engines. Twin-engine prediction results were calculated on training engines.

**Proposed mitigation**

Preserve engine-level separation, document preprocessing boundaries, and evaluate additional untouched engine populations.

**Validation requirement**

Audit train/test separation and repeat evaluation across independent datasets.

### R03: Sensor data quality

- Likelihood: 3/5
- Impact: 4/5
- Preliminary score: 12/25
- Preliminary level: High

**Evidence / limitation**

Sensor-based predictions depend on measurement quality; actual marine sensor calibration and reliability were not evaluated.

**Proposed mitigation**

Implement missing-data checks, range validation, calibration review, and sensor fault detection.

**Validation requirement**

Test representative missing, noisy, stuck, and out-of-range sensor scenarios.

### R06: Model drift and monitoring

- Likelihood: 3/5
- Impact: 4/5
- Preliminary score: 12/25
- Preliminary level: High

**Evidence / limitation**

The project does not include a deployed model or longitudinal operational performance monitoring.

**Proposed mitigation**

Design monitoring for data distributions, prediction quality, uncertainty, and model version changes.

**Validation requirement**

Establish baseline metrics and test monitoring procedures before deployment.

## Implementation Requirements

### Phase 1: Data Qualification

Obtain representative operational data with documented sensor definitions, failure labels, and equipment history.

**Exit criterion:** Qualified engineers approve data provenance and intended analytical use.

### Phase 2: Sensor and Feature Validation

Validate sensor calibration, missing-data handling, feature engineering, and operating-condition normalization.

**Exit criterion:** Documented data-quality tests and repeatable feature-generation results.

### Phase 3: Independent Model Evaluation

Test unseen engine histories, prediction bias, uncertainty calibration, and failure-stage performance.

**Exit criterion:** Predefined performance and safety-related acceptance criteria are satisfied.

### Phase 4: Engineering Review

Evaluate model limitations, proposed alert rules, failure consequences, and approved maintenance procedures.

**Exit criterion:** Qualified engineering and maintenance stakeholders approve the proposed scope.

### Phase 5: Advisory Pilot

Run a monitored shadow-mode pilot without changing actual maintenance decisions or approved intervals.

**Exit criterion:** Pilot performance, false alarms, missed detections, and drift are reviewed.

### Phase 6: Operational Authorization

Complete applicable safety, cybersecurity, configuration, training, and maintenance approval processes.

**Exit criterion:** Formal authorization is documented before any operational integration.

## Engineering Safety Boundary

The model is not approved for actual LM2500 maintenance scheduling, equipment shutdown, or alarm decisions.

Actual maintenance must follow applicable OEM guidance and approved procedures.

## Next Step

Step 9 Cell 4: Final Engineering Recommendations Report.

---

## Final Engineering Conclusions

1. The simulated fleet exhibits substantial
   variation in operating life.

2. Selected temperature and pressure channels
   exhibit retrospective degradation-related
   trends that warrant further investigation.

3. The Random Forest model demonstrates
   predictive capability on held-out simulated
   engines, but errors remain significant.

4. Optimistic near-failure RUL estimates are
   a key model-risk concern.

5. The proposed maintenance framework is
   advisory and requires representative
   operational data and engineering approval.

## Operational Safety Boundary

This project is not an approved LM2500
diagnostic, alarm, inspection, shutdown,
or maintenance scheduling system.

Actual equipment maintenance must follow
approved OEM and site-specific procedures.

## Project Status

Step 9: Engineering Findings and
Maintenance Recommendations — COMPLETE.

Next: Step 10 — Final Project Report,
Portfolio Packaging, and GitHub Publication.

