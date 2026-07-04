# 📡 Telco Customer Churn: Predictive Retention Analytics

![Data Analytics](https://img.shields.io/badge/Domain-Data_Analytics-blue)
![Python](https://img.shields.io/badge/Language-Python-green)
![SQL](https://img.shields.io/badge/Language-SQL-orange)
![Status](https://img.shields.io/badge/Status-Complete-success)

## 📌 Project Overview
The telecommunications industry operates in a saturated, highly price-sensitive market where the cost of acquiring a new customer is estimated to be 5-7x higher than retaining an existing one. 

This project simulates a real-world analytics engagement for a fictional telecom provider experiencing an elevated customer churn rate (~26.5%). By analyzing the **IBM Telco Customer Churn dataset**, this project delivers an end-to-end analytics workflow—from raw data cleaning to statistical validation and SQL cohort analysis—to translate data into concrete retention recommendations.

---

## 🛠️ Tech Stack & Methodology
This project demonstrates proficiency across the full data analytics pipeline:

*   **Python (Pandas, NumPy, SciPy):** Used for Data Cleaning, Feature Engineering, and Statistical Validation (Chi-Square testing).
*   **Python (Matplotlib, Seaborn):** Used for Exploratory Data Analysis (EDA) and visualizing density, cohorts, and churn distribution.
*   **SQL:** Used for in-depth business analytics, calculating Customer Lifetime Value (CLV) proxies, and segmenting high-risk revenue.

---

## 📁 Repository Structure
```text
CustomerTrendAnalysis/
├── data/
│   ├── Telco_Customer_Churn.csv          # Raw dataset
│   └── Telco_Customer_Churn_Cleaned.csv  # Processed dataset ready for SQL
├── notebooks/
│   └── Telco_Customer_Churn_Analysis.ipynb  # EDA, Data Cleaning & Feature Engineering
├── sql/
│   └── telco_churn_sql_queries.sql       # Advanced SQL queries (CTEs, aggregations)
├── reports/
│   ├── Telco_Customer_Churn_Business_Problem_Statement.pdf  # Project scoping & objectives
│   └── Project_Report.pdf                # Final executive summary & recommendations
└── assets/
    └── *.png                             # Statistical visualizations generated via Seaborn
```

---

## 📊 Key Findings & Insights
Through rigorous Python EDA and SQL querying, several critical insights were uncovered:

1. **The "Month-to-Month" Flight Risk:** Contract type is the single largest driver of churn. Month-to-month customers account for the vast majority of the total revenue lost to churn.
2. **The First Year is Critical:** Cohort analysis revealed that the highest risk of attrition occurs within the first 12 months. If a customer can be retained past this mark, churn drops significantly.
3. **Ecosystem Stickiness:** There is a strong, statistically validated correlation between the number of services a customer uses and their retention. Customers deeply integrated into the Telco ecosystem (using multiple add-ons like Tech Support or Online Security) rarely leave.

---

## 🚀 How to Replicate this Project
1. **Clone the repository:**
   ```bash
   git clone https://github.com/ayushgupta-15/CustomerTrendAnalysis.git
   cd CustomerTrendAnalysis
   ```
2. **Review the Python Analytics:**
   Open `Telco_Customer_Churn_Analysis.ipynb` to view the data modeling and statistical testing.
3. **Run the SQL Queries:**
   Load the outputted `Telco_Customer_Churn_Cleaned.csv` into your preferred SQL database. Open `telco_churn_sql_queries.sql` and execute the queries to extract the business intelligence.
4. **Read the Final Deliverables:**
   Review `Project_Report.pdf` to see how the technical findings were translated into actionable business strategy.

---
*Prepared as a self-initiated, portfolio-grade data analytics case study.*
