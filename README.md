# Enterprise Bank Fraud Analytics

An end-to-end banking fraud analytics project using **Snowflake SQL and Power BI** to identify fraud patterns, analyze customer and transaction risk, and provide interactive business insights.

---

## Project Overview

The Enterprise Bank Fraud Analytics project provides an analytical framework for understanding fraudulent transactions across different customer, payment, device, employment, housing, and risk characteristics.

The project combines:

- Snowflake for data ingestion, cleaning, transformation, analysis, views, streams, and tasks
- SQL for the analytical data pipeline
- Power BI for interactive dashboards and DAX-based KPIs
- GitHub for version control and project documentation

---

## Business Problem

Banking organizations process large volumes of transactions, making it difficult to identify fraudulent activity and understand the factors associated with fraud.

Fraud and risk teams need reliable analytical insights to:

- Monitor overall fraud exposure
- Identify high-risk transactions
- Analyze fraud trends over time
- Understand customer risk characteristics
- Identify suspicious payment and device patterns
- Compare legitimate and fraudulent transactions
- Support data-driven fraud investigation and decision-making

---

## Project Objectives

1. Build a structured fraud analytics pipeline using Snowflake.
2. Load and validate raw transaction data.
3. Clean and standardize transaction attributes.
4. Create analytical views for Power BI.
5. Analyze fraud across customer, payment, device, and risk dimensions.
6. Develop interactive Power BI dashboards.
7. Create reusable DAX measures for business KPIs.
8. Implement Snowflake Streams and Tasks for incremental processing.

---

## Technologies Used

| Technology | Purpose |
|---|---|
| Snowflake | Data storage, processing, transformation and analytics |
| SQL | Data ingestion, cleaning, transformation and analysis |
| Power BI | Interactive dashboards and visualization |
| DAX | KPI calculations and analytical measures |
| Git & GitHub | Version control and project management |

---

# Architecture

```text
                         Source Dataset
                              |
                              v
                    +-------------------+
                    |     Snowflake     |
                    +-------------------+
                              |
                              v
                         RAW Schema
                              |
                              v
                       STAGING Schema
                              |
                 Data Cleaning & Transformation
                              |
                              v
                      ANALYTICS Schema
                              |
             +----------------+----------------+
             |                |                |
             v                v                v
       Analytical Views   SQL Analysis    Streams & Tasks
             |
             v
                         Power BI
             |
      +------+------+------+
      |             |      |
      v             v      v
   Page 1         Page 2  Page 3
 Executive       Customer Fraud Pattern
 Overview        & Risk    & Behavioral
                Analysis    Analysis