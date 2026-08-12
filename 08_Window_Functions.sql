-- ============================================================
-- ENTERPRISE BANK FRAUD ANALYTICS
-- WINDOW FUNCTION ANALYSIS
-- ============================================================

USE DATABASE BANK_FRAUD_DB;

USE WAREHOUSE BANK_WH;

-- Review transaction risk indicators using existing cleaned data.
-- This query does not create or modify project objects.

SELECT
    month,
    payment_type,
    fraud_bool,
    credit_risk_score,
    RANK() OVER (
        PARTITION BY month
        ORDER BY credit_risk_score DESC
    ) AS monthly_credit_risk_rank,
    AVG(credit_risk_score) OVER (
        PARTITION BY payment_type
    ) AS payment_type_avg_credit_risk_score
FROM STAGING.CLEAN_TRANSACTIONS
ORDER BY month, monthly_credit_risk_rank;
