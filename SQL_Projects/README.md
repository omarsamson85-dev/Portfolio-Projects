SQL Data Analytics Projects

Overview

This folder contains SQL projects demonstrating practical skills in data cleaning, data transformation, exploratory data analysis, and analytical querying using SQL Server.

The projects cover two different datasets and demonstrate the process of working with raw data, preparing it for analysis, and extracting meaningful insights using SQL.

---
 Projects
 1. COVID-19 Data Analysis

An exploratory SQL analysis of COVID-19 cases, deaths, and vaccination data.

 Dataset

The project uses COVID-19 data sourced from the World Health Organization (WHO).

The data was organized into two SQL Server tables:

- `CovidDeaths`
- `CovidVaccination`

 Analysis Includes

- Total COVID-19 cases and deaths
- Death percentages
- Percentage of population infected
- Countries with the highest infection rates
- Countries with the highest death counts
- Global COVID-19 statistics
- Population versus vaccination rates
- Rolling vaccination totals

 SQL Skills Demonstrated

- SELECT statements
- Filtering with WHERE
- GROUP BY
- ORDER BY
- Aggregate functions
- JOINs
- Common Table Expressions (CTEs)
- Temporary tables
- Window functions
- Calculated fields
- Percentage calculations
- Exploratory data analysis

 Project Files

- [COVID-19 Analysis Queries](COVID-19_Data_Analysis.sql)
- [COVID-19 Project README](COVID-19/README.md)
- [CovidDeaths Dataset](COVID-19/CovidDeaths.xlsx)
- [CovidVaccination Dataset](COVID-19/CovidVaccination.xlsx)

> The Excel datasets are provided as source files. GitHub may not display large Excel workbooks directly in the browser, but the files can be downloaded from the repository.
--

 2. Nashville Housing Data Cleaning

A SQL data-cleaning project focused on preparing Nashville housing data for analysis.

 Dataset

The original dataset is:

`Nashville Housing Data for Data Cleaning.xlsx`

The dataset was imported into SQL Server and stored as:

`NationalHousing`

 Data Cleaning Tasks

- Standardizing date formats
- Populating missing property addresses
- Using self-joins to identify related records
- Splitting address information into separate columns
- Standardizing categorical values
- Removing unwanted or inconsistent data
- Altering table structure
- Preparing cleaned data for analysis

 SQL Skills Demonstrated

- UPDATE statements
- ALTER TABLE
- JOINs
- Self-joins
- CASE statements
- String functions
- ISNULL
- CTEs
- Data transformation
- Data standardization

Project Files

- [Nashville Housing Cleaning Queries](Nashville_Housing_Data_Cleaning.sql)
- [Nashville Housing Project README](Nashville_Housing/README.md)
- [Nashville Housing Dataset](Nashville_Housing/Nashville%20Housing%20Data%20for%20Data%20Cleaning.xlsx)

> The Excel dataset is provided as a source file. GitHub may not display large Excel workbooks directly in the browser, but the file can be downloaded from the repository.

 Tools & Technologies

- Microsoft SQL Server
- SQL
- SQL Server Management Studio (SSMS)

Key Skills

- Data Cleaning
- Data Transformation
- Exploratory Data Analysis
- Data Aggregation
- Relational Data Analysis
- SQL Query Development
- Analytical Problem Solving
