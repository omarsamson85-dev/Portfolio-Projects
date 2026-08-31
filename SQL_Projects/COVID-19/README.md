# COVID-19 Data Analysis — SQL Server

## 📌 Business Problem

COVID-19 reporting produces large volumes of cases, deaths, population and vaccination data. This project uses SQL Server to turn those source tables into comparable country-level and global metrics.

## 🎯 Analytical Questions

- What is the likelihood of death among reported cases?
- What proportion of a population was reported as infected?
- Which countries recorded the highest case and death counts?
- How did global cases and deaths change over time?
- How did vaccination progress compare with population size?

## 🔧 Approach

The analysis combines the `CovidDeaths` and `CovidVaccination` datasets and demonstrates:

- Filtering and aggregation
- JOINs across related tables
- CTEs
- Window functions and rolling totals
- Temporary tables
- Calculated metrics
- Country-level and global summaries

## 🔎 Key Analytical Areas

- Total cases and deaths
- Death percentage
- Percentage of population infected
- Country and continent comparisons
- Global case and death statistics
- Rolling vaccination totals
- Population versus vaccination progress

## 📈 Findings

The repository contains the SQL calculations and source tables needed to reproduce the analysis. Numerical findings should be read from the query outputs rather than copied into this README, because the workbook values represent the retained project snapshot and may differ from current WHO reporting.

When reviewing the project, focus on whether the SQL correctly defines the denominators, handles nulls, joins the datasets at the appropriate grain, and uses window functions appropriately for cumulative vaccination metrics.

## 🗃️ Dataset Source & Attribution

**Source:** World Health Organization (WHO) COVID-19 data, [data.who.int](https://data.who.int/).

WHO states that, unless specifically indicated otherwise, datasets on data.who.int are provided under **Creative Commons Attribution 4.0 International (CC BY 4.0)** with additional WHO terms and conditions. Some datasets may contain material credited to other providers and those components may have separate terms.

- [WHO dataset terms and conditions](https://data.who.int/about/data/terms-and-conditions)
- [WHO COVID-19 data](https://data.who.int/dashboards/covid19/data)

The portfolio does not claim WHO endorsement, sponsorship or affiliation.

## 📁 Project Files

| File | Purpose |
|---|---|
| [SQL analysis script](../COVID-19_Data_Analysis.sql) | Analysis queries |
| [CovidDeaths dataset](CovidDeaths.xlsx) | Cases, deaths and population data |
| [CovidVaccination dataset](CovidVacination.xlsx) | Vaccination data |

## 🔄 Reproducibility

Open the SQL script in **SQL Server Management Studio (SSMS)** or another SQL Server-compatible environment. Import the accompanying Excel datasets into the expected SQL Server tables before executing the queries.

> GitHub may not preview the Excel files as interactive spreadsheets. Download them and open them in Microsoft Excel or another compatible application.

## 🎯 Skills Demonstrated

SQL Server · Data Cleaning · Data Transformation · JOINs · CTEs · Window Functions · Aggregation · Rolling Metrics · Exploratory Analysis · Business Reporting
