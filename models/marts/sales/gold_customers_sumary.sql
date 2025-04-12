-- models/marts/sales/gold_customers_summary.sql

{{ config(materialized='table') }}

SELECT
    segment,
    COUNT(*) AS total_customers,
    ROUND(AVG(balance), 2) AS avg_balance
FROM {{ ref('stg_customers') }}
GROUP BY 1

