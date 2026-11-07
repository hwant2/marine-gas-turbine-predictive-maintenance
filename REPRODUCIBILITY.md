# Reproducibility Guide

## Project Overview

Gas Turbine Performance and Predictive Maintenance Analytics

This project uses NASA C-MAPSS FD001 simulated aircraft turbofan data as an educational proxy for marine gas turbine condition monitoring and predictive maintenance.

The project does not contain actual GE LM2500 operational data and is not an approved maintenance or diagnostic system.

## Source Code

The primary validated notebook is:

[LM2500 Marine Gas Turbine Engineering Only](LM2500_Marine_Gas_Turbine_Engineering_Only.ipynb)

The original development notebook is retained for historical reference:

[LM2500 Marine Gas Turbine Analytics](LM2500_Marine_Gas_Turbine_Analytics.ipynb)

The Engineering Only notebook was executed successfully in a fresh Google Colab runtime during project validation.

- Executable code cells verified: 50
- Notebook included in final portfolio ZIP: PASS
- ZIP integrity verification: PASS
- Source-code verification: PASS

Independent reproduction on another machine and exact dependency version verification remain future work.

## Dataset

Source: NASA Prognostics Center of Excellence, C-MAPSS FD001.

Expected training dataset:
- 100 simulated engines
- 20,631 observations
- 21 sensor channels
- 3 operating settings

Obtain the NASA C-MAPSS dataset and extract the FD001 files, including train_FD001.txt. If the notebook requests RUL_FD001.txt or other dataset files, provide those as well.

The source dataset is not included in this repository.

## Software Requirements

Python 3 and the packages listed in requirements.txt:

- numpy
- pandas
- scikit-learn
- matplotlib
- Pillow
- reportlab
- joblib

SQLite is available through Python's standard library.

Install dependencies:

```bash
pip install -r requirements.txt
```

## Google Colab Execution Instructions

1. Open the validated Engineering Only notebook.
2. Start a fresh runtime.
3. Install the dependencies.
4. Upload or mount the NASA C-MAPSS FD001 dataset.
5. Inspect the notebook's input paths and update them to match the dataset location.
6. Select Runtime > Run all.
7. Confirm that all code cells execute without errors.
8. Compare the generated results with the published README and SQL validation report.
9. Record any discrepancies before declaring the project reproducible.

## Analysis Workflow

1. Dataset acquisition and validation.
2. Google Colab environment preparation.
3. Data cleaning and integrity checks.
4. Exploratory fleet analysis.
5. Twin-engine comparison.
6. Predictive maintenance modeling.
7. SQL engineering analysis.
8. Engineering dashboard development.
9. Engineering risk assessment and recommendations.
10. Executive reporting and publication.

## Reported Model Validation

The project reports an engine-level training and validation split:

- Training engines: 80
- Held-out validation engines: 20
- Validation observations: 4,070

Reported results:

| Metric | Value |
|---|---:|
| Mean absolute error | 25.71 cycles |
| Root mean squared error | 35.20 cycles |
| R-squared | 0.7126 |
| Mean signed error | +2.37 cycles |
| Near-failure RUL overestimation | 75.16% |

These are previously reported results, not independently reproduced values.

The twin-engine prediction examples were generated in-sample and must not be represented as independent validation results.

## Verification Checklist

- [x] Original analysis notebook included
- [x] Python dependency manifest included
- [x] SQL analysis scripts included
- [x] Engineering dashboards included
- [x] Executive report included
- [x] Fresh-runtime notebook execution verified
- [ ] Input file paths independently validated
- [ ] Published model metrics independently reproduced
- [ ] Exact dependency versions and random seeds recorded

## Engineering Limitations

The NASA FD001 dataset represents simulated aircraft turbofan degradation, not operational GE LM2500 marine gas turbines.

No operational maintenance thresholds, inspection intervals, or safety-critical decisions have been validated.

Model predictions should not be used for real equipment maintenance decisions.

## Publication Status

Portfolio documentation and source code are available.

Final end-to-end reproducibility verification remains pending.
