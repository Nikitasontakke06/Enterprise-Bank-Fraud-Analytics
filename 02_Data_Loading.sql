-- ============================================================
-- ENTERPRISE BANK FRAUD ANALYTICS
-- DATA LOADING
-- ============================================================

USE DATABASE BANK_FRAUD_DB;

USE WAREHOUSE BANK_WH;

USE SCHEMA RAW;


-- CSV file format

CREATE OR REPLACE FILE FORMAT CSV_FORMAT
TYPE = CSV
FIELD_OPTIONALLY_ENCLOSED_BY = '"'
SKIP_HEADER = 1;


-- Internal stage

CREATE OR REPLACE STAGE FRAUD_STAGE
FILE_FORMAT = CSV_FORMAT;


SHOW STAGES;


-- Check files uploaded to stage

LIST @FRAUD_STAGE;


-- Raw transaction table

CREATE OR REPLACE TABLE RAW.RAW_TRANSACTIONS (
    fraud_bool STRING,
    income STRING,
    name_email_similarity STRING,
    prev_address_months_count STRING,
    current_address_months_count STRING,
    customer_age STRING,
    days_since_request STRING,
    intended_balcon_amount STRING,
    payment_type STRING,
    zip_count_4w STRING,
    velocity_6h STRING,
    velocity_24h STRING,
    velocity_4w STRING,
    bank_branch_count_8w STRING,
    date_of_birth_distinct_emails_4w STRING,
    employment_status STRING,
    credit_risk_score STRING,
    email_is_free STRING,
    housing_status STRING,
    phone_home_valid STRING,
    phone_mobile_valid STRING,
    bank_months_count STRING,
    has_other_cards STRING,
    proposed_credit_limit STRING,
    foreign_request STRING,
    source STRING,
    session_length_in_minutes STRING,
    device_os STRING,
    keep_alive_session STRING,
    device_distinct_emails_8w STRING,
    device_fraud_count STRING,
    month STRING
);


-- Load CSV data

COPY INTO RAW.RAW_TRANSACTIONS
FROM @FRAUD_STAGE
FILE_FORMAT = (
    FORMAT_NAME = 'CSV_FORMAT'
);


-- Validate loaded data

SELECT COUNT(*) AS TOTAL_RAW_TRANSACTIONS
FROM RAW.RAW_TRANSACTIONS;


SELECT *
FROM RAW.RAW_TRANSACTIONS
LIMIT 100;