# 📊 Executive Project Report: Telco Customer Churn Analysis

## 1. Objective and Methodology
The objective of this analysis was to identify the primary drivers behind Telco Inc.'s ~26.5% customer churn rate and provide actionable, data-driven strategies to improve customer retention. 

The analysis utilized a dataset of 7,043 customers. The workflow included:
*   **Data Preparation (Python):** Handling missing values, transforming billing data, and engineering key features like `TotalServices` (ecosystem stickiness) and `TenureBucket` (cohort analysis).
*   **Statistical Validation:** Utilizing Chi-Square tests to validate that observed patterns were statistically significant (p < 0.05).
*   **In-Depth Analytics (SQL):** Calculating Customer Lifetime Value (CLV) proxies and quantifying the revenue lost to churn across different business segments.

---

## 2. Key Findings & Insights

### A. The "Month-to-Month" Flight Risk
Contract type is the single largest driver of churn. Customers on month-to-month contracts churn at a rate exceeding 40%, whereas customers on 1-year or 2-year contracts have churn rates below 10%. Month-to-month customers account for the vast majority of the total revenue lost to churn.

### B. The First Year is Critical
Cohort analysis using the engineered `TenureBucket` feature revealed that the highest risk of attrition occurs within the first 12 months (0-1 Year cohort). If a customer can be retained past the 12-month mark, their likelihood of churning drops significantly.

### C. Fiber Optic Friction
Customers utilizing Fiber Optic internet services experience surprisingly high churn rates compared to DSL users, despite paying premium prices. However, further SQL analysis revealed that Fiber Optic customers who also subscribe to **Tech Support** and **Online Security** have much higher retention rates. This suggests that the high churn is driven by technical friction, not the internet speed itself.

### D. Ecosystem Stickiness
The `TotalServices` analysis proved a direct negative correlation between the number of services a customer uses and their likelihood to churn. Customers using 0-1 additional services are highly volatile, while customers deeply integrated into the Telco ecosystem (4+ services) rarely leave.

---

## 3. Strategic Recommendations

Based on the statistical and SQL-driven insights, we recommend the following three strategies to reduce churn and protect recurring revenue:

### Recommendation 1: Incentivize Contract Upgrades
**Action:** Launch a targeted marketing campaign offering month-to-month customers a slight discount (e.g., 5-10% off their monthly bill) or a free month of service if they sign a 1-year contract. 
**Rationale:** Locking customers into even a 1-year agreement drastically reduces their churn probability, securing higher overall Customer Lifetime Value (CLV) despite the initial discount.

### Recommendation 2: The "Fiber Optic Support" Bundle
**Action:** Automatically bundle basic Tech Support and Online Security at a heavily discounted rate (or free for the first 3 months) for all new Fiber Optic customers.
**Rationale:** Fiber Optic customers are high-value but experience high technical friction. Providing proactive support services increases their ecosystem stickiness and solves the primary driver of their attrition.

### Recommendation 3: Proactive 9-Month Outreach
**Action:** Implement an automated outreach program (via email or direct account manager calls) for customers approaching their 9th month of tenure.
**Rationale:** Since the 0-1 Year cohort sees the highest churn, intervening just before the critical 12-month drop-off period with loyalty rewards or service check-ins can proactively save at-risk accounts before they make the decision to leave.
