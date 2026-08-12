-- ============================================================
-- ENTERPRISE BANK FRAUD ANALYTICS
-- DATA CLEANING AND TYPE CONVERSION
-- ============================================================

USE DATABASE BANK_FRAUD_DB;

USE WAREHOUSE BANK_WH;


CREATE OR REPLACE TABLE STAGING.CLEAN_TRANSACTIONS AS

SELECT

    TO_NUMBER(fraud_bool) AS fraud_bool,

    TO_DOUBLE(income) AS income,

    TO_DOUBLE(name_email_similarity) AS name_email_similarity,

    TO_NUMBER(prev_address_months_count)
        AS prev_address_months_count,

    TO_NUMBER(current_address_months_count)
        AS current_address_months_count,

    TO_NUMBER(customer_age)
        AS customer_age,

    TO_NUMBER(days_since_request)
        AS days_since_request,

    TO_DOUBLE(intended_balcon_amount)
        AS intended_balcon_amount,

    payment_type,

    TO_NUMBER(zip_count_4w)
        AS zip_count_4w,

    TO_NUMBER(velocity_6h)
        AS velocity_6h,

    TO_NUMBER(velocity_24h)
        AS velocity_24h,

    TO_NUMBER(velocity_4w)
        AS velocity_4w,

    TO_NUMBER(bank_branch_count_8w)
        AS bank_branch_count_8w,

    TO_NUMBER(date_of_birth_distinct_emails_4w)
        AS dob_distinct_emails_4w,

    employment_status,

    TO_NUMBER(credit_risk_score)
        AS credit_risk_score,

    TO_NUMBER(email_is_free)
        AS email_is_free,

    housing_status,

    TO_NUMBER(phone_home_valid)
        AS phone_home_valid,

    TO_NUMBER(phone_mobile_valid)
        AS phone_mobile_valid,

    TO_NUMBER(bank_months_count)
        AS bank_months_count,

    TO_NUMBER(has_other_cards)
        AS has_other_cards,

    TO_NUMBER(proposed_credit_limit)
        AS proposed_credit_limit,

    TO_NUMBER(foreign_request)
        AS foreign_request,

    source,

    TO_DOUBLE(session_length_in_minutes)
        AS session_length_in_minutes,

    device_os,

    TO_NUMBER(keep_alive_session)
        AS keep_alive_session,

    TO_NUMBER(device_distinct_emails_8w)
        AS device_distinct_emails_8w,

    TO_NUMBER(device_fraud_count)
        AS device_fraud_count,

    TO_NUMBER(month)
        AS month

FROM RAW.RAW_TRANSACTIONS;


-- Validate cleaned table

SELECT COUNT(*) AS TOTAL_CLEAN_TRANSACTIONS
FROM STAGING.CLEAN_TRANSACTIONS;


SELECT *
FROM STAGING.CLEAN_TRANSACTIONS
LIMIT 100;