# Model Limitations and Risk Controls

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
