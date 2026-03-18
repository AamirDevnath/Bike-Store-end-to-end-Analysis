# Bike-Store-end-to-end-Analysis

🚲 Bike Store — End-to-End Sales Analysis

Overview

This project walks through a full data analysis pipeline for a bike store chain — starting from a raw SQL Server database all the way to polished, interactive dashboards. Think of it as a complete analytics workflow: set up the data, query it, and then tell a story with it visually.

Setting up the database

Everything kicks off with a SQL Server database built from three scripts — one to spin up all the tables and relationships, one to load the data in, and a cleanup script to tear it all down if needed. The database covers two schemas (sales and production) and tracks everything from customer orders to products, brands, stores, and the staff making the sales.

Writing the SQL

With the data in place, I wrote a T-SQL query that joins across eight tables to pull together a clean, flat dataset ready for analysis. It brings in revenue, units sold, customer info, product details, store location, brand, and which sales rep handled each order — everything needed to start asking interesting questions.

Excel Dashboard

The extracted data gets loaded into Excel, where I built a dynamic dashboard to explore sales performance. The workbook is included along with a PDF snapshot of the final dashboard.

Tableau Dashboard

The same dataset powers a Tableau dashboard for a more interactive take on the numbers. Both the .twb file and a PDF export are included in the repo.

Tools Used

SQL Server · Excel · Tableau

Questions This Project Explores

Which stores and reps are bringing in the most revenue?
How do sales break down across product categories and brands?
What do revenue and volume trends look like over time?
Which customer segments and regions are performing best?
