# Retail Inventory Dashboard

## Business Gap

Retailers generate large volumes of sales and inventory data but may lack a clear analytical view of how inventory, demand, sales, and seasonal performance interact.

## Problem

Poor visibility into inventory and demand can lead to missed sales, excess stock, and inefficient allocation of products across regions. Retailers need a simple way to monitor revenue, stock levels, demand fulfillment, product performance, and seasonal trends.

## Solution

Built an end-to-end retail analytics solution that cleans raw inventory and sales data, explores it using SQL, and presents the results through an interactive Power BI dashboard — helping users monitor inventory performance, demand fulfillment, sales by category, regional performance, and seasonal trends.

## Key Insights

- **Demand Fulfillment Rate is 95.72%**, meaning approximately 4.28% of demand remains unfulfilled and may represent an opportunity to recover lost sales.
- Sales are **relatively balanced across the five product categories**, with no category showing a clear dominant position in the dashboard.
- Revenue is **almost evenly distributed across all four seasons**, with each season contributing roughly 25% of total performance.
- The dashboard shows **20 products** across **4 regions**, providing a view of how revenue and units sold are distributed geographically.
- Total revenue for the selected 2022 period is **$273,892,014.21**, with total stock of **10,025,978 units**.
- The average discount is **$9.90**, providing a useful view of pricing and promotional impact.

## Tools Used

- **Python (Pandas)** — data cleaning: handling missing values with column-specific logic, standardizing text formatting, and converting date fields.
- **MySQL** — exploratory data analysis: aggregations, category and regional breakdowns, revenue calculations, and seasonal analysis.
- **Power BI** — interactive dashboard for monitoring revenue, inventory, demand fulfillment, sales by category, regional performance, and seasonal trends.

## Dashboard Preview

![Retail Inventory Dashboard](retail%20inventory%20dashboard.png)

## Project Files

- [Retail inventory cleaning.ipynb](Retail%20inventory%20cleaning.ipynb) — Python data cleaning process
- [retail_inventory_queries.sql](retail_inventory_queries.sql) — exploratory SQL analysis and aggregation queries
- [retail_inventory_raw.csv](retail_inventory_raw.csv) — original raw dataset
- [retail_inventory_cleaned.csv](retail_inventory_cleaned.csv) — cleaned dataset used for analysis
- ![Retail Inventory Dashboard](Retain%20Analysis.png)
- [retail inventory dashboard.png](retail%20inventory%20dashboard.png) — dashboard preview image

## Process Overview

1. **Data Cleaning (Python/Pandas)** — Identified and handled missing values on a column-by-column basis, standardized text fields, and converted date columns into a proper datetime format.

2. **Exploratory Analysis (SQL)** — Loaded the cleaned dataset into MySQL and analyzed revenue, inventory, units sold, product categories, regions, discounts, and seasonal performance.

3. **Visualization (Power BI)** — Built an interactive dashboard with KPI cards, monthly seasonal performance, sales by category, demand fulfillment rate, regional revenue and units sold, and seasonal distribution.
