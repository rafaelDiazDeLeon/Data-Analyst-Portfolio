# 🎭 Broadway Revenue Dashboard

An Excel dashboard analyzing the historical financial performance of Broadway shows, with a particular focus on how **inflation-adjusting revenue completely changes the success ranking** across productions.

---

## 📌 Business question

Which shows have actually generated the most value over time, and does the answer change once we compare dollars from different decades on equal footing?

Once revenue is adjusted for inflation, classic long-runners like ***Cats*** and ***Les Misérables*** rank far above newer productions like ***Hamilton***, reversing the story told by nominal (unadjusted) revenue.

---

## 🗂️ Dashboard structure

| Section | Content |
|---|---|
| **Data Analysis - 5 pages** | Overall KPIs, revenue trends, nominal vs. inflation-adjusted comparison, per-show and per-season analysis |
| **Pivot table sheets - 2 pages** | Static pivot data (source for the scatter plot) using `GETPIVOTDATA` formulas with MDX syntax |

---

## 🛠️ Tools & techniques

- **EXCEL**:  data model, pivot tables
- **DAX**:  calculated measures for KPIs
- **GETPIVOTDATA (MDX)**:  static data extraction for chart plotting
- **SCATTER PLOT**:  visualizing the relationship between opening year and inflation-adjusted revenue

---

## 📊 Data source

Public dataset sourced from **Kaggle**, containing historical Broadway show revenue data.

---

## 🖼️ Screenshots


![Broadway-Theater-Revenue-Dashboard/overview.png](https://github.com/rafaelDiazDeLeon/Data-Analyst-Portfolio/blob/2cafe7406eb5a0cd59fed9297b7be04b437d650b/Broadway-Theater-Revenue-Dashboard/screenshots/overview.png)
![Broadway-Theater-Revenue-Dashboard/shows.png](https://github.com/rafaelDiazDeLeon/Data-Analyst-Portfolio/blob/2cafe7406eb5a0cd59fed9297b7be04b437d650b/Broadway-Theater-Revenue-Dashboard/screenshots/shows.png)
![Broadway-Theater-Revenue-Dashboard/ocupacion.png](https://github.com/rafaelDiazDeLeon/Data-Analyst-Portfolio/blob/2cafe7406eb5a0cd59fed9297b7be04b437d650b/Broadway-Theater-Revenue-Dashboard/screenshots/ocupacion.png)
![Broadway-Theater-Revenue-Dashboard/teatros.png](https://github.com/rafaelDiazDeLeon/Data-Analyst-Portfolio/blob/2cafe7406eb5a0cd59fed9297b7be04b437d650b/Broadway-Theater-Revenue-Dashboard/screenshots/teatros.png)


---

## 💡 Key insight

> Without adjusting for inflation, Hamilton dominates the numbers. Once inflation is factored in, the picture shifts: shows with decades-long runs, like Cats and Les Misérables, have generated more real cumulative value, a reminder of how comparing nominal dollars across different eras can lead to misleading conclusions.

---

## 👤 Author

**Rafael Díaz de León Arriaga** — Jr. Data Analyst | Former Architectural Designer
[GitHub](https://github.com/rafaelDiazDeLeon) · [LinkedIn](www.linkedin.com/in/rafael-díaz-de-león-arriaga-bb7948125)
