
# NHS England A&E Waiting Time Analysis — June 2026

## Project Overview

This project analyses NHS England Accident & Emergency (A&E) attendance and waiting-time data for June 2026 using SQL.

The analysis focuses on Type 1 A&E attendances and regional differences in the proportion exceeding four hours.

## Tools Used

- SQLite
- DB Browser for SQLite
- SQL

## Dataset

Source: NHS England — A&E Attendances and Emergency Admissions, June 2026.

The dataset contains 193 records, including one national summary row and 192 organisation-level records across seven NHS regions.

[Official NHS England A&E dataset — June 2026](https://www.england.nhs.uk/statistics/statistical-work-areas/ae-waiting-times-and-activity/ae-attendances-and-emergency-admissions-2026-27/)

## Data Quality Checks

The analysis checks for missing values, zero and negative attendance counts, invalid waiting-time counts, and organisation-code completeness.

## Key Findings

- Total Type 1 A&E attendances: **1,459,491**
- Attendances exceeding four hours: **569,187**
- National percentage exceeding four hours: **39.00%**
- Highest regional percentage: **South West (45.15%)**
- Lowest regional percentage: **South East (36.59%)**
- Difference between highest and lowest: **8.56 percentage points**

These findings describe regional waiting-time differences, not their underlying causes.

## SQL Files

- `01_data_exploration.sql` — Initial data exploration
- `02_data_quality_checks.sql` — Data quality validation
- `03_waiting_time_analysis.sql` — National and regional waiting-time analysis

## Project Status

Initial SQL exploration, quality checks, and regional waiting-time analysis completed. Further analysis and visualisations are planned.
