# Data Professional Survey Analysis — Power BI

## 📊 Project Overview

This Power BI project analyzes responses from a **data professional workplace survey** and turns the survey data into an interactive business intelligence dashboard.

The project demonstrates an end-to-end analytics workflow: preparing survey data in Excel/Power Query, building a Power BI model, creating DAX-based measures and KPIs, and presenting the results through interactive visualizations.

### Business Problem

Data professionals work across different roles, industries, locations, experience levels, and compensation ranges. A survey of data professionals can be used to understand the composition of the field, compensation patterns, job satisfaction, preferred programming languages, and other characteristics of the profession.

The dashboard provides a consolidated view of these survey responses so users can explore the workforce data through interactive filters and visual analysis.

### Objectives

- Prepare and transform the survey data for analysis.
- Build a structured Power BI data model.
- Develop calculated metrics and KPIs using DAX.
- Analyze the characteristics and preferences of data professionals.
- Compare responses across relevant categories and demographic/job characteristics.
- Present the results through an accessible and interactive dashboard.

---

## 🖥️ Dashboard Preview

![Data Professional Survey Dashboard](POWER_BI_DASHBOARD.PNG)

The dashboard provides an interactive summary of the survey responses and allows users to explore patterns across the data-professional workforce.

---

## 🧰 Tools & Technologies

- **Power BI Desktop** — dashboard development and reporting
- **Power Query** — data cleaning and transformation
- **DAX** — calculated measures and analytical metrics
- **Data Modeling** — structuring survey data for analysis
- **Microsoft Excel** — source dataset

---

## 📋 Dataset & Attribution

The project uses the **Data Professional Survey** dataset associated with **Alex The Analyst** and used as the source data for this analysis/project.

The Excel workbook included in this repository is provided as the source file used with the Power BI report. The analytical work, Power BI model, transformations, measures, dashboard design, and presentation in this repository represent the portfolio project built from the survey data.

**Attribution:** Alex The Analyst — Data Professional Survey dataset/source used for the project.

> **Data ownership note:** The portfolio does not claim ownership of the original survey responses or source dataset. Users redistributing the source data should verify the original source, permissions, and applicable terms.

---

## 🔄 Data Preparation

The survey data is prepared before being used in the Power BI report. The workflow includes:

- Importing the Excel survey dataset
- Reviewing the structure and fields
- Standardizing fields required for analysis
- Cleaning and transforming survey responses
- Preparing categorical fields for reporting
- Handling values that require transformation for clearer visualization
- Loading the prepared data into the Power BI model

Power Query provides the transformation layer between the source workbook and the analytical model.

---

## 🧩 Data Model

The Power BI model provides the analytical foundation for the survey dashboard and supports consistent filtering and aggregation across the report.

The model is designed around the survey-response data and the fields required to analyze professional characteristics, preferences, compensation, satisfaction, and related survey dimensions.

### Analytical Areas

| Area | Purpose |
|---|---|
| Job / professional characteristics | Understand the roles represented in the survey |
| Compensation | Compare reported salary information |
| Programming preferences | Examine programming languages and preferences |
| Job satisfaction | Explore satisfaction-related responses |
| Demographic / location fields | Compare responses across relevant groups |

---

## 📐 DAX & Measures

DAX is used to create reusable calculations and KPIs for the dashboard.

The report demonstrates measures for areas such as:

- Total survey responses
- Average or aggregated compensation metrics
- Counts by professional category
- Percentage-based analysis
- Comparative metrics across survey dimensions
- KPI-style summary values

> **Note:** The `.pbix` file contains the complete DAX implementation. Open the report in Power BI Desktop to inspect the exact measures, expressions, relationships, and model configuration.

---

## 📈 Dashboard Features

The dashboard provides interactive analysis of the survey data through:

- KPI cards for headline metrics
- Interactive charts and visualizations
- Slicers and filters
- Job-role analysis
- Compensation analysis
- Programming-language analysis
- Job-satisfaction analysis
- Geographic and demographic comparisons where applicable
- Cross-filtering between visuals

---

## 🔎 Key Insights

The dashboard is designed to help users answer questions such as:

1. **Who participated in the survey?** — Explore the roles and professional characteristics represented in the dataset.
2. **How does compensation vary?** — Compare reported compensation across relevant professional groups.
3. **Which programming languages are most preferred?** — Examine programming-language preferences among respondents.
4. **How satisfied are data professionals with their work?** — Explore reported satisfaction levels.
5. **How do responses differ by location or professional characteristics?** — Use the interactive filters to investigate differences across relevant groups.

> **Portfolio note:** Numerical findings should be read directly from the dashboard because the underlying survey data can be filtered interactively.

---

## 💡 Business Value

Although this is a survey-based analytical project, the workflow reflects a common business intelligence use case: converting a large set of survey responses into a concise reporting tool that stakeholders can use to identify patterns, compare groups, and support discussion and decision-making.

The project demonstrates the ability to move from **raw survey data → transformation → data model → DAX → dashboard → insights**.

---

## 📁 Project Files

- [Power BI report](Data_Professional_Survey_Analysis.pbix)
- [Source survey dataset](Power%20BI%20-%20Final%20Project.xlsx)
- [Dashboard preview](POWER_BI_DASHBOARD.PNG)

> **Note:** GitHub does not provide an interactive Power BI report experience. Download the `.pbix` file and open it in Power BI Desktop to explore the report, data model, Power Query transformations, and DAX measures.

---

## 📌 Reproducibility Notes

To review the project:

1. Download the Power BI `.pbix` file.
2. Download the accompanying Excel source dataset.
3. Open the `.pbix` file using Power BI Desktop.
4. If Power BI prompts for a source path, update it to the location of the downloaded Excel workbook.
5. Refresh the data if necessary.
6. Explore the report pages, filters, data model, and DAX measures.

### Source

**Data Professional Survey — Alex The Analyst**

The Excel workbook in this repository is the source dataset used for the portfolio analysis. Please verify the original source and applicable terms before redistributing the dataset.

---

## 🎯 Skills Demonstrated

- Power BI dashboard development
- Power Query / ETL
- Data cleaning and transformation
- Data modeling
- DAX
- KPI development
- Survey data analysis
- Interactive data visualization
- Business intelligence reporting
- Analytical thinking
- Visual storytelling
- Translating survey data into decision-ready information
