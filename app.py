import streamlit as st
import pandas as pd
import plotly.express as px
from pathlib import Path

st.set_page_config(page_title="Seattle Airbnb Market Dashboard", page_icon="🏠", layout="wide")

st.title("🏠 Seattle Airbnb Market Dashboard")
st.caption("Pricing, availability, property characteristics and guest reviews")

DATA_DIR = Path("dashboard_data")

@st.cache_data
def load_data():
    listings = pd.read_csv(DATA_DIR / "listings_dashboard.csv")
    calendar = pd.read_csv(DATA_DIR / "calendar_dashboard.csv")
    reviews = pd.read_csv(DATA_DIR / "reviews_dashboard.csv")

    listings["price"] = pd.to_numeric(listings["price"].astype(str).str.replace("$", "", regex=False).str.replace(",", ""), errors="coerce")
    calendar["price"] = pd.to_numeric(calendar["price"].astype(str).str.replace("$", "", regex=False).str.replace(",", ""), errors="coerce")
    calendar["date"] = pd.to_datetime(calendar["date"], errors="coerce")
    reviews["date"] = pd.to_datetime(reviews["date"], errors="coerce")
    return listings, calendar, reviews

listings, calendar, reviews = load_data()

st.sidebar.header("Dashboard Filters")
neighbourhoods = sorted(listings["neighbourhood_cleansed"].dropna().unique())
selected_neighbourhood = st.sidebar.multiselect("Neighbourhood", neighbourhoods, default=[])
room_types = sorted(listings["room_type"].dropna().unique())
selected_room_type = st.sidebar.multiselect("Room Type", room_types, default=[])

filtered = listings.copy()
if selected_neighbourhood:
    filtered = filtered[filtered["neighbourhood_cleansed"].isin(selected_neighbourhood)]
if selected_room_type:
    filtered = filtered[filtered["room_type"].isin(selected_room_type)]

col1, col2, col3, col4 = st.columns(4)
col1.metric("Listings", f"{len(filtered):,}")
col2.metric("Average Nightly Price", f"${filtered['price'].mean():,.0f}")
col3.metric("Average Rating", f"{filtered['review_scores_rating'].mean():.1f}")
col4.metric("Average Reviews", f"{filtered['number_of_reviews'].mean():.1f}")
st.divider()

st.header("💰 Pricing Analysis")
price_by_room = filtered.groupby("room_type", as_index=False)["price"].mean().sort_values("price", ascending=False)
fig = px.bar(price_by_room, x="room_type", y="price", title="Average Nightly Price by Room Type", labels={"room_type":"Room Type","price":"Average Price ($)"})
st.plotly_chart(fig, use_container_width=True)

st.header("📍 Neighbourhood Analysis")
neighbourhood_summary = filtered.groupby("neighbourhood_cleansed").agg(listings=("id","count"), average_price=("price","mean"), average_rating=("review_scores_rating","mean")).reset_index().sort_values("average_price", ascending=False)
fig = px.bar(neighbourhood_summary.head(15), x="average_price", y="neighbourhood_cleansed", orientation="h", title="Top 15 Neighbourhoods by Average Nightly Price", labels={"average_price":"Average Price ($)","neighbourhood_cleansed":"Neighbourhood"})
st.plotly_chart(fig, use_container_width=True)

st.header("🏡 Property Characteristics")
col1, col2 = st.columns(2)
with col1:
    fig = px.scatter(filtered, x="accommodates", y="price", color="room_type", hover_data=["neighbourhood_cleansed"], title="Price vs Accommodation Capacity", labels={"accommodates":"Guests Accommodated","price":"Nightly Price ($)"})
    st.plotly_chart(fig, use_container_width=True)
with col2:
    property_summary = filtered.groupby("property_type").agg(listings=("id","count"), average_price=("price","mean")).reset_index().sort_values("listings", ascending=False).head(15)
    fig = px.bar(property_summary, x="listings", y="property_type", orientation="h", title="Most Common Property Types", labels={"listings":"Number of Listings","property_type":"Property Type"})
    st.plotly_chart(fig, use_container_width=True)

st.header("⭐ Guest Reviews & Ratings")
rating_columns = ["review_scores_rating","review_scores_accuracy","review_scores_cleanliness","review_scores_checkin","review_scores_communication","review_scores_location","review_scores_value"]
rating_data = [{"Metric": c.replace("review_scores_", "").replace("_", " ").title(), "Average": filtered[c].mean()} for c in rating_columns if c in filtered.columns]
rating_df = pd.DataFrame(rating_data)
fig = px.bar(rating_df, x="Metric", y="Average", title="Average Guest Rating Components", range_y=[0,10])
st.plotly_chart(fig, use_container_width=True)

st.header("📅 Availability & Pricing")
if not calendar.empty:
    availability = calendar.groupby("date").agg(average_price=("price","mean"), available=("available", lambda x: (x == "t").mean()*100)).reset_index()
    fig = px.line(availability, x="date", y="available", title="Daily Listing Availability", labels={"date":"Date","available":"Available Listings (%)"})
    st.plotly_chart(fig, use_container_width=True)

st.header("📊 Listing Data")
display_columns = [c for c in ["name","neighbourhood_cleansed","room_type","property_type","accommodates","bedrooms","bathrooms","price","review_scores_rating"] if c in filtered.columns]
st.dataframe(filtered[display_columns].head(100), use_container_width=True)
st.caption("Source: Private Kaggle dataset processed through GitHub Actions.")
