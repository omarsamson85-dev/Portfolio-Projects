# Airbnb Data Analysis — Tableau Dashboard

An interactive Tableau analysis of Airbnb listing, review, and calendar data, focused on pricing, property characteristics, geographic variation, and revenue trends.

## 📊 Dashboard Preview

**Browser preview:** the static dashboard image is not currently stored in this GitHub folder. The README previously referenced `Tableau_Airbnb_Dashboard.png`, but that file is absent from the repository. The workbook itself is present and can be downloaded for use in Tableau Desktop.

> GitHub does not render Tableau `.twb` files as interactive dashboards. A PNG export of the completed Tableau dashboard should be uploaded as `Tableau_Airbnb_Dashboard.png` to enable an immediate browser-based preview here.

## 🎯 Business Questions

1. How does Airbnb pricing vary by number of bedrooms?
2. Which ZIP codes have relatively higher or lower average listing prices?
3. How are Airbnb listings distributed geographically?
4. How does revenue change throughout the year?

## 🔎 Dashboard Views

The completed dashboard contains five main analytical views:

- **Average Price Per Bedroom** — compares average listing price across bedroom categories.
- **Listing Distribution by Bedroom Count** — shows the number of listings in each bedroom category.
- **Price Per ZIP Code** — provides a geographic view of average listing prices.
- **Price by ZIP Code** — ranks ZIP codes by average listing price.
- **Revenue For Year** — tracks the revenue trend across the calendar year.

## 💡 Key Observations

- **Bedroom count is associated with higher prices.** The six-bedroom category has the highest average price in the dashboard at approximately **$596.70**, while one-bedroom listings average approximately **$96.00**.
- **Smaller properties dominate the dataset.** The dashboard shows approximately **2,417 one-bedroom listings**, compared with 640 two-bedroom listings and 282 three-bedroom listings.
- **Location matters.** Average listing prices vary substantially across ZIP codes.
- **Revenue changes throughout the year.** The annual revenue trend begins around **$60M** and rises to just under **$100M** toward the end of the displayed year, with periods of decline and recovery.

These are descriptive observations from the dashboard and should not be interpreted as causal findings.

## 🗃️ Data Source

The underlying Airbnb dataset was sourced from **Kaggle**.

The working data model contains three related sheets:

- **Listings** — property/listing attributes and host information
- **Reviews** — guest review records
- **Calendar** — listing availability, dates, and prices

## 🧰 Tools & Skills

**Tools**
- Tableau
- Microsoft Excel
- Kaggle dataset

**Skills**
- Data preparation and consolidation
- Working with multiple related data tables
- Tableau data connection and analysis
- Aggregation and calculated measures
- Geographic visualization using ZIP codes
- Time-series analysis
- Comparative analysis
- Dashboard composition and visual storytelling

## 📁 Project Files

| File | Purpose |
|---|---|
| `AirBnB Full Project.twb` | Tableau workbook containing the analysis and dashboard |
| `Tableau_Airbnb_Dashboard.png` | Static dashboard preview — **to be uploaded** |
| `Tableau Full Project.xlsx` | Excel source workbook referenced by the Tableau project — **not currently present in this folder** |

**[Open the Tableau workbook](AirBnB%20Full%20Project.twb)**

### Why the workbook may not open directly in GitHub

GitHub is a source-code and file repository; it does not provide an interactive Tableau viewer. Clicking the `.twb` file may therefore result in GitHub's generic **“An unexpected error occurred”** viewer message. That does not necessarily mean the Tableau workbook is corrupt.

For the dashboard itself, use Tableau Desktop. For recruiters and browser visitors, the PNG dashboard preview is the preferred presentation format.

## 🔄 Reproducibility

The Tableau workbook contains a local Excel connection from the original development environment. When the workbook is opened on another computer, Tableau may require the Excel data source to be repointed to the appropriate copy of the source workbook.

The repository currently contains the `.twb` workbook but **does not contain the referenced `Tableau Full Project.xlsx` source workbook**, so full reproduction requires that source file separately.

## 📌 Attribution

The underlying Airbnb data was obtained from Kaggle. The project documentation, analysis, Tableau workbook, and dashboard design are the author's work; ownership and licensing of the underlying third-party data remain with the original provider(s). Anyone redistributing the source data should verify the applicable Kaggle dataset license and attribution requirements.

## 👤 Author

**Samson Omar**

GitHub: [@omarsamson85-dev](https://github.com/omarsamson85-dev)
