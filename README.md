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
*   `Business_Problem_Statement.pdf` - The formal scoping document detailing the business problem and objectives.
*   `Telco_Customer_Churn_Analysis.ipynb` - The Jupyter Notebook containing all Python-based Data Cleaning, Feature Engineering (`TotalServices`, `TenureBucket`), and Statistical Validation.
*   `telco_churn_sql_queries.sql` - Advanced SQL queries (utilizing CTEs and aggregations) used to answer complex business questions.
*   `Project_Report.pdf` - The final executive summary detailing key findings and three strategic recommendations.
*   `Telco_Customer_Churn.csv` - The raw dataset.

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
   git clone https://github.com/your-username/Customer-Trends-Analysis.git
   cd Customer-Trends-Analysis
   ```
2. **Review the Python Analytics:**
   Open `Telco_Customer_Churn_Analysis.ipynb` to view the data modeling and statistical testing.
3. **Run the SQL Queries:**
   Load the outputted `Telco_Customer_Churn_Cleaned.csv` into your preferred SQL database. Open `telco_churn_sql_queries.sql` and execute the queries to extract the business intelligence.
4. **Read the Final Deliverables:**
   Review `Project_Report.pdf` to see how the technical findings were translated into actionable business strategy.

---
*Prepared as a self-initiated, portfolio-grade data analytics case study.*
