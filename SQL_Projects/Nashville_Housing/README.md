# National Housing Data Cleaning

## Project Overview

This project demonstrates the use of **Microsoft SQL Server** to clean and prepare housing data for analysis.

The original source workbook used for the project is named **`Nashville Housing Data for Data Cleaning.xlsx`**. The source filename is retained in the repository for traceability.

After import into SQL Server, the working table used throughout the cleaning queries is named **`NationalHousing`**. This is the table name used in the SQL script and project analysis.

## Data Cleaning Tasks

- Standardizing sale dates
- Populating missing property addresses
- Splitting property addresses into separate fields
- Splitting owner addresses into separate fields
- Standardizing `Sold As Vacant` values
- Handling selected missing values
- Identifying duplicate records
- Removing duplicate records
- Removing redundant columns

## SQL Techniques Demonstrated

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

## SQL Table

`NationalHousing`

## Project Files

- [Source Housing Dataset](Nashville%20Housing%20Data%20for%20Data%20Cleaning.xlsx)
- [National Housing Data Cleaning SQL](../Nashville_Housing_Data_Cleaning.sql)

## Source & Attribution

The Excel workbook is a third-party source dataset used as the starting point for this data-cleaning project. This repository does not claim ownership of the underlying source dataset.

The SQL cleaning queries, transformations, documentation, and analysis presented in this project are the portfolio author's work.

Because the exact original provider/license for the retained source workbook has not been established from the repository records, the source workbook should not be represented as an original dataset created by the portfolio author. Users who wish to redistribute the source workbook should verify the original provider's licensing and attribution requirements first.

> **Note:** The Excel dataset may not preview as an interactive spreadsheet directly in GitHub. Use the dataset link to download it and open it in Microsoft Excel or another compatible application.
