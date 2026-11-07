# SQL Operational Analytics Engineering Report

## Project
LM2500 Marine Gas Turbine Performance &
Predictive Maintenance Analytics

## Data Source and Scope
NASA C-MAPSS FD001 simulated turbofan dataset.

This project uses simulated aircraft engine data as an
educational proxy for marine gas turbine analytics.
It does not contain actual GE LM2500 operating data.

## Database Validation
- SQLite integrity: ok
- Engine observations: 20631
- Simulated engines: 100
- Validation predictions: 4070
- Validation engines: 20
- Twin-engine prediction rows: 335
- Unmatched validation rows: 0
- RUL mismatches: 0

## Fleet Operating Life
- Average life: 206.31 cycles
- Minimum life: 128 cycles
- Maximum life: 362 cycles

## Fleet Sensor Degradation
Average early-to-late changes across 100 engines:

- Sensor 2: 1.1021
- Sensor 4: 22.3255
- Sensor 11: 0.6811
- Sensor 12: -1.8089

These are retrospective changes between the first
and last 10% of each engine's observed life.

## Independent Validation Performance
- MAE: 25.7124 cycles
- RMSE: 35.1956 cycles
- Mean signed error: 2.3704 cycles
- Overestimation rate: 57.71%

### Near-Failure Performance
- MAE: 6.05 cycles
- Mean signed error: 4.33 cycles
- Overestimation rate: 75.16%

Overestimation near failure is a critical model
limitation for maintenance decision-making.

## Twin-Engine Case Study
Engine A: NASA engine 15
Engine B: NASA engine 39

These are independent simulated engine histories,
not paired marine gas turbine modules.

### Operating Life
- Engine A: 207 cycles
- Engine B: 128 cycles

### LPT Outlet Temperature
- Engine A average: 1404.0257
- Engine B average: 1414.0262

### Normalized Sensor 4 Change
Per 100 total operating cycles:

- Engine A: 13.9903
- Engine B: 16.1986

This is a descriptive normalized change, not
a fitted degradation slope.

### In-Sample Prediction Errors
- Engine A MAE: 25.33 cycles
- Engine B MAE: 18.11 cycles

Both engines were included in model training.
Their prediction results are not independent
validation performance.

## Engineering Conclusions
1. SQL successfully reproduces fleet operating-life
   and sensor degradation findings.
2. Sensor measurements exhibit systematic average
   changes over simulated engine life.
3. Normalized sensor changes help compare engines
   with different operating lifespans.
4. Model prediction errors vary substantially
   by engine and remaining-life category.
5. Near-failure RUL overestimation requires
   further model development and validation.

## Limitations
- Simulated aircraft turbofan data, not LM2500 data.
- No verified marine operating conditions.
- No actual shipboard maintenance records.
- No established LM2500 alarm thresholds.
- No validated real-world maintenance decision system.
- Retrospective analysis uses complete engine histories.

## Reproducibility
- Database: lm2500_engine_analytics.db
- SQL queries: SQL/
- CSV outputs: project root
- Python environment: Google Colab

Generated: 2026-11-07 03:15 UTC
