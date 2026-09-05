# Retail Inventory & Sales Optimization Tool

## Business Gap
Retailers may collect sales and inventory data but often lack an analytical system that turns that data into clear inventory decisions.

## Problem
Retailers can struggle to know which products to reorder, which products are slow-moving, and which products are at risk of stockouts or overstocking. This can lead to lost sales, excess inventory, and money being tied up in unsold stock.

## Solution
Built an end-to-end analytics pipeline that cleans raw retail data, explores it using SQL, and visualizes key inventory and sales metrics in an interactive Power BI dashboard — helping retailers identify reorder needs, slow-moving stock, and revenue trends at a glance.

## Key Insights
- **Demand Fulfillment Rate is 95.71%**, meaning roughly 4.29% of demand goes unmet — representing real, recoverable lost sales.
- All 5 product categories show **nearly identical sales volume** (1.94M–2.01M units each), indicating a well-balanced product mix with no single dominant category.
- Revenue is **evenly split across all four seasons** (~25% each), showing this business has no strong seasonal dependency.
- **Store S003 holds noticeably higher inventory** (2.01M units) than other stores despite similar sales performance, suggesting a possible overstocking risk worth investigating.
- Total revenue across the dataset is **$546,172,187.65**, generated from just 20 products across 5 stores and 4 regions.

## Tools Used
- **Python (Pandas)** — data cleaning: handling missing values with column-specific logic (e.g. filling `Discount` and `Units Sold` with 0 where a blank realistically means "none," filling `Inventory Level` and `Demand Forecast` with the column mean to avoid falsely implying stockouts), standardizing text formatting, and converting date fields.
- **MySQL** — exploratory data analysis: aggregations, category and region breakdowns, revenue calculations, and seasonal performance queries.
- **Power BI** — interactive dashboard for visualizing inventory levels, sales by category, seasonal performance, and revenue by region.

## Dashboard Preview
![Retail Inventory Dashboard](retail_inventory_dashboard.png)

## Project Files
- `notebooks/Retail_inventory_cleaning.ipynb` — Python data cleaning process
- `sql/retail_inventory_queries.sql` — exploratory SQL analysis and aggregation queries
- `data/retail_inventory_raw.csv` — original raw dataset
- `data/retail_inventory_cleaned.csv` — cleaned dataset used for analysis
- `dashboard/retail_inventory_dashboard.png` — final Power BI dashboard

## Process Overview
1. **Data Cleaning (Python/Pandas)** — Identified and handled missing values on a column-by-column basis, reasoning through what a missing value actually meant in each business context (e.g. a missing discount likely means no discount was applied, while a missing inventory level does not necessarily mean zero stock). Standardized text fields and converted date columns to a proper datetime format.
2. **Exploratory Analysis (SQL)** — Loaded the cleaned dataset into MySQL and ran queries to calculate total inventory, revenue by category, revenue by season, and average discount rates.
3. **Visualization (Power BI)** — Connected the analysis to an interactive dashboard summarizing total revenue, stock levels, demand fulfillment, sales by category, and seasonal performance — giving retail managers a clear view for reorder and stocking decisions.

## Author
Built by Samuel ("Muel") as part of an ongoing data analytics portfolio, combining SQL, Python, and Power BI to solve real retail decision-making problems.
