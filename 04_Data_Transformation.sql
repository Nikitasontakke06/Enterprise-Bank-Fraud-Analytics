-- ============================================================
-- ENTERPRISE BANK FRAUD ANALYTICS
-- DATA TRANSFORMATION
-- ============================================================

USE DATABASE BANK_FRAUD_DB;

USE WAREHOUSE BANK_WH;

-- The current pipeline performs data type conversion
-- in STAGING.CLEAN_TRANSACTIONS.
--
-- Additional analytical transformations can be added here
-- when required by the business requirements.s