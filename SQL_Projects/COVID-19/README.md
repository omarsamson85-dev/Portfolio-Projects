# COVID-19 Data Analysis

## Project Overview

This project analyzes COVID-19 cases, deaths, population, and vaccination data using **Microsoft SQL Server**.

The analysis uses two related SQL Server tables:

- `CovidDeaths`
- `CovidVaccination`

The source data was obtained from the **World Health Organization (WHO) COVID-19 data** and prepared for SQL Server analysis.

## Objectives

The project explores:

- COVID-19 cases and deaths
- Death percentages
- Percentage of population infected
- Countries with the highest infection rates
- Countries with the highest death counts
- Global COVID-19 statistics
- COVID-19 vaccination progress
- Population versus vaccination rates

## SQL Skills Demonstrated

- SELECT statements
- WHERE filtering
- ORDER BY
- GROUP BY
- Aggregate functions
- JOINs
- Common Table Expressions (CTEs)
- Temporary tables
- Window functions
- Calculated metrics
- Data exploration and transformation

## Project Files

- [COVID-19 Data Analysis SQL](../COVID-19_Data_Analysis.sql)
- [CovidDeaths Dataset](CovidDeaths.xlsx)
- [CovidVaccination Dataset](CovidVacination.xlsx)

## Dataset Source & Attribution

**Source:** World Health Organization (WHO), COVID-19 data, data.who.int.

WHO currently states that, unless specifically indicated otherwise, datasets on data.who.int are provided under **Creative Commons Attribution 4.0 International (CC BY 4.0)** with additional WHO terms and conditions. Some datasets can contain material credited to other providers and those components may have separate terms.

The source data was prepared and organized into the `CovidDeaths` and `CovidVaccination` SQL Server tables for this project. The SQL queries, transformations, documentation, and analysis in this repository are the portfolio author's work based on the source data.

The portfolio does not claim WHO endorsement, sponsorship, or affiliation.

Official WHO dataset terms: https://data.who.int/about/data/terms-and-conditions

Official WHO COVID-19 data: https://data.who.int/dashboards/covid19/data

## Data Preparation

The source data was imported and prepared for analysis in SQL Server. The project then uses SQL queries to explore relationships between cases, deaths, population, and vaccination progress.

> **Note:** Excel files may not open as an interactive spreadsheet directly in GitHub. Use the dataset links to download the files and open them in Microsoft Excel or another compatible application.
