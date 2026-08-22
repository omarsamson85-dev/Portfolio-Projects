# Data Analytics Portfolio

**Samson Omar** · Data Analyst | SQL Server · Excel · Tableau

A practical portfolio of data analytics projects focused on **data cleaning, exploratory analysis, SQL, Excel reporting, and Tableau dashboard development**. Each project is documented with its business questions, methods, tools, and supporting files.

> **Portfolio goal:** turn raw data into clear, decision-ready insights through reproducible analysis and effective visual communication.

---

## Featured Projects

| Project | What it demonstrates | Tools |
|---|---|---|
| **[COVID-19 Data Analysis](SQL_Projects/COVID-19/README.md)** | Global cases, deaths, infection rates, vaccination progress, CTEs, joins and window functions | SQL Server |
| **[National Housing Data Cleaning](SQL_Projects/Nashville_Housing/README.md)** | Data cleaning, standardization, missing-value handling, deduplication and transformation | SQL Server |
| **[Bike Buyers Analysis](Excel_Bike_Buyers/README.md)** | Data preparation, formulas, pivot tables, visualization and dashboard development | Excel |
| **[Airbnb Data Analysis — Tableau](Tableau_Projects/Airbnb-Analysis/README.md)** | Pricing, bedroom distribution, ZIP-code analysis and revenue trends | Tableau · Excel |

---

## 📊 Dashboard Previews

### Bike Buyers — Excel Dashboard

![Bike Buyers Dashboard](Excel_Bike_Buyers/dashboard.png)

[Open the Bike Buyers project →](Excel_Bike_Buyers/README.md)

### Airbnb — Tableau Dashboard

![Airbnb Tableau Dashboard](Tableau_Projects/Airbnb-Analysis/Tableu_AirBnB_Dashboard.PNG)

[Open the Airbnb Tableau project →](Tableau_Projects/Airbnb-Analysis/README.md)

---

## 🧰 Skills Demonstrated

### Data Analysis
- Exploratory data analysis (EDA)
- Data cleaning and preparation
- Descriptive and comparative analysis
- Geographic and time-series analysis
- Business-focused insight generation

### SQL Server
- Filtering and aggregation
- JOINs
- CTEs
- Window functions
- Temporary tables
- Calculated metrics
- Data transformation

### Excel
- Data preparation
- Excel formulas
- Pivot tables
- Pivot-based visualizations
- Interactive dashboard development

### Tableau
- Data connection and preparation
- Calculated measures
- Geographic visualization
- Time-series analysis
- Dashboard composition and visual storytelling

---

## 📁 Repository Structure

```text
Portfolio-Projects/
├── SQL_Projects/
│   ├── COVID-19/
│   ├── COVID-19_Data_Analysis.sql
│   ├── Nashville_Housing/
│   └── Nashville_Housing_Data_Cleaning.sql
│
├── Excel_Bike_Buyers/
│   ├── README.md
│   ├── Advanced_Excel_Bike_Sales_Analysis.Xlsx
│   └── dashboard.png
│
├── Tableau_Projects/
│   └── Airbnb-Analysis/
│       ├── README.md
│       ├── AirBnB Full Project.twb
│       └── Tableu_AirBnB_Dashboard.PNG
│
└── README.md
```

---

## 🔎 Project Guide

### 1. COVID-19 Data Analysis

A SQL Server project exploring cases, deaths, population infection rates, global statistics, and vaccination progress.

- [Project overview](SQL_Projects/COVID-19/README.md)
- [SQL analysis script](SQL_Projects/COVID-19_Data_Analysis.sql)
- [COVID-19 deaths dataset](SQL_Projects/COVID-19/CovidDeaths.xlsx)
- [COVID-19 vaccination dataset](SQL_Projects/COVID-19/CovidVacination.xlsx)

**Key techniques:** JOINs, CTEs, window functions, temporary tables, aggregations, calculated metrics, and exploratory analysis.

### 2. National Housing Data Cleaning

A SQL Server project focused on preparing a housing dataset for analysis through systematic cleaning and transformation.

- [Project overview](SQL_Projects/Nashville_Housing/README.md)
- [SQL cleaning script](Nashville_Housing_Data_Cleaning.sql)
- [Source housing workbook](SQL_Projects/Nashville_Housing/Nashville%20Housing%20Data%20for%20Data%20Cleaning.xlsx)

**Key techniques:** address standardization, missing-value handling, string manipulation, `CASE`, `COALESCE`, JOINs, CTEs, and `ROW_NUMBER()`.

### 3. Bike Buyers Analysis — Advanced Excel

An Excel analysis covering data preparation, formulas, pivot tables, visualization, and dashboard development.

- [Project overview](Excel_Bike_Buyers/README.md)
- [Excel workbook](Excel_Bike_Buyers/Advanced_Excel_Bike_Sales_Analysis.Xlsx)
- [Dashboard image](Excel_Bike_Buyers/dashboard.png)

**Note:** GitHub does not provide an interactive Excel spreadsheet experience. Download the workbook to inspect the formulas, pivot tables, and interactive dashboard.

### 4. Airbnb Data Analysis — Tableau

An interactive Tableau analysis examining pricing, bedroom distribution, ZIP-code variation, geographic patterns, and revenue trends.

- [Project overview](Tableau_Projects/Airbnb-Analysis/README.md)
- [Tableau workbook](Tableau_Projects/Airbnb-Analysis/AirBnB%20Full%20Project.twb)
- [Dashboard preview](Tableau_Projects/Airbnb-Analysis/Tableu_AirBnB_Dashboard.PNG)

**Important:** GitHub does not render Tableau `.twb` files as interactive dashboards. The repository provides the workbook for download and the dashboard PNG for browser viewing.

---

## 📌 Reproducibility Notes

- **SQL projects:** Open the `.sql` files in SQL Server Management Studio or another SQL Server-compatible environment. The project READMEs document the expected tables and datasets.
- **Excel project:** Download the workbook and open it in Microsoft Excel or another compatible spreadsheet application.
- **Tableau project:** Open the `.twb` file in Tableau Desktop. The workbook was originally created with a local Excel connection, so Tableau may require the data source to be repointed to the appropriate source workbook.

---

## 🗂️ Data Sources & Attribution

### COVID-19

The COVID-19 project uses WHO COVID-19 data prepared for SQL Server analysis. The portfolio does not claim WHO endorsement, affiliation, or sponsorship.

Official source: https://data.who.int/

### National Housing

The housing workbook is a third-party source dataset. The portfolio does not claim ownership of the underlying dataset. Users redistributing the source workbook should verify its original provider and licensing requirements.

### Bike Buyers

The `bike_buyers` worksheet contains the source dataset used for the Excel analysis. The original provider/license for this copy is not recorded in the repository metadata. The portfolio does not claim ownership of the underlying source dataset.

### Airbnb

The Airbnb dataset was obtained from Kaggle. The portfolio does not claim ownership of the underlying third-party data. Users redistributing the source data should verify the applicable Kaggle license and attribution requirements.

---

## 👤 About

**Samson Omar**

Data analytics portfolio focused on practical SQL, Excel, data preparation, exploratory analysis, and dashboard development.

- GitHub: [@omarsamson85-dev](https://github.com/omarsamson85-dev)

---

## ⭐ How to Review This Portfolio

If you are a recruiter or hiring manager, a useful path is:

1. Start with the **dashboard previews** above.
2. Open the relevant **project README** for the business questions and findings.
3. Inspect the SQL scripts or Excel/Tableau project files to see the implementation.
4. Review the reproducibility notes where applicable.

The emphasis throughout the portfolio is on **clean analysis, transparent methodology, and communicating results clearly**.
