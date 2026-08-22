# Data Analytics Portfolio

A practical data analytics portfolio by **SAMSON OMAR**, focused on **SQL Server, Excel, data cleaning, exploratory analysis, and dashboard development**.

This repository is designed to give recruiters, hiring managers, and other visitors a quick view of hands-on analytics work, the techniques used, and the supporting project files.

## Portfolio Highlights

| Project | Focus | Tools |
|---|---|---|
| [COVID-19 Data Analysis](SQL_Projects/COVID-19/README.md) | Exploratory analysis of cases, deaths, population, and vaccination data | SQL Server |
| [National Housing Data Cleaning](SQL_Projects/Nashville_Housing/README.md) | Data cleaning, standardization, deduplication, and preparation for analysis | SQL Server |
| [Bike Buyers Analysis](Excel_Bike_Buyers/README.md) | Data preparation, pivot-table analysis, visualization, and dashboarding | Microsoft Excel |
| [Airbnb Data Analysis — Tableau](Tableau_Projects/Airbnb-Analysis/README.md) | Pricing, bedroom distribution, ZIP-code analysis, and revenue trends | Tableau, Excel |

## What This Portfolio Demonstrates

- Data cleaning and preparation
- Exploratory data analysis (EDA)
- SQL querying and analytical transformations
- JOINs, aggregations, CTEs, window functions, and temporary tables
- Excel formulas and pivot tables
- Tableau data preparation and dashboard development
- Geographic and time-series visualization
- Communicating findings through clear project documentation

## Project Navigation

### 1. SQL Projects

The SQL portfolio demonstrates practical work with **Microsoft SQL Server / SQL Server Management Studio (SSMS)**.

**COVID-19 Data Analysis**

- [Project overview](SQL_Projects/COVID-19/README.md)
- [SQL analysis script](SQL_Projects/COVID-19_Data_Analysis.sql)
- [COVID-19 deaths dataset](SQL_Projects/COVID-19/CovidDeaths.xlsx)
- [COVID-19 vaccination dataset](SQL_Projects/COVID-19/CovidVacination.xlsx)

Key techniques include data exploration, aggregations, JOINs, window functions, CTEs, temporary tables, views, and calculated metrics.

**National Housing Data Cleaning**

- [Project overview](SQL_Projects/Nashville_Housing/README.md)
- [SQL cleaning script](SQL_Projects/Nashville_Housing_Data_Cleaning.sql)
- [Source housing workbook](SQL_Projects/Nashville_Housing/Nashville%20Housing%20Data%20for%20Data%20Cleaning.xlsx)

Key techniques include address standardization, missing-value handling, string manipulation, duplicate detection/removal, `CASE`, `COALESCE`, JOINs, CTEs, and `ROW_NUMBER()`.

### 2. Bike Buyers Analysis — Advanced Excel

This project uses Microsoft Excel for data preparation, formula-based analysis, pivot tables, visualization, and dashboard development.

- [Project overview](Excel_Bike_Buyers/README.md)
- [Excel workbook](Excel_Bike_Buyers/Advanced_Excel_Bike_Sales_Analysis.Xlsx)
- [Dashboard preview](Excel_Bike_Buyers/dashboard.png)

![Bike Buyers Dashboard](Excel_Bike_Buyers/dashboard.png)

### 3. Airbnb Data Analysis — Tableau

This project uses Tableau to analyze Airbnb listing, review, and calendar data. The dashboard examines pricing by bedroom count, listing distribution, ZIP-code price variation, geographic patterns, and revenue trends.

- [Project overview](Tableau_Projects/Airbnb-Analysis/README.md)
- [Tableau project folder](Tableau_Projects/Airbnb-Analysis/)

## How to Review the Projects

**For recruiters and hiring managers:** Start with the project overviews above, then open the SQL scripts, Excel workbooks, or Tableau project files to inspect the implementation.

**For SQL review:** Open the `.sql` files in SQL Server Management Studio or another SQL Server-compatible editor. The scripts expect the datasets to be available in SQL Server tables as documented in each project.

**For Excel review:** GitHub does not provide an interactive spreadsheet experience for `.xlsx` files. Download the workbook and open it in Microsoft Excel or another compatible spreadsheet application. Dashboard images are included where available for immediate browser-based previews.

**For Tableau review:** Open the project README first for the dashboard preview, analytical questions, key observations, tools, and reproducibility notes. The Tableau workbook can then be opened in Tableau Desktop.

## Data Sources & Attribution

### COVID-19 Data

The COVID-19 analysis uses COVID-19 data obtained from the **World Health Organization (WHO)** and prepared for SQL Server analysis.

WHO currently states that, unless specifically indicated otherwise, datasets on data.who.int are provided under **Creative Commons Attribution 4.0 International (CC BY 4.0)** with additional WHO terms and conditions. Some datasets may contain material credited to other providers and those components can have separate terms.

**Attribution:** World Health Organization (WHO), COVID-19 data, data.who.int.

The portfolio does not claim WHO endorsement, affiliation, or sponsorship.

Source licensing information: https://data.who.int/about/data/terms-and-conditions

### National Housing Data

The retained source workbook is named **`Nashville Housing Data for Data Cleaning.xlsx`** because that is the filename of the source workbook used for the project. After import into SQL Server, the working table is named **`NationalHousing`**.

The repository does not claim ownership of the underlying third-party housing dataset. The SQL cleaning work, transformations, documentation, and analysis are the portfolio author's work. Anyone redistributing the underlying workbook should verify the original provider's licensing and attribution requirements first.

### Bike Buyers Data

The `bike_buyers` worksheet contains the source dataset used as the starting point for the Excel analysis. The original provider/license for this particular copy is not recorded in the repository metadata.

The portfolio does not claim ownership of the underlying source dataset. The workbook preparation, analysis, pivot-table work, dashboard, and documentation are the portfolio author's work.

### Airbnb Data

The Airbnb data used in the Tableau project was obtained from Kaggle. The repository does not claim ownership of the underlying third-party dataset. Anyone redistributing the source data should verify the applicable Kaggle dataset license and attribution requirements.

## Original Portfolio Work

The SQL scripts, analysis documentation, Excel workbook work, Tableau analysis, dashboard presentation, and other original materials created for this portfolio should be distinguished from the third-party source datasets described above.

No separate open-source license is currently granted for the repository's original materials. Unless a license is added later, those original materials remain subject to applicable copyright law.

## Tools

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Microsoft Excel
- Tableau
- GitHub
