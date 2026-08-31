# SQL Projects

This folder contains SQL projects demonstrating data cleaning, transformation, exploratory analysis and analytical querying using **Microsoft SQL Server**.

## 1. COVID-19 Data Analysis

This project analyzes COVID-19 cases, deaths, population and vaccination data.

### Analysis Includes

- Total cases vs. total deaths
- Population infection rates
- Countries with the highest infection rates
- Death counts by country and continent
- Global COVID-19 numbers
- Population vs. vaccinations
- Rolling vaccination totals

### SQL Techniques

- SELECT / WHERE
- GROUP BY / ORDER BY
- Aggregate functions
- JOINs
- Window functions
- Common Table Expressions (CTEs)
- Temporary tables
- SQL views
- Calculated metrics

### Project Files

- [COVID-19 Project README](COVID-19/README.md)
- [COVID-19 Data Analysis SQL](COVID-19_Data_Analysis.sql)
- [CovidDeaths Dataset](COVID-19/CovidDeaths.xlsx)
- [CovidVaccination Dataset](COVID-19/CovidVacination.xlsx)

---

## 2. National Housing Data Cleaning

This project focuses on cleaning and preparing the **National Housing** dataset for analysis using SQL Server.

The original source workbook retained in the repository is named `Nashville Housing Data for Data Cleaning.xlsx`. That filename is preserved because it is the source workbook's filename. After import into SQL Server, the working table used throughout the queries is named `NationalHousing`.

### Data Cleaning Tasks

- Standardizing sale dates
- Populating missing property addresses
- Splitting property addresses into separate fields
- Splitting owner addresses into separate fields
- Standardizing Sold As Vacant values
- Handling selected missing values
- Identifying duplicate records
- Removing duplicate records
- Removing redundant columns

### SQL Techniques

- SELECT
- UPDATE
- ALTER TABLE
- JOINs
- CASE statements
- COALESCE
- String functions
- Common Table Expressions (CTEs)
- ROW_NUMBER()
- Duplicate detection and removal

### SQL Table

`NationalHousing`

### Project Files

- [National Housing Project README](Nashville_Housing/README.md)
- [National Housing Dataset](Nashville_Housing/Nashville%20Housing%20Data%20for%20Data%20Cleaning.xlsx)
- [National Housing Data Cleaning SQL](Nashville_Housing_Data_Cleaning.sql)

### Source / Attribution Note

The underlying housing dataset is a third-party source dataset. This repository does not claim ownership of the original dataset. The SQL cleaning script and analysis are the portfolio author's work. Users should consult the original dataset provider's terms before redistributing the source workbook.

---

## Tools Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Microsoft Excel
