# Reproducibility Guide

## Project

Gas Turbine Performance and Predictive
Maintenance Analytics

## Data Source

NASA C-MAPSS FD001 simulated aircraft
turbofan engine dataset.

This dataset is used as an educational proxy
for marine gas turbine analytics.

It is not actual LM2500 operating data.

## Environment

Python 3 with:

- NumPy
- pandas
- scikit-learn
- Matplotlib
- Pillow
- ReportLab
- joblib
- SQLite (Python standard library)

Install dependencies:

```bash
pip install -r requirements.txt
```

## Analysis Workflow

1. Obtain NASA C-MAPSS FD001 data.
2. Load and validate engine observations.
3. Analyze operating-life variability.
4. Examine sensor degradation trends.
5. Compare selected engine histories.
6. Train and validate the RUL model.
7. Execute SQLite engineering queries.
8. Generate engineering dashboards.
9. Document findings and risks.
10. Prepare final portfolio reports.

## Validation Design

The Random Forest model uses engine-level
train/validation separation.

Training engines: 80
Held-out validation engines: 20

Reported held-out validation results:

- MAE: 25.71 cycles
- RMSE: 35.20 cycles
- R-squared: 0.7126

Near-failure overestimation: 75.16%.

The selected twin-engine prediction examples
were generated in-sample and must not be
presented as independent validation results.

## Reproduction Status

The final repository must include the actual
analysis notebook or Python source scripts
before claiming end-to-end reproducibility.

A dependency list and workflow description
alone are not sufficient to reproduce results.

Exact package versions, dataset access,
random seeds, and execution order should
be documented and verified against the
original analysis environment.

## Safety Boundary

This project is educational.

It does not contain actual LM2500 operational
measurements or approved maintenance thresholds.

No generated predictions should be used to
make real equipment maintenance decisions.
