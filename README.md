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

## ⭐ SQL Analysis Workbook

This section documents the data preparation and transformation process used to support business analysis in Tableau.

SQL was used to extract and structure data from the AdventureWorks database to enable analysis of sales performance, customer behavior, and regional differences.

The final dataset supports decision-making across:
- Revenue and sales performance analysis
- Customer behavior and purchasing patterns
- Operational factors such as shipping, tax, and costs

- Google Sheets document containing all SQL queries and query results: [View here](https://docs.google.com/spreadsheets/d/16rs60-3v7XEebjf_jeqwWKEqtv1NwFJD158DcAbvukM/edit?gid=2017398580#gid=2017398580)
- All SQL queries are also stored in the GitHub repository: [GitHub folder](https://github.com/zudmonaite/tableau-dashboards/tree/main/queries)

---

## ⭐ Dashboard

This Tableau dashboard provides an interactive sales analytics solution designed to support both strategic and operational decision-making.

It enables users to explore sales performance across time, geography, product categories, and sales channels through dynamic filtering and drill-down capabilities.

### 🎛️ Key Features

- Multi-level time analysis (Year / Quarter / Month)
- Period comparison (YoY and sequential)
- KPI tracking (Sales, Orders, Average Sales)
- Cross-dimensional analysis:
  - Geography (countries, regions)
  - Product categories & sub-categories
  - Online vs Offline channels
  - Customer behavior

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

This project includes two tailored presentations designed for different stakeholder groups:

- **Executive Leadership Presentation (5 min)** – High-level overview focusing on KPIs, business performance, and strategic insights  
  👉 [View Presentation](https://docs.google.com/presentation/d/1pD7ZivvoOFOaurna7f9p9Z-mdzkN7gyVDOO9zF_VEUw/edit)

- **Department-Level Presentation (10 min)** – More detailed analysis with operational insights, breakdowns by segments, and actionable recommendations  
  👉 [View Presentation](https://docs.google.com/presentation/d/1V6wV46JgPhooraprvB6okRa5oYWq3jPMIpNRW0MVsJs/edit)
  
---

## 💻 Technologies

- Tableau (data visualization, dashboard design, and interactive reporting)
- SQL (data extraction and preparation)
- Microsoft Excel / CSV (data handling and intermediate storage)
- Google Sheets (supporting analysis and documentation)
- GitHub (project documentation and version control)
  
---

## 🔎 Usage Instructions

1. Open the interactive Tableau dashboard via the provided link in the repository.
2. Use the left-side control panel to select:
   - Time aggregation level (Yearly, Quarterly, Monthly)
   - Specific time period (month or quarter, depending on selection)
   - Comparison period (e.g., previous period or same period in different year)
3. Navigate between dashboard sections using the built-in tabs:
   - Main KPI overview
   - Category-level analysis
   - Regional analysis
   - Online vs Offline sales analysis
4. Interact with visualizations using filters, tooltips, and KPI selectors to explore deeper insights.
5. Review presentation slides for interpretation of key findings and business recommendations.

---

## ❔ Next Steps

- Improve dashboard performance by optimizing the data model and reducing complexity
- Introduce forecasting and trend analysis for key KPIs
- Expand segmentation analysis (e.g., customer lifetime value and behavioral clustering)
- Add drill-down capabilities for deeper product and regional exploration
- Align dashboard structure more closely with specific business questions per stakeholder group
- Automate data refresh process for near real-time analytics
