# Airbnb Data Analysis — Tableau + Streamlit

An interactive analysis of Airbnb listing, review and calendar data focused on **pricing, property characteristics, geographic variation, availability and revenue trends**.

## 📊 Dashboard Preview

![Airbnb Tableau Dashboard](Tableu_AirBnB_Dashboard.PNG)

The image is a static export of the completed Tableau dashboard for quick viewing on GitHub. The Tableau workbook is included for further inspection in Tableau Desktop.

> **Live app note:** A Streamlit deployment is maintained separately from the repository. The source code is included in `app.py`, but the README does not present an unverified deployment URL as a guaranteed live service.

## 🎯 Business Questions

1. How does Airbnb pricing vary by bedroom count and room type?
2. Which ZIP codes have relatively higher or lower average listing prices?
3. How are listings distributed geographically?
4. How does availability and revenue change throughout the year?
5. How do property characteristics relate to nightly price?

## 🔎 Dashboard Views

- **Average Price Per Bedroom** — compares average listing price across bedroom categories.
- **Listing Distribution by Bedroom Count** — shows the number of listings in each bedroom category.
- **Price Per ZIP Code** — provides a geographic view of average listing prices.
- **Price by ZIP Code** — ranks ZIP codes by average listing price.
- **Revenue For Year** — tracks the revenue trend across the calendar year.

## 💡 Key Observations

The current Tableau dashboard shows several descriptive patterns:

- **Bedroom count is associated with higher prices in the displayed analysis.** The six-bedroom category has the highest average price at approximately **$596.70**, while one-bedroom listings average approximately **$96.00**.
- **Smaller properties dominate the displayed listing mix.** The dashboard shows approximately **2,417 one-bedroom listings**, compared with 640 two-bedroom listings and 282 three-bedroom listings.
- **Location matters.** Average listing prices vary substantially across ZIP codes.
- **Revenue changes throughout the year.** The annual revenue trend begins around **$60M** and rises to just under **$100M** toward the end of the displayed year, with periods of decline and recovery.

These are descriptive observations from the dashboard and should not be interpreted as causal findings. The revenue metric should also be interpreted in the context of the workbook's calculation methodology rather than as verified Airbnb company revenue.

## 🗃️ Canonical Data Source

The project uses the public Kaggle dataset:

**[Airbnb Listings 2016 Dataset — Kaggle](https://www.kaggle.com/datasets/alexanderfreberg/airbnb-listings-2016-dataset)**

The repository's Tableau documentation, Streamlit application and Kaggle workflow now reference this same dataset to keep the project reproducible and internally consistent.

The dataset contains Airbnb public-listing information from 2016. The portfolio does not claim ownership of the underlying third-party data or imply affiliation with Airbnb or Kaggle. Verify the current Kaggle license and attribution requirements before redistributing the data.

The working data model contains three related tables/sheets:

- **Listings** — property/listing attributes and host information
- **Reviews** — guest review records
- **Calendar** — listing availability, dates and prices

## 🧰 Tools & Skills

**Tools**
- Tableau
- Python
- Streamlit
- pandas
- Plotly
- Kaggle

**Skills**
- Data preparation and consolidation
- Working with multiple related data tables
- Tableau data connection and analysis
- Aggregation and calculated measures
- Geographic visualization using ZIP codes
- Time-series analysis
- Comparative analysis
- Dashboard composition and visual storytelling
- Interactive web dashboard development

## 📁 Project Files

| File | Purpose |
|---|---|
| `AirBnB Full Project.twb` | Tableau workbook containing the analysis and dashboard |
| `Tableu_AirBnB_Dashboard.PNG` | Static dashboard preview |

**[Download the Tableau workbook](AirBnB%20Full%20Project.twb)**

## 🔄 Reproducibility

### Tableau

The Tableau workbook contains a local Excel connection from the original development environment. When opened on another computer, Tableau may require the Excel data source to be repointed to the appropriate source workbook.

The repository contains the Tableau workbook and dashboard preview image. The original Excel source workbook is not included in this project folder, so reproducing the exact Tableau workbook may require downloading the Kaggle source dataset and preparing the Excel source expected by the workbook.

### Streamlit

The Streamlit source uses the same public Kaggle dataset referenced above. Install the repository requirements and run:

```bash
streamlit run app.py
```

The application does not require a private Kaggle API token in the repository or Streamlit Secrets. `kagglehub` retrieves the public dataset at runtime.

## 📌 Attribution

The underlying Airbnb data was obtained from the public Kaggle dataset linked above. This portfolio does not claim ownership of the underlying third-party data. The project documentation, analysis, Tableau workbook, dashboard design and Streamlit presentation are the author's work; ownership and licensing of the underlying data remain subject to the original source and its applicable terms.

## 👤 Author

**Samson Omar**

GitHub: [@omarsamson85-dev](https://github.com/omarsamson85-dev)
