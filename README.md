<<<<<<< HEAD
# Enterprise Bank Fraud Analytics

## Project objective

Provide an enterprise-ready foundation for analyzing banking fraud in Snowflake and presenting governed insights through Power BI.

## Business problem

Fraud teams need reliable, timely visibility into transaction patterns, customer risk, and behavioral signals so they can monitor fraud exposure and prioritize investigation.

## Technologies used

- Snowflake for data storage, transformation, views, streams, and tasks
- Power BI for dashboarding and DAX measures
- SQL for the data pipeline and analytical layer

## Architecture overview

Source data is loaded into the `RAW` schema, cleaned in `STAGING`, and transformed into governed analytical objects in `ANALYTICS`. Power BI consumes approved `ANALYTICS` views.

## Snowflake database structure

- Database: `BANK_FRAUD_DB`
- Warehouse: `BANK_WH`
- Schemas: `RAW`, `STAGING`, `ANALYTICS`

The `ANALYTICS` layer is planned to contain `TRANSACTION_HISTORY`, `NEW_TRANSACTIONS`, `TIME_TRAVEL_DEMO`, `VW_POWERBI_DATA`, `VW_CUSTOMER_ANALYSIS`, `VW_DEVICE_ANALYSIS`, `VW_FRAUD_OVERVIEW`, `VW_MONTHLY_FRAUD`, and `VW_PAYMENT_ANALYSIS`.

## Data pipeline

1. Load approved source data to `RAW`.
2. Validate, deduplicate, and standardize it in `STAGING`.
3. Apply approved fraud and risk transformations in `ANALYTICS`.
4. Expose governed analytical views to Power BI.
5. Use streams and tasks for approved incremental processing.

## Power BI dashboard structure

The Power BI workbook is maintained at `PowerBI/Enterprise_Bank_Fraud_Analytics.pbix`. This repository scaffold does not create or alter the PBIX file.

### Page 1 — Enterprise Bank Fraud Analytics Dashboard

Purpose: Executive Fraud Overview.

### Page 2 — Customer And Risk Analysis Dashboard

Purpose: Customer and Risk Analysis.

### Page 3 — Fraud Pattern & Behavioral Analysis

Purpose: Fraud Pattern and Behavioral Analysis.

## Key KPIs

- Total transactions
- Fraud transactions
- Legitimate transactions
- Fraud rate
- Risk-category distribution
- Customer, device, payment, and behavioral indicators

## Key insights

Populate this section with validated findings after the approved data model, metrics, and dashboard visuals are implemented.

## How to reproduce the project

1. Obtain approved access to Snowflake and the source data.
2. Review each numbered SQL file and add organization-approved implementation logic.
3. Execute scripts in numerical order in an approved Snowflake environment.
4. Build or update the Power BI workbook using only the approved analytical views.
5. Document verified DAX measures in `08_DAX_Measures.txt`.

## Security note

Credentials, passwords, tokens, account identifiers, and connection strings must never be committed to this repository. Use approved secret management and role-based access controls.

=======
# Enterprise-Bank-Fraud-Analytics
Enterprise Bank Fraud Analytics using Snowflake SQL and Power BI
>>>>>>> 6db9c04cec7a9cae2b2f83d834b650d8d125fa33
