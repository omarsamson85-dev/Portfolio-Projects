# COVID-19 Data Analysis — SQL Server

## 📊 Project Overview

This project uses **Microsoft SQL Server** to analyze COVID-19 cases, deaths, population, and vaccination data.

The analysis combines two related datasets — `CovidDeaths` and `CovidVaccination` — to explore global trends, country-level outcomes, infection rates, and vaccination progress.

## 🎯 Objectives

- Analyze COVID-19 cases and deaths
- Calculate death percentages and infection rates
- Compare countries by infection and death counts
- Examine global COVID-19 statistics
- Analyze vaccination progress
- Compare population and vaccination measures

## 🧰 SQL Skills Demonstrated

- SELECT, WHERE, ORDER BY and GROUP BY
- Aggregate functions
- JOINs
- Common Table Expressions (CTEs)
- Temporary tables
- Window functions
- Calculated metrics
- Data exploration and transformation

## 📁 Project Files

| File | Purpose |
|---|---|
| [COVID-19 Data Analysis SQL](../COVID-19_Data_Analysis.sql) | SQL analysis queries |
| [CovidDeaths Dataset](CovidDeaths.xlsx) | Cases, deaths and population data |
| [CovidVaccination Dataset](CovidVacination.xlsx) | Vaccination data |

## 🔄 Data Preparation & Analysis

The source data was imported and prepared for analysis in SQL Server. Queries were then developed to investigate relationships between cases, deaths, population, and vaccination progress.

The SQL script demonstrates both exploratory analysis and the construction of reusable calculations for country-level and global reporting.

## 🔎 Key Analytical Areas

- Likelihood of death among reported cases
- Percentage of population infected
- Countries with the highest infection rates
- Countries with the highest death counts
- Global case and death statistics
- Rolling vaccination totals
- Population versus vaccination progress

## 🗃️ Dataset Source & Attribution

**Source:** World Health Organization (WHO) COVID-19 data, [data.who.int](https://data.who.int/).

WHO states that, unless specifically indicated otherwise, datasets on data.who.int are provided under **Creative Commons Attribution 4.0 International (CC BY 4.0)** with additional WHO terms and conditions. Some datasets may contain material credited to other providers and those components may have separate terms.

The source data was prepared and organized into the `CovidDeaths` and `CovidVaccination` SQL Server tables for this project. The SQL queries, transformations, documentation, and analysis in this repository are the portfolio author's work based on the source data.

The portfolio does not claim WHO endorsement, sponsorship, or affiliation.

- [WHO dataset terms and conditions](https://data.who.int/about/data/terms-and-conditions)
- [WHO COVID-19 data](https://data.who.int/dashboards/covid19/data)

## 📌 Reproducibility

Open the SQL script in **SQL Server Management Studio (SSMS)** or another SQL Server-compatible environment. Download the accompanying Excel datasets if you need to recreate the source tables.

> **Note:** GitHub may not preview the Excel files as interactive spreadsheets. Download them and open them in Microsoft Excel or another compatible application.

## 🎯 Skills Demonstrated

SQL Server · Data Cleaning · Data Transformation · Exploratory Analysis · JOINs · CTEs · Window Functions · Aggregation · Business Reporting
