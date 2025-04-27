# 🛒 Adventure Works Sales Analysis

This project analyzes the Adventure Works Sales dataset using **SQL** and **Power BI**.  
It covers key business metrics such as total sales by product category, order status breakdown, top-selling products, daily sales trends, and more.

---

## 📁 Dataset Overview

- Sales transaction data from the Adventure Works company
- Imported into a **MySQL** database
- Used for structured query analysis and business intelligence reporting

---

## 🛠️ Tools & Technologies

- **MySQL** for database and SQL analysis
- **Power BI Desktop** for visualization
- **SQL Scripts** for data import, exploratory analysis, and business insights

---

## 📊 Analysis & Visualizations

The following metrics were analyzed and visualized:

- **Total Sales by Product Category**: Aggregated total revenue by product type.
- **Orders by Status**: Breakdown of orders (e.g., Pending, Shipped, Delivered).
- **Top-Selling Products**: Highest revenue-generating products.
- **Daily Sales Trends**: Sales volume trend over time.
- **Top Payment Method Adoption**: Percentage share of sales by payment method.
- **Average Price by Category**: Average product price per category.
- **Heaviest Products**: Top 5 heaviest products by weight.
- **Most Common Sizes**: Most frequently sold product sizes.
- **Average Price by Size**: Price analysis based on product size.
- **Price-to-Weight Ratio**: Visualization of price compared to product weight.
- **Size Impact on Sales**: Revenue and quantity analysis by product size.

---

## ⚙️ Setup Instructions

### Database Setup

- Run the `adventure_works_data_import.sql` script to create the Adventure Works Sales table.
- Run the `adventure_works_eda.sql` script for Exploratory Data Analysis (EDA) on the imported sales data.
- Run the `adventure_works_sales_analyse.sql` script to create the views and analyze the dataset.
- Ensure you have the correct permissions to create databases, tables, and views in your MySQL environment.

---

### Power BI Setup

- Open the `AdventureWorksSales.pbix` file in **Power BI Desktop**.
- Connect the Power BI file to your MySQL database (**SalesDB**).
- Refresh the dataset to load all visualizations based on the views created in the database.
