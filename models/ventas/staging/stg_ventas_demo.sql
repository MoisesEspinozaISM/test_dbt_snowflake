{{ config(
    materialized='table',
    database=generate_database_name_from_node(this),
    schema=generate_schema_name_from_node(this)
) }}

SELECT 
    o.ORDER_ID,
    o.CUSTOMER_ID,
    o.ORDER_DATE,
    o.TOTAL_PRICE
FROM {{ source('snowflake_sample_data', 'orders') }}
