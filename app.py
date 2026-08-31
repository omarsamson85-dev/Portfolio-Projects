from pathlib import Path

import kagglehub
import pandas as pd
import plotly.express as px
import streamlit as st

st.set_page_config(
    page_title="Seattle Airbnb Market Dashboard",
    page_icon="🏠",
    layout="wide",
)

st.title("🏠 Seattle Airbnb Market Dashboard")
st.caption("Pricing, availability, property characteristics and guest reviews")

DATASET = "alexanderfreberg/airbnb-listings-2016-dataset"


@st.cache_data(show_spinner="Downloading the public Airbnb dataset…")
def load_data():
    dataset_path = Path(kagglehub.dataset_download(DATASET))

    def find_file(*names):
        for name in names:
            matches = list(dataset_path.rglob(name))
            if matches:
                return matches[0]
        raise FileNotFoundError(
            f"Could not find any of {', '.join(names)} in the Kaggle dataset."
        )

    listings = pd.read_csv(find_file("listings.csv"))
    calendar = pd.read_csv(find_file("calendar.csv"))
    reviews = pd.read_csv(find_file("reviews.csv"))

    for frame in (listings, calendar):
        if "price" in frame.columns:
            frame["price"] = pd.to_numeric(
                frame["price"]
                .astype(str)
                .str.replace("$", "", regex=False)
                .str.replace(",", "", regex=False),
                errors="coerce",
            )

    if "date" in calendar.columns:
        calendar["date"] = pd.to_datetime(calendar["date"], errors="coerce")
    if "date" in reviews.columns:
        reviews["date"] = pd.to_datetime(reviews["date"], errors="coerce")

    return listings, calendar, reviews


try:
    listings, calendar, reviews = load_data()
except Exception as exc:
    st.error("The public Kaggle dataset could not be loaded.")
    st.caption(
        "Dataset source: Kaggle — alexanderfreberg/airbnb-listings-2016-dataset"
    )
    st.exception(exc)
    st.stop()

st.sidebar.header("Dashboard Filters")
neighbourhood_col = (
    "neighbourhood_cleansed"
    if "neighbourhood_cleansed" in listings.columns
    else "neighbourhood"
)

neighbourhoods = sorted(listings[neighbourhood_col].dropna().unique())
selected_neighbourhood = st.sidebar.multiselect("Neighbourhood", neighbourhoods)
room_types = sorted(listings["room_type"].dropna().unique())
selected_room_type = st.sidebar.multiselect("Room Type", room_types)

filtered = listings.copy()
if selected_neighbourhood:
    filtered = filtered[
        filtered[neighbourhood_col].isin(selected_neighbourhood)
    ]
if selected_room_type:
    filtered = filtered[filtered["room_type"].isin(selected_room_type)]

col1, col2, col3, col4 = st.columns(4)
col1.metric("Listings", f"{len(filtered):,}")
col2.metric("Average Nightly Price", f"${filtered['price'].mean():,.0f}")

if "review_scores_rating" in filtered.columns:
    col3.metric("Average Rating", f"{filtered['review_scores_rating'].mean():.1f}")
else:
    col3.metric("Average Rating", "N/A")

col4.metric("Average Reviews", f"{filtered['number_of_reviews'].mean():.1f}")
st.divider()

st.header("💰 Pricing Analysis")
price_by_room = (
    filtered.groupby("room_type", as_index=False)["price"]
    .mean()
    .sort_values("price", ascending=False)
)
st.plotly_chart(
    px.bar(
        price_by_room,
        x="room_type",
        y="price",
        title="Average Nightly Price by Room Type",
        labels={"room_type": "Room Type", "price": "Average Price ($)"},
    ),
    use_container_width=True,
)

st.header("📍 Neighbourhood Analysis")
neighbourhood_summary = (
    filtered.groupby(neighbourhood_col)
    .agg(
        listings=("id", "count"),
        average_price=("price", "mean"),
        average_rating=("review_scores_rating", "mean")
        if "review_scores_rating" in filtered.columns
        else ("price", "mean"),
    )
    .reset_index()
    .sort_values("average_price", ascending=False)
)
st.plotly_chart(
    px.bar(
        neighbourhood_summary.head(15),
        x="average_price",
        y=neighbourhood_col,
        orientation="h",
        title="Top 15 Neighbourhoods by Average Nightly Price",
        labels={
            "average_price": "Average Price ($)",
            neighbourhood_col: "Neighbourhood",
        },
    ),
    use_container_width=True,
)

st.header("🏡 Property Characteristics")
col1, col2 = st.columns(2)
with col1:
    st.plotly_chart(
        px.scatter(
            filtered,
            x="accommodates",
            y="price",
            color="room_type",
            hover_data=[neighbourhood_col],
            title="Price vs Accommodation Capacity",
            labels={
                "accommodates": "Guests Accommodated",
                "price": "Nightly Price ($)",
            },
        ),
        use_container_width=True,
    )
with col2:
    property_summary = (
        filtered.groupby("property_type")
        .agg(listings=("id", "count"), average_price=("price", "mean"))
        .reset_index()
        .sort_values("listings", ascending=False)
        .head(15)
    )
    st.plotly_chart(
        px.bar(
            property_summary,
            x="listings",
            y="property_type",
            orientation="h",
            title="Most Common Property Types",
            labels={
                "listings": "Number of Listings",
                "property_type": "Property Type",
            },
        ),
        use_container_width=True,
    )

st.header("⭐ Guest Reviews & Ratings")
rating_columns = [
    column
    for column in [
        "review_scores_rating",
        "review_scores_accuracy",
        "review_scores_cleanliness",
        "review_scores_checkin",
        "review_scores_communication",
        "review_scores_location",
        "review_scores_value",
    ]
    if column in filtered.columns
]
if rating_columns:
    rating_data = [
        {
            "Metric": column.replace("review_scores_", "").replace("_", " ").title(),
            "Average": filtered[column].mean(),
        }
        for column in rating_columns
    ]
    st.plotly_chart(
        px.bar(
            pd.DataFrame(rating_data),
            x="Metric",
            y="Average",
            title="Average Guest Rating Components",
            range_y=[0, 10],
        ),
        use_container_width=True,
    )

st.header("📅 Availability & Pricing")
if {"date", "available"}.issubset(calendar.columns):
    availability = (
        calendar.groupby("date")
        .agg(available=("available", lambda values: (values == "t").mean() * 100))
        .reset_index()
    )
    st.plotly_chart(
        px.line(
            availability,
            x="date",
            y="available",
            title="Daily Listing Availability",
            labels={"date": "Date", "available": "Available Listings (%)"},
        ),
        use_container_width=True,
    )

st.header("📊 Listing Data")
display_columns = [
    column
    for column in [
        "name",
        neighbourhood_col,
        "room_type",
        "property_type",
        "accommodates",
        "bedrooms",
        "bathrooms",
        "price",
        "review_scores_rating",
    ]
    if column in filtered.columns
]
st.dataframe(filtered[display_columns].head(100), use_container_width=True)

st.caption(
    "Source: public Kaggle dataset — alexanderfreberg/airbnb-listings-2016-dataset. "
    "The dashboard is an independent portfolio analysis and is not affiliated with Airbnb or Kaggle."
)
