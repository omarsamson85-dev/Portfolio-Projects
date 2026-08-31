# Data Professional Survey Analysis — Power BI

## 📌 Business Problem

Data professionals work across different roles, locations, experience levels and compensation ranges. This project turns survey responses into an interactive Power BI report for exploring workforce composition, compensation, programming preferences and job satisfaction.

## 🎯 Analytical Questions

- Who participated in the survey and which professional roles are represented?
- How does reported compensation vary across relevant groups?
- Which programming languages are most preferred?
- How satisfied are respondents with their work?
- How do responses differ by location and professional characteristics?

## 🔧 End-to-End Workflow

**Source data → Power Query transformation → data model → DAX measures → KPIs → interactive dashboard → insights**

### Data Preparation

Power Query is used to import, clean and transform the Excel source data before it enters the analytical model.

### Data Model

The Power BI model structures the survey-response fields needed for consistent filtering and aggregation across professional, compensation, preference and satisfaction analyses.

### DAX & Measures

The report demonstrates reusable measures for:

- Total survey responses
- Compensation metrics
- Counts by professional category
- Percentage-based analysis
- Comparative metrics across survey dimensions
- KPI-style summary values

Open the `.pbix` file in Power BI Desktop to inspect the exact expressions, relationships and model configuration.

## 🖥️ Dashboard Preview

![Data Professional Survey Dashboard](POWER_BI_DASHBOARD.PNG)

The dashboard provides interactive filtering across job roles, compensation, programming preferences, satisfaction and relevant demographic/location dimensions.

## 🔎 Key Insights

The report is designed to answer the analytical questions above through interactive filters. Numerical findings are intentionally not hard-coded into this README because the report can be filtered interactively and the repository does not contain a separate validated findings table.

For a recruiter or technical reviewer, the strongest evidence is the combination of the dashboard preview, `.pbix` model, Power Query transformations, DAX measures and source workbook.

## 💡 Business Value

This project demonstrates a common business-intelligence workflow: converting raw survey responses into a structured reporting model that stakeholders can use to compare groups, identify workforce patterns and support discussion and decision-making.

## 📋 Dataset & Attribution

The project uses the **Data Professional Survey** dataset associated with **Alex The Analyst**.

The Excel workbook included in this repository is the source file used with the Power BI report. The analytical work, Power BI model, transformations, measures, dashboard design and presentation in this repository represent the portfolio project built from the survey data.

**Attribution:** Alex The Analyst — Data Professional Survey dataset/source used for the project.

> The portfolio does not claim ownership of the original survey responses or source dataset. Users redistributing the source data should verify the original source, permissions and applicable terms.

## 📁 Project Files

- [Power BI report](Data_Professional_Survey_Analysis.pbix)
- [Source survey dataset](Power%20BI%20-%20Final%20Project.xlsx)
- [Dashboard preview](POWER_BI_DASHBOARD.PNG)

> GitHub does not provide an interactive Power BI report experience. Download the `.pbix` file and open it in Power BI Desktop to explore the report, data model, Power Query transformations and DAX measures.

## 🔄 Reproducibility

1. Download the Power BI `.pbix` file.
2. Download the accompanying Excel source dataset.
3. Open the `.pbix` file using Power BI Desktop.
4. If Power BI prompts for a source path, update it to the location of the downloaded Excel workbook.
5. Refresh the data if necessary.
6. Explore the report pages, filters, data model and DAX measures.

## ⚠️ Limitations

- Survey responses are self-reported and should not be interpreted as representative of the entire data-professional workforce without considering sampling limitations.
- Reported compensation should be interpreted as survey data rather than verified payroll information.
- Interactive dashboard values can change when filters are applied.

## 🎯 Skills Demonstrated

Power BI · Power Query / ETL · Data Cleaning · Data Modeling · DAX · KPI Development · Survey Analysis · Interactive Visualization · Business Intelligence Reporting · Visual Storytelling
