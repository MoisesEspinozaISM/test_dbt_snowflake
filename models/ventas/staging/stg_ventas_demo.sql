{{ config(
    materialized='table'
) }}

SELECT
    o.ORDER_ID,
    o.CUSTOMER_ID,
    o.ORDER_DATE,
    o.TOTAL_PRICE
FROM {{ source('snowflake_sample_data', 'tpch_sf1') }}.ORDERS o
LIMIT 10
