-- ==============================================================================
-- Telco Customer Churn - Advanced Data Analysis Queries
-- Dataset: Telco_Customer_Churn_Cleaned.csv
-- Note: These queries utilize the engineered features (TenureBucket, TotalServices)
-- created during the Python EDA phase.
-- ==============================================================================

-- 1. Baseline Churn Metrics by Contract Type
-- Purpose: Quantify the churn rate and total revenue lost across contract types.
SELECT 
    Contract,
    COUNT(customerID) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(customerID), 2) AS churn_rate_pct,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN TotalCharges ELSE 0 END), 2) AS revenue_lost_to_churn
FROM telco_churn
GROUP BY Contract
ORDER BY churn_rate_pct DESC;


-- 2. Churn Rate by Tenure Cohort
-- Purpose: Identify the critical drop-off periods in the customer lifecycle.
-- Uses the engineered 'TenureBucket' column.
SELECT 
    TenureBucket,
    COUNT(customerID) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(customerID), 2) AS churn_rate_pct
FROM telco_churn
GROUP BY TenureBucket
ORDER BY 
    CASE TenureBucket 
        WHEN '0-1 Year' THEN 1 
        WHEN '1-2 Years' THEN 2 
        WHEN '2-4 Years' THEN 3 
        WHEN '4-5 Years' THEN 4 
        WHEN '5+ Years' THEN 5 
    END;


-- 3. The Impact of Ecosystem Stickiness (Total Services Count)
-- Purpose: Prove that customers with more add-on services are less likely to churn.
-- Uses the engineered 'TotalServices' column.
SELECT 
    TotalServices,
    COUNT(customerID) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(customerID), 2) AS churn_rate_pct
FROM telco_churn
GROUP BY TotalServices
ORDER BY TotalServices ASC;


-- 4. Customer Lifetime Value (CLV) Proxy Analysis
-- Purpose: Segment retained customers by their value to identify the most lucrative segments.
-- CLV Proxy = (Tenure * MonthlyCharges)
WITH CustomerValue AS (
    SELECT 
        customerID,
        Contract,
        InternetService,
        (tenure * MonthlyCharges) AS clv_proxy
    FROM telco_churn
    WHERE Churn = 'No'
)
SELECT 
    Contract,
    InternetService,
    COUNT(customerID) AS active_customers,
    ROUND(AVG(clv_proxy), 2) AS avg_clv
FROM CustomerValue
GROUP BY Contract, InternetService
ORDER BY avg_clv DESC;


-- 5. High-Risk, High-Value Target Segment (Actionable Output)
-- Purpose: Identify specific active customers who fit the "High Churn Profile" 
-- (Month-to-month, Fiber Optic, low total services) AND pay above-average monthly charges.
-- These are the prime targets for immediate retention campaigns.
SELECT 
    customerID,
    MonthlyCharges,
    TotalServices,
    tenure
FROM telco_churn
WHERE Churn = 'No'
  AND Contract = 'Month-to-month'
  AND InternetService = 'Fiber optic'
  AND TotalServices < 3
  AND MonthlyCharges > (SELECT AVG(MonthlyCharges) FROM telco_churn)
ORDER BY MonthlyCharges DESC
LIMIT 100;
