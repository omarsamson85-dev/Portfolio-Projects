# National Housing Data Cleaning — SQL Server

## 📊 Project Overview

This project demonstrates how **Microsoft SQL Server** can be used to clean, standardize, and prepare housing data for analysis.

The source workbook is **`Nashville Housing Data for Data Cleaning.xlsx`**. After import into SQL Server, the working table used in the cleaning queries is `NationalHousing`.

## 🎯 Data Cleaning Objectives

- Standardize sale dates
- Populate missing property addresses
- Split property addresses into separate fields
- Split owner addresses into separate fields
- Standardize `Sold As Vacant` values
- Handle selected missing values
- Identify and remove duplicate records
- Remove redundant columns

## 🧰 SQL Techniques Demonstrated

- SELECT and filtering
- UPDATE
- ALTER TABLE
- JOINs
- CASE statements
- COALESCE
- String functions
- Common Table Expressions (CTEs)
- ROW_NUMBER()
- Duplicate detection and removal
- Data transformation and standardization

## 🗃️ Working Table

`NationalHousing`

## 📁 Project Files

| File | Purpose |
|---|---|
| [Source Housing Dataset](Nashville%20Housing%20Data%20for%20Data%20Cleaning.xlsx) | Original workbook used as the source |
| [National Housing Data Cleaning SQL](../Nashville_Housing_Data_Cleaning.sql) | SQL Server cleaning and transformation queries |

## 🔄 Workflow

1. Import the source workbook into SQL Server.
2. Inspect the structure and data-quality issues.
3. Standardize and populate required fields.
4. Split combined address fields into usable columns.
5. Standardize categorical values.
6. Identify and remove duplicate records.
7. Remove columns that are no longer required.
8. Produce a cleaner dataset suitable for downstream analysis.

## 📌 Source & Attribution

The Excel workbook is a third-party source dataset used as the starting point for this data-cleaning project. This repository does not claim ownership of the underlying source dataset.

The SQL cleaning queries, transformations, documentation, and analysis presented here are the portfolio author's work.

Because the exact original provider/license for the retained source workbook has not been established from the repository records, anyone redistributing the source workbook should verify the original provider's licensing and attribution requirements first.

## 📌 Reproducibility

Open the SQL script in **SQL Server Management Studio (SSMS)** or another SQL Server-compatible environment. Download the source workbook and import it into SQL Server before running the cleaning workflow.

> **Note:** GitHub may not preview the Excel file as an interactive spreadsheet. Download it and open it with Microsoft Excel or another compatible application.

## 🎯 Skills Demonstrated

SQL Server · Data Cleaning · Data Quality · Data Transformation · JOINs · CTEs · String Functions · Duplicate Handling · Data Preparation
