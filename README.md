# Rafa Díaz de León Arriaga - Data Analyst Portfolio

## About

Hi, I'm Rafa! After 6 years working as an architectural designer, I'm now pursuing a new career in the data analytics field, bringing with me a strong eye for visual storytelling and problem-solving. I'm based in Monterrey, Mexico, and currently building my skill set across Excel, Power BI, Python, SQL, and R, with the goal of working as a Data Analyst.

My background in architecture taught me to think spatially and communicate complex information clearly — skills I now apply to turning raw data into dashboards and insights that drive decisions.

This repository showcases the data projects I've built while transitioning into the field.

## Table of Contents

- [About](#about)
- [Portfolio Projects](#portfolio-projects)
  * SQL / Python
    + [Blinkit Groceries App Sales Analysis](#blinkit-groceries-app-sales-analysis)
  * Power BI
    + [Cinépolis Social Media Performance Dashboard](#cinépolis-social-media-performance-dashboard)
  * Excel
    + [Broadway Theater Revenue Dashboard](#broadway-revenue-dashboard)
- [Contact](#contact)

## Portfolio Projects

In this section I list my data analytics projects, briefly describing the goal, approach, and tools used for each.

### Blinkit Groceries App Sales Analysis

**Goal:** To evaluate which products and customers drive the business, assess delivery reliability, and surface actionable insights from a 5-table relational database built from a real-world grocery delivery dataset.

**Code:** [`Blinkit-Groceries-App-Sales-Analysis`](./Blinkit-Groceries-App-Sales-Analysis)

**Description:** A combined SQL + Python project. Designed and built a 5-table relational schema in MySQL/MariaDB (`customers`, `products`, `orders`, `order_items`, `delivery_performance`), wrote analysis queries using CTEs, `CASE` classification, subqueries, and `JOIN`s, then connected to the database from Python (SQLAlchemy + Pandas) to visualize the results in a Jupyter Notebook.

**Skills:** relational database design, SQL querying (CTEs, subqueries, JOINs, CASE), data visualization, Python-SQL integration.

**Technology:** MySQL/MariaDB, SQL, Python, SQLAlchemy, Pandas, Matplotlib, Jupyter Notebook.

**Results:** Every product in the 268-item catalog sold at least once — no dead stock. Delivery reliability has room to improve: 69.4% of orders arrive on time, while 9.9% are significantly delayed. The customer base skews "Frequent" (1,371 of 2,500 customers), with a smaller loyal Premium segment (121) and a larger Occasional group (680) that represents a re-engagement opportunity.

**Screenshots:**

![Blinkit-Groceries-App-Sales-Analysis/charts/top_products.png](Blinkit-Groceries-App-Sales-Analysis/charts/top_products.png)
![Blinkit-Groceries-App-Sales-Analysis/charts/monthly_revenue.png](Blinkit-Groceries-App-Sales-Analysis/charts/monthly_revenue.png)
![Blinkit-Groceries-App-Sales-Analysis/charts/customer_tiers.png](Blinkit-Groceries-App-Sales-Analysis/charts/customer_tiers.png)
![Blinkit-Groceries-App-Sales-Analysis/charts/delivery_performance.png](Blinkit-Groceries-App-Sales-Analysis/charts/delivery_performance.png)

---

### Cinépolis Social Media Performance Dashboard

**Goal:** To evaluate Cinépolis' social media performance across platforms, understand which content creators drive the most engagement, and identify opportunities to optimize future campaigns.

**Code:** [`Cinepolis-Social-Media-Dashboard`](./Cinepolis-Social-Media-Dashboard)

**Description:** A multi-page Power BI dashboard analyzing social media performance across platforms. The project covers platform-level KPIs, content creator contribution analysis (P&N), and campaign optimization insights. It involved building a data model, writing custom DAX measures, cleaning data through Power Query, and designing gauge charts and time-based visuals.

**Skills:** data modeling, DAX measures, data cleaning, dashboard design, campaign performance analysis.

**Technology:** Power BI, DAX, Power Query.

**Results:** There isn't a "winner" app, each one of them has its own strength: Tiktok delivers in terms of volume (1.177 billion video views, more than double that of Facebook and Instagram combined), yet Instagram generates the most efficient interaction (an 11.6% engagement rate, far surpassing the others). Facebook leads in total raw engagement (231M), though this is heavily driven by paid advertising. The recommendation is not to choose one platform, but to set specific strategies for each.

**Screenshots:**

![Cinepolis-Social-Media-Dashboard/screenshots/resumen-general.png](https://github.com/rafaelDiazDeLeon/Data-Analyst-Portfolio/blob/08101f22f9daaa2ee9caeaf29dd1c3fd366f6fb8/Cinepolis-Social-Media-Dashboard/screenshots/resumen-general.png)
![Cinepolis-Social-Media-Dashboard/screenshots/conclusiones1.png](https://github.com/rafaelDiazDeLeon/Data-Analyst-Portfolio/blob/08101f22f9daaa2ee9caeaf29dd1c3fd366f6fb8/Cinepolis-Social-Media-Dashboard/screenshots/conclusiones1.png)
![Cinepolis-Social-Media-Dashboard/screenshots/paloma-y-nacho.png](https://github.com/rafaelDiazDeLeon/Data-Analyst-Portfolio/blob/08101f22f9daaa2ee9caeaf29dd1c3fd366f6fb8/Cinepolis-Social-Media-Dashboard/screenshots/paloma-y-nacho.png)

---

### Broadway Revenue Dashboard

**Goal:** To determine which Broadway shows have generated the most value over time — and whether that ranking changes once revenue is compared on equal footing across decades.

**Code:** [`Broadway Theater Revenue Dashboard`](./Broadway-Theater-Revenue-Dashboard)

**Description:** An Excel dashboard analyzing the historical financial performance of Broadway shows, built on a public Kaggle dataset. The dashboard spans 5 analysis pages plus 2 pivot table sheets used as the source for a scatter plot, built using `GETPIVOTDATA` formulas with MDX syntax.

**Skills:** data modeling, pivot tables, DAX measures, inflation-adjusted analysis, data visualization.

**Technology:** Excel, DAX, GETPIVOTDATA (MDX), Scatter Plot.

**Results:** Once revenue is adjusted for inflation, long-running classics like *Cats* and *Les Misérables* outrank newer productions like *Hamilton* — reversing the story told by nominal (unadjusted) revenue and showing how comparing dollars across different eras can be misleading.

**Screenshots:**
![Broadway-Theater-Revenue-Dashboard/overview.png
](https://github.com/rafaelDiazDeLeon/Data-Analyst-Portfolio/blob/debfe7eb5192cdeecbba6ea54c8b1d43d54c853d/Broadway-Theater-Revenue-Dashboard/overview.png)
![Broadway-Theater-Revenue-Dashboard/teatros.png](https://github.com/rafaelDiazDeLeon/Data-Analyst-Portfolio/blob/debfe7eb5192cdeecbba6ea54c8b1d43d54c853d/Broadway-Theater-Revenue-Dashboard/teatros.png)

## Contact

- LinkedIn: [rafaelDiazDeLeon](https://www.linkedin.com/in/rafael-díaz-de-león-arriaga-bb7948125/)
- Email: rafa3diazdeleon@gmail.com
