# Airbnb Data Analysis — Tableau Dashboard

An interactive analysis of Airbnb listing, review, and calendar data focused on **pricing, property characteristics, geographic variation, and revenue trends**.

## 🚀 Live Interactive Dashboard

**[Open the live Streamlit dashboard →](https://seattle-airbnb-market-dashboard.streamlit.app/)**

The live dashboard provides a browser-based interactive experience for recruiters and visitors who do not have Tableau Desktop.

## 📊 Dashboard Preview

![Airbnb Tableau Dashboard](Tableu_AirBnB_Dashboard.PNG)

The image is a static export of the completed Tableau dashboard for quick viewing on GitHub. The Tableau workbook is included for further inspection in Tableau Desktop.

## 🎯 Business Questions

1. How does Airbnb pricing vary by number of bedrooms?
2. Which ZIP codes have relatively higher or lower average listing prices?
3. How are Airbnb listings distributed geographically?
4. How does revenue change throughout the year?

## 🔎 Dashboard Views

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

The underlying Airbnb dataset used in this project was obtained from **Kaggle**. The project documentation does not attribute the dataset specifically to any individual analyst or content creator.

**[Open the Kaggle dataset →](https://www.kaggle.com/datasets/alexanderfreberg/airbnb-listings-2016-dataset)**

**[View Samson Omar's Kaggle profile →](https://www.kaggle.com/samsonomar)**

The dataset is publicly accessible on Kaggle and contains 2016 Airbnb public listings data. The link above is retained as the dataset reference used for this project; its current Kaggle publisher information is not being presented as the source of the analysis or as an endorsement of this project.

The working data model contains three related sheets:

- **Listings** — property/listing attributes and host information
- **Reviews** — guest review records
- **Calendar** — listing availability, dates, and prices

## 🧰 Tools & Skills

**Tools**
- Tableau
- Microsoft Excel
- Kaggle dataset
- Streamlit

**Skills**
- Data preparation and consolidation
- Working with multiple related data tables
- Tableau data connection and analysis
- Aggregation and calculated measures
- Geographic visualization using ZIP codes
- Time-series analysis
- Comparative analysis
- Dashboard composition and visual storytelling
- Interactive web dashboard deployment

## 📁 Project Files

| File | Purpose |
|---|---|
| `AirBnB Full Project.twb` | Tableau workbook containing the analysis and dashboard |
| `Tableu_AirBnB_Dashboard.PNG` | Static dashboard preview |

**[Download the Tableau workbook](AirBnB%20Full%20Project.twb)**

## 🔄 Reproducibility

The Tableau workbook contains a local Excel connection from the original development environment. When opened on another computer, Tableau may require the Excel data source to be repointed to the appropriate source workbook.

The repository contains the Tableau workbook and dashboard preview image. The original Excel source workbook is not included in this project folder, so full reproduction may require downloading the source dataset from Kaggle and preparing the Excel source expected by the workbook.

## 📌 Attribution

The underlying Airbnb data was obtained from the public Kaggle dataset linked above. This portfolio does not claim ownership of the underlying third-party data or attribute the dataset specifically to an individual analyst. The project documentation, analysis, Tableau workbook, dashboard design, and Streamlit presentation are the author's work; ownership and licensing of the underlying third-party data remain subject to the original source and its applicable terms. Anyone redistributing the source data should verify the applicable Kaggle dataset license and attribution requirements.

## 👤 Author

**Samson Omar**

GitHub: [@omarsamson85-dev](https://github.com/omarsamson85-dev)
