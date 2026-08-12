# System Architecture

## Project

Enterprise Bank Fraud Analytics

## Architecture Overview

The project uses Snowflake for cloud-based data storage, processing, transformation and analytics, with Microsoft Power BI used for interactive visualization and business reporting.

## Technology Stack

- Snowflake
- SQL
- Microsoft Power BI
- DAX
- VS Code
- Git/GitHub

## Snowflake Environment

Database:

BANK_FRAUD_DB

Warehouse:

BANK_WH

Schemas:

- RAW
- STAGING
- ANALYTICS

## Data Flow

Raw Fraud Dataset
        ↓
RAW Schema
        ↓
Data Cleaning
        ↓
STAGING Schema
        ↓
Data Transformation
        ↓
ANALYTICS Schema
        ↓
Analytical Views
        ↓
Power BI
        ↓
Interactive Fraud Analytics Dashboard

## RAW Layer

The RAW layer stores the source transaction data with minimal transformation.

Purpose:

- Preserve source data
- Provide a foundation for processing
- Support data validation and reprocessing

## STAGING Layer

The STAGING layer contains cleaned and prepared transaction data.

Activities include:

- Data validation
- Null handling
- Data type handling
- Duplicate checks
- Data quality preparation

## ANALYTICS Layer

The ANALYTICS layer contains analytical tables and views used for reporting.

Examples include:

- TRANSACTION_HISTORY
- NEW_TRANSACTIONS
- VW_POWERBI_DATA
- VW_CUSTOMER_ANALYSIS
- VW_DEVICE_ANALYSIS
- VW_FRAUD_OVERVIEW
- VW_MONTHLY_FRAUD
- VW_PAYMENT_ANALYSIS

## Streams and Tasks

Snowflake Streams are used to track changes in transactional data.

Snowflake Tasks are used to automate scheduled processing.

Together, they support incremental data processing.

## Power BI Layer

Power BI connects to the analytical layer and provides interactive dashboards.

The dashboard contains three pages:

1. Executive Fraud Overview
2. Customer and Risk Analysis
3. Fraud Pattern and Behavioral Analysis

## Security

Credentials, passwords, access tokens and connection strings must not be stored in the project repository.