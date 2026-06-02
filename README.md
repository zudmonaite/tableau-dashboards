# 💫 Tableau Dashboards

This project was completed as part of the **Turing College** Data Analysis program, where I worked as a data analyst for the fictional company AdventureWorks.

The objective of the assignment was to design an interactive **Tableau dashboard** and use it as a basis for two tailored presentations: one for executive leadership and one for department leads. The goal was not only to analyze data, but also to communicate insights effectively to different business audiences with varying levels of data literacy.

The project simulates a real-world business scenario in which different stakeholders require different levels of detail. An executive-level presentation focuses on high-level strategic insights, key performance indicators, and business impact. In contrast, a department-level presentation provides more operational detail, helping teams understand how the insights relate to their daily processes and responsibilities.

**🌱 Skills demonstrated:**

- Data visualization (Tableau)
- Dashboard design and development
- KPI definition and tracking
- Business storytelling
- Stakeholder communication
- Exploratory data analysis (EDA)
- Data cleaning and transformation
- SQL for data extraction and aggregation
- Time-series analysis (sales/performance trends)
- Customer and sales performance analysis
- Data-driven decision making
- Presentation of insights to non-technical audiences
- Analytical thinking and problem-solving

---
## 🧱 Portfolio Structure

- **SQL Analysis Workbook**: A Google Sheets document containing all SQL queries used in the project and the data used for the project.
- **Dashboard**: Link to the interactive Tableau dashboard, including a short description of its purpose and instructions on how to use it.
- **Presentations**: Links to both presentation decks (executive-level and department-level), tailored for different business audiences.
---
## 🌍 Table of Contents

- [Data Source](#-data-source)
- [SQL Analysis Workbook](#-sql-analysis-workbook)
- [Dashboard](#dashboard)
- [Presentations](#presentations)
- [Technologies](#-technologies)
- [Usage Instructions](#-usage-instructions)
- [Next Steps](#-next-steps)

---
## 🧳 Data Source

**AdventureWorks 2005** demo database provided by Microsoft.

You can download the dataset here:  
[Microsoft Learn AdventureWorks Samples](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver17)

---

## ⭐SQL Analysis Workbook

In the initial stage of the analysis, core datasets were extracted to support key business metrics such as total sales, total orders, and average sales. This was achieved using SQL techniques including JOINs, subqueries, and CASE statements.

Due to Tableau’s data limitations when connected via Google Sheets, the dataset was structured and extracted in separate categories to ensure efficient performance and flexibility in analysis. These datasets were then combined and used in Tableau for visualization and reporting.

The analysis focused on key business dimensions such as sales performance by country, purchase reasons, online vs offline sales distribution, and product sub-categories. These insights were later visualized in an interactive Tableau dashboard.

In addition, a separate dataset including employee, tax, province, shipping, cost, and stock information was extracted to support regional-level analysis. This enabled a deeper investigation into sales differences across regions and helped identify potential drivers behind higher or lower sales performance in specific areas.

- Google Sheets document containing all SQL queries and query results: [View here](https://docs.google.com/spreadsheets/d/16rs60-3v7XEebjf_jeqwWKEqtv1NwFJD158DcAbvukM/edit?gid=2017398580#gid=2017398580)
- All SQL queries are also stored in the GitHub repository: [GitHub folder](https://github.com/zudmonaite/tableau-dashboards/tree/main/queries)

---

## ⭐Dashboard

### 📊 Tableau Sales Analytics Dashboard**

This Tableau dashboard is an interactive business intelligence tool designed to analyze sales performance across multiple dimensions, including time, geography, product categories, and sales channels.

The goal of this project is to transform raw sales data into actionable business insights that support both strategic (executive-level) and operational (department-level) decision-making.

### 🎛️ Dashboard Features

**⏱️ Dynamic Time Analysis**
The dashboard includes a flexible time control panel allowing users to analyze data at different aggregation levels:
- Yearly
- Quarterly
- Monthly

Users can also:
- Drill down into specific months or quarters
- Compare performance across different time periods, such as:
  - Same period in previous year
  - Previous month or quarter within the same year

### 🧭 Navigation

The dashboard is divided into multiple sections accessible via navigation tabs, enabling users to switch between different analytical perspectives.

### 📈 Main Dashboard (KPI Overview)

The main view provides high-level business KPIs:
- Total Sales
- Total Orders
- Average Sales Value

Each KPI can be explored individually with interactive filtering.

**Key analysis dimensions include:**
- Sales distribution by country
- Customer purchase reasons
- Online vs offline sales performance
- Product category performance:
  - Bikes
  - Components
  - Accessories
  - Clothing

Each visualization includes tooltips and contextual insights to support interpretation and decision-making.

### 📊 Category-Level Analysis

This section enables deeper exploration by product category.

Users can:
- Select a specific KPI (Sales, Orders, Average Sales)
- Analyze performance by category and sub-category

**Available breakdowns:**
- Sales distribution by country
- Customer purchase behavior (reason for purchase)
- Online vs offline sales distribution
- KPI performance by sub-category
- Price analysis across sub-categories

This view supports product-level optimization and category performance evaluation.

### 🌍 Regional Analysis

The regional analysis section focuses on geographic performance differences.

**Key insights include:**
- Price comparisons across regions and product categories
- Country-level distribution of top-selling products
- Purchase reason analysis by region
- Shipping cost analysis
- Tax impact analysis
- Identification of top-performing sales managers
- Interactive map visualization of store distribution by country and region

This section helps identify regional performance drivers and operational differences across markets.

### 🛒 Online vs Offline Sales Analysis

This section focuses on sales channel performance.

Users can:
- Filter by product category
- Analyze KPI performance (Sales, Orders, Average Sales)
- Compare online vs offline revenue
- Evaluate pricing differences between channels

This analysis helps identify customer behavior differences and channel-specific performance patterns.

### 💡 Design Principle

The dashboard is designed to support both:

- **Executive-level analysis**: High-level KPIs, trends, and strategic insights  
- **Operational analysis**: Detailed breakdowns by category, region, and sales channel  

It enables seamless transition from overview insights to deep analytical exploration, supporting data-driven decision-making across the organization.

### 🔗 Project Purpose

This project demonstrates skills in:
- Tableau dashboard design and development
- Interactive data visualization
- KPI tracking and business performance analysis
- Multi-dimensional sales analysis
- Data storytelling for different stakeholder groups

👉 [View Interactive Tableau Dashboard](https://public.tableau.com/app/profile/viktorija.zudmonaite/viz/Project2_17405171104110/CategoriesDashboard)

---

## ⭐Presentations

---

## 💻 Technologies

- Tableau (data visualization, dashboard design, and interactive reporting)
- SQL (data extraction and preparation)
- Microsoft Excel / CSV (data handling and intermediate storage)
- Google Sheets (supporting analysis and documentation)
- GitHub (project documentation and version control)
  
---

## 🔎 Usage Instructions

---

## ❔ Next Steps
