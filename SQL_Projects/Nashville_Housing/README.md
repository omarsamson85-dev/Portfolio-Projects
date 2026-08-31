# National Housing Data Cleaning — SQL Server

## 📌 Business Problem

Raw housing datasets often contain inconsistent dates, incomplete addresses, duplicated records and non-standard categorical values. This project demonstrates a repeatable SQL Server workflow for converting the retained housing workbook into a cleaner analytical table.

## 🎯 Data-Quality Questions

- Which fields require standardization before analysis?
- How can missing property addresses be populated from related records?
- How can combined address fields be split into analytical columns?
- Which records are duplicates?
- Which categorical values need normalization?

## 🔧 Approach

The working SQL table is `NationalHousing`. The cleaning workflow covers:

1. Standardizing sale dates.
2. Populating missing property addresses.
3. Splitting property and owner addresses into separate fields.
4. Standardizing `Sold As Vacant` values.
5. Handling selected missing values.
6. Detecting duplicates with `ROW_NUMBER()`.
7. Removing duplicate records.
8. Removing redundant columns.

## 🧰 SQL Techniques

- SELECT and filtering
- UPDATE and ALTER TABLE
- JOINs
- CASE statements
- COALESCE
- String functions
- CTEs
- ROW_NUMBER()
- Duplicate detection and removal
- Data transformation and standardization

## 📈 Data-Quality Evidence

The SQL script contains the transformations used to improve the retained source table. Because the repository does not contain a separate before/after profiling report, this README intentionally avoids inventing row counts or quality percentages.

For a technical review, inspect the duplicate-detection query, address-population JOIN, categorical standardization and final column-removal steps.

## 🗃️ Source & Attribution

The Excel workbook is a third-party source dataset used as the starting point for this data-cleaning project. The exact original provider/license for the retained copy has not been established from the repository records.

This repository does not claim ownership of the underlying source dataset. The SQL cleaning queries, transformations, documentation and analysis presented here are the portfolio author's work.

Anyone redistributing the source workbook should verify the original provider and applicable licensing/attribution requirements first.

## 📁 Project Files

| File | Purpose |
|---|---|
| [Source housing dataset](Nashville%20Housing%20Data%20for%20Data%20Cleaning.xlsx) | Original workbook used as the source |
| [SQL cleaning script](../Nashville_Housing_Data_Cleaning.sql) | SQL Server cleaning and transformation queries |

## 🔄 Reproducibility

Open the SQL script in **SQL Server Management Studio (SSMS)** or another SQL Server-compatible environment. Import the source workbook into SQL Server and create the expected `NationalHousing` table before running the workflow.

> GitHub may not preview the Excel file as an interactive spreadsheet. Download it and open it with Microsoft Excel or another compatible application.

## 🎯 Skills Demonstrated

SQL Server · Data Cleaning · Data Quality · Data Transformation · JOINs · CTEs · String Functions · Duplicate Handling · Data Preparation
