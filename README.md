Adventure Works Sales Analysis

This project involves analyzing the Adventure Works Sales dataset using SQL and Power BI. The analysis includes key metrics like total sales by product category, order status, top-selling products, daily sales trends, and more. The dataset is imported into a MySQL database and analyzed with SQL queries, which are then visualized in Power BI.

Analysis and Visualizations

The following metrics were analyzed and visualized:

Total Sales by Product Category: Aggregates total sales for each product category.

Orders by Status: Breaks down the number of orders by their current status (e.g., Pending, Shipped, Delivered).

Top-Selling Products: Lists the most sold products by revenue.

Daily Sales Trend: Visualizes sales trends on a daily basis.

Top Payment Method Adoption: Shows the percentage of total sales by payment method.

Average Price by Category: Calculates the average price for each product category.

Heaviest Products: Lists the top 5 heaviest products based on weight.

Most Common Sizes: Displays the most commonly ordered product sizes.

Average Price by Size: Shows the average price for each product size.

Price-to-Weight Ratio: Visualizes the ratio of product price to its weight.

Size Impact on Sales: Analyzes the impact of product size on revenue and order quantity.

Setup Instructions

Database Setup:

Run the adventure_works_data_import.sql script to create the Adventure Works Sales table.

Run the adventure_works_eda.sql script for Exploratory Data Analysis (EDA) on the imported sales data.

Run the adventure_works_sales_analyse.sql to create the views and analyse the dataset

Ensure you have the correct permissions to create databases, tables, and views in your MySQL environment.

Power BI Setup:

Open the AdventureWorksSales.pbix file in Power BI Desktop.

Connect the Power BI file to your MySQL database (SalesDB).

Refresh the dataset to see all visualizations based on the views created in the database.
