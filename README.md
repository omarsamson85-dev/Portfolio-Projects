# Data Analytics Portfolio

Welcome to my data analytics portfolio. This repository contains practical projects demonstrating skills in **SQL Server** and **Microsoft Excel**, including data cleaning, data transformation, exploratory data analysis, visualization, and dashboard development.

## Projects

### 1. SQL Projects

The SQL section demonstrates practical work with data cleaning, transformation, exploratory analysis, joins, CTEs, window functions, and analytical queries using Microsoft SQL Server.

Projects include:

- COVID-19 Data Analysis
- National Housing Data Cleaning

**Skills demonstrated:**

- Data cleaning and transformation
- Joins and aggregate functions
- Common Table Expressions (CTEs)
- Window functions
- Exploratory data analysis
- SQL Server / SSMS

**Project:** [View SQL Projects](SQL_Projects/README.md)

---

### 2. Bike Buyers Analysis – Advanced Excel

An Excel analysis project covering data cleaning, formulas, pivot tables, data visualization, and dashboard development.

**Skills demonstrated:**

- Data cleaning and preparation
- Excel formulas
- Pivot tables
- Data analysis
- Data visualization
- Dashboard development
- Business insights

**Project:** [View Excel Bike Buyers Project](Excel_Bike_Buyers/README.md)

**Dashboard preview:**

![Bike Buyers Dashboard](Excel_Bike_Buyers/dashboard.png)

---

## Repository Navigation

| Project | Description | Main File |
|---|---|---|
| [COVID-19 Data Analysis](SQL_Projects/COVID-19/README.md) | COVID-19 cases, deaths, and vaccination analysis | [SQL analysis](SQL_Projects/COVID-19_Data_Analysis.sql) |
| [National Housing Data Cleaning](SQL_Projects/Nashville_Housing/README.md) | National Housing data cleaning and preparation | [SQL cleaning script](SQL_Projects/Nashville_Housing_Data_Cleaning.sql) |
| [Bike Buyers Analysis](Excel_Bike_Buyers/README.md) | Excel analysis and dashboard | [Excel workbook](Excel_Bike_Buyers/Advanced_Excel_Bike_Sales_Analysis.Xlsx) |

## Data Sources & Attribution

### COVID-19 Data

The COVID-19 analysis uses COVID-19 data obtained from the **World Health Organization (WHO)**. The source data was prepared and organized into the `CovidDeaths` and `CovidVaccination` tables for SQL Server analysis.

WHO currently states that, unless specifically indicated otherwise, its datasets on data.who.int are provided under **Creative Commons Attribution 4.0 International (CC BY 4.0)**, with additional WHO terms and conditions. Some datasets may contain material credited to other providers; those components can have separate terms.

**Attribution:** World Health Organization (WHO), COVID-19 data, data.who.int.

The portfolio does not claim WHO endorsement, affiliation, or sponsorship. The SQL queries, transformations, documentation, and analysis created for this portfolio are the author's work based on the source data.

Source licensing information: https://data.who.int/about/data/terms-and-conditions

### National Housing Data

The source workbook retained in this repository is named **`Nashville Housing Data for Data Cleaning.xlsx`**. That filename is retained because it is the name of the source workbook used for the project.

For the SQL analysis, the imported table is named **`NationalHousing`**. The SQL cleaning script and queries consistently use `NationalHousing` as the SQL Server table name.

The repository does not claim ownership of the underlying housing source dataset. The source dataset's original provider and applicable reuse terms should be consulted before redistributing the underlying workbook outside this portfolio.

### Portfolio Work

The SQL scripts, README documentation, Excel analysis work, dashboard presentation, and other original portfolio materials created by the author should be distinguished from the third-party source datasets described above.

## Opening Excel Files on GitHub

GitHub does not render `.xlsx` workbooks as an interactive spreadsheet in the repository page. Use the workbook link to download the file and open it in **Microsoft Excel** or another compatible spreadsheet application.

The dashboard image is included in the repository so visitors can preview the analysis directly from GitHub.

## Licensing Note

This repository does not grant a license to third-party datasets merely by including them here. Dataset rights remain subject to their respective source terms.

No separate open-source license is currently granted for the repository's original materials. Unless a license is added later, the author's original materials remain subject to applicable copyright law.

## Tools

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Microsoft Excel
- GitHub
