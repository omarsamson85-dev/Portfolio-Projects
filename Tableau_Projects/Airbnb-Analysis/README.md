# Airbnb Data Analysis — Tableau Dashboard

## Project Overview

This project is an interactive Tableau analysis of Airbnb listing, review, and calendar data. The objective is to examine pricing patterns, listing characteristics, geographic price variation, and revenue trends through an interactive dashboard.

## Data Source

The underlying Airbnb dataset was sourced from **Kaggle**.

For the Tableau project, the working Excel workbook contains three sheets:

- **Listings** — property/listing attributes and host-related information
- **Reviews** — guest review records linked to listings
- **Calendar** — listing availability, dates, and prices

These data tables were consolidated into the Excel workbook used as the Tableau data source.

## Dashboard Preview

![Airbnb Tableau Dashboard](Tableau_Airbnb_Dashboard.png)

The dashboard contains five main analytical views:

- **Average Price Per Bedroom** — compares average listing price across bedroom categories.
- **Listing Distribution by Bedroom Count** — shows the number of listings in each bedroom category.
- **Price Per ZIP Code** — provides a geographic view of average listing prices.
- **Price by ZIP Code** — ranks ZIP codes by average listing price.
- **Revenue For Year** — tracks the revenue trend across the calendar year.

## Key Observations

The completed dashboard highlights several patterns:

- **Bedroom count is strongly associated with price.** Average price increases substantially as the number of bedrooms rises. The six-bedroom category has the highest average price in the dashboard at approximately **$596.70**, while one-bedroom listings average approximately **$96.00**.
- **The dataset is concentrated in smaller properties.** The dashboard shows approximately **2,417 one-bedroom listings**, compared with 640 two-bedroom listings and 282 three-bedroom listings.
- **Location matters.** Average prices vary across ZIP codes, with the dashboard showing clear geographic differences in listing prices.
- **Revenue changes over time.** The annual revenue line begins around **$60M** and rises to just under **$100M** toward the end of the displayed year, with periods of decline and recovery along the way.

These observations are descriptive findings from the dashboard and are not intended to establish causal relationships.

## Business Questions

1. How does Airbnb pricing vary by number of bedrooms?
2. Which ZIP codes have relatively higher or lower average listing prices?
3. How are Airbnb listings distributed geographically?
4. How does revenue change throughout the year?

## Tools & Skills Demonstrated

### Tools

- Tableau
- Microsoft Excel
- Kaggle dataset

### Skills

- Data preparation and consolidation
- Working with multiple related data tables
- Tableau data connection and analysis
- Aggregation and calculated measures
- Geographic visualization using ZIP codes
- Time-series analysis
- Comparative analysis
- Dashboard composition and visual storytelling

## Project Files

| File | Description |
|---|---|
| `AirBnB_Full_Project.twb` | Tableau workbook containing the analysis and dashboard |
| `Tableau Full Project.xlsx` | Combined Excel working dataset used by the Tableau project |
| `Tableau_Airbnb_Dashboard.png` | Static preview of the completed dashboard |

## Reproducibility

The Tableau workbook was originally developed using a local Excel file path on the author's computer. When opening the workbook on another computer, Tableau may require the Excel data connection to be repointed to the repository copy of `Tableau Full Project.xlsx`.

The Excel workbook is retained as the project's working data source so the data structure used for the analysis can be inspected and reproduced.

## Data Attribution

The underlying Airbnb data was obtained from Kaggle. The project documentation and Tableau analysis are the author's work; ownership and licensing of the underlying third-party dataset remain with the original data provider(s). Users redistributing the source data should verify the applicable Kaggle dataset license and attribution requirements.

## Author

**Samson Omar**

GitHub: [@omarsamson85-dev](https://github.com/omarsamson85-dev)
