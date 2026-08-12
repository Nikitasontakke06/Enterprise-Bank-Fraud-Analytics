-- ============================================================
-- ENTERPRISE BANK FRAUD ANALYTICS
-- ANALYTICAL VIEWS
-- ============================================================

USE DATABASE BANK_FRAUD_DB;

USE WAREHOUSE BANK_WH;


-- ============================================================
-- View 1: Fraud Overview
-- ============================================================

CREATE OR REPLACE VIEW ANALYTICS.VW_FRAUD_OVERVIEW AS

SELECT
    COUNT(*) AS total_transactions,

    SUM(fraud_bool) AS fraud_transactions,

    COUNT(*) - SUM(fraud_bool)
        AS legitimate_transactions,

    ROUND(
        (SUM(fraud_bool) * 100.0) / COUNT(*),
        2
    ) AS fraud_percentage

FROM STAGING.CLEAN_TRANSACTIONS;


-- ============================================================
-- View 2: Payment Type Analysis
-- ============================================================

CREATE OR REPLACE VIEW ANALYTICS.VW_PAYMENT_ANALYSIS AS

SELECT
    payment_type,

    COUNT(*) AS total_transactions,

    SUM(fraud_bool) AS fraud_transactions,

    ROUND(
        (SUM(fraud_bool) * 100.0) / COUNT(*),
        2
    ) AS fraud_rate

FROM STAGING.CLEAN_TRANSACTIONS

GROUP BY payment_type;


-- ============================================================
-- View 3: Device Analysis
-- ============================================================

CREATE OR REPLACE VIEW ANALYTICS.VW_DEVICE_ANALYSIS AS

SELECT
    device_os,

    COUNT(*) AS total_transactions,

    SUM(fraud_bool) AS fraud_transactions,

    ROUND(
        (SUM(fraud_bool) * 100.0) / COUNT(*),
        2
    ) AS fraud_rate

FROM STAGING.CLEAN_TRANSACTIONS

GROUP BY device_os;


-- ============================================================
-- View 4: Customer Analysis
-- ============================================================

CREATE OR REPLACE VIEW ANALYTICS.VW_CUSTOMER_ANALYSIS AS

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
    housing_status;


-- ============================================================
-- View 5: Monthly Fraud Trend
-- ============================================================

CREATE OR REPLACE VIEW ANALYTICS.VW_MONTHLY_FRAUD AS

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


-- ============================================================
-- Validate Views
-- ============================================================

SELECT *
FROM ANALYTICS.VW_FRAUD_OVERVIEW;


SELECT *
FROM ANALYTICS.VW_PAYMENT_ANALYSIS;


SELECT *
FROM ANALYTICS.VW_DEVICE_ANALYSIS;


SELECT *
FROM ANALYTICS.VW_CUSTOMER_ANALYSIS;


SELECT *
FROM ANALYTICS.VW_MONTHLY_FRAUD;