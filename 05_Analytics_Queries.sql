-- ============================================================
-- ENTERPRISE BANK FRAUD ANALYTICS
-- ANALYTICS QUERIES
-- ============================================================

USE DATABASE BANK_FRAUD_DB;

USE WAREHOUSE BANK_WH;


-- ============================================================
-- 1. Overall Fraud Summary
-- ============================================================

SELECT
    COUNT(*) AS total_transactions,
    SUM(fraud_bool) AS fraud_transactions,
    COUNT(*) - SUM(fraud_bool) AS legitimate_transactions,
    ROUND(
        (SUM(fraud_bool) * 100.0) / COUNT(*),
        2
    ) AS fraud_percentage
FROM STAGING.CLEAN_TRANSACTIONS;


-- ============================================================
-- 2. Fraud by Payment Type
-- ============================================================

SELECT
    payment_type,
    COUNT(*) AS total_transactions,
    SUM(fraud_bool) AS fraud_transactions,
    ROUND(
        (SUM(fraud_bool) * 100.0) / COUNT(*),
        2
    ) AS fraud_rate
FROM STAGING.CLEAN_TRANSACTIONS
GROUP BY payment_type
ORDER BY fraud_rate DESC;


-- ============================================================
-- 3. Fraud by Device OS
-- ============================================================

SELECT
    device_os,
    COUNT(*) AS total_transactions,
    SUM(fraud_bool) AS fraud_transactions,
    ROUND(
        (SUM(fraud_bool) * 100.0) / COUNT(*),
        2
    ) AS fraud_rate
FROM STAGING.CLEAN_TRANSACTIONS
GROUP BY device_os
ORDER BY fraud_rate DESC;


-- ============================================================
-- 4. Fraud by Employment and Housing
-- ============================================================

SELECT
    employment_status,
    housing_status,
    COUNT(*) AS total_transactions,
    SUM(fraud_bool) AS fraud_transactions,
    ROUND(
        (SUM(fraud_bool) * 100.0) / COUNT(*),
        2
    ) AS fraud_rate
FROM STAGING.CLEAN_TRANSACTIONS
GROUP BY
    employment_status,
    housing_status
ORDER BY fraud_rate DESC;


-- ============================================================
-- 5. Monthly Fraud Trend
-- ============================================================

SELECT
    month,
    COUNT(*) AS total_transactions,
    SUM(fraud_bool) AS fraud_transactions,
    ROUND(
        (SUM(fraud_bool) * 100.0) / COUNT(*),
        2
    ) AS fraud_rate
FROM STAGING.CLEAN_TRANSACTIONS
GROUP BY month
ORDER BY month;