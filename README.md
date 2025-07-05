# Olist E-commerce Analytics Dashboard

A complete end-to-end **Data Analytics project** built on the [Olist Brazilian E-commerce Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce), showcasing real-world skills in SQL, Tableau, KPI design, and business reporting.

---

##  Project Objectives

- Analyze sales performance by product category and region
- Evaluate customer behavior and profitability
- Track trends and seasonality in purchases
- Build a dynamic KPI dashboard using Tableau
- Derive actionable business insights

---

##  Dataset Overview

Dataset from Kaggle includes:
- Customers, orders, items, products
- Payments, reviews, sellers, geolocation
- Product category name translations

All data was loaded into a **PostgreSQL database**, queried via SQL, and visualized in **Tableau Public**.

---

##  Tech Stack

| Tool           | Purpose                        |
|----------------|--------------------------------|
| PostgreSQL     | Data modeling + SQL queries    |
| Python (pandas + sqlalchemy) | CSV import into PostgreSQL |
| SQL            | Business queries (JOINs, aggregation) |
| Tableau Public | Dashboards + Interactivity     |
| GitHub         | Version control + documentation |

---

##  Business Insights

###  1. Top Performing Product Categories:
- Overall most profitable:  
  `bed_bath_table`, `computer_accessories`, `health_beauty`, `sport_leisure`, `watches_gifts`
- **#1 Winner**: `health_beauty` — total revenue of **$1.233M**

---

###  2. Last Month Highlights:
- `health_beauty` generated **$120K**, highest among all
- Next: `watches_gifts` with **$72K**

---

###  3. Regional Insights:
- **State SP (São Paulo)** generated the most: **$5M**
- Top categories in SP:
  1. `bed_bath_table`
  2. `health_beauty`  
  - Last month: `health_beauty` overtook `bed_bath_table` by **$13K**

---

###  4. Seasonality:
- `computer_accessories` shows seasonal peaks during **winter (Dec–Feb)**

---

##  Dashboard Preview

![Dashboard Screenshot](screenshots/dashboard.png)

 View interactive dashboard on **Tableau Public**:  
 [https://public.tableau.com/app/profile/ilya.yathenko/viz/1_17516421115550/Dashboard1]

---

##  Repository Structure

