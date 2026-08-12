# Data Dictionary

## Dataset

Enterprise Bank Fraud Analytics Dataset

## Transaction Fields

| Column | Description | Type |
|---|---|---|
| FRAUD_BOOL | Indicates whether the transaction is classified as fraudulent | To be verified |
| PAYMENT_TYPE | Payment type associated with the transaction | Categorical |
| DEVICE_OS | Operating system/device category associated with the transaction | Categorical |
| EMPLOYMENT_STATUS | Customer employment category | Categorical |
| HOUSING_STATUS | Customer housing category | Categorical |
| CUSTOMER_AGE | Age of the customer | Numeric |
| INCOME | Customer income value | Numeric |
| CREDIT_RISK_SCORE | Credit risk score associated with the customer/transaction | Numeric |
| PROPOSED_CREDIT_LIMIT | Proposed credit limit | Numeric |
| FOREIGN_REQUEST | Indicates whether the request is foreign | Binary |
| HOME_PHONE_VALID | Indicates whether the home phone information is valid | Binary |
| MOBILE_VALID | Indicates whether the mobile information is valid | Binary |
| SESSION_DURATION | Duration of the transaction/session | Numeric |
| DAYS_SINCE_REQUEST | Number of days since the request | Numeric |
| NAME_EMAIL_SIMILARITY | Similarity between name and email information | Numeric |
| PREV_ADDRESS_MONTHS_COUNT | Number of months associated with the previous address | Numeric |
| CURRENT_ADDRESS_MONTHS_COUNT | Number of months associated with the current address | Numeric |
| INTENDED_BALCON_AMOUNT | Intended transaction/request amount | Numeric |

## Additional Fields

Additional fields present in the dataset should be documented here after validation against the actual source dataset.

## Data Type Verification

Exact Snowflake data types should be verified against the table definition using:

SHOW COLUMNS IN TABLE <table_name>;

or:

DESCRIBE TABLE <table_name>;