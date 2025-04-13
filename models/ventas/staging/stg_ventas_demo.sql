{{ config(
    materialized='table',
    database=generate_database_name_from_node(this),
    schema=generate_schema_name_from_node(this)
) }}

SELECT 
    O_ORDERKEY     AS order_id,
    O_CUSTKEY      AS customer_id,
    O_ORDERDATE    AS order_date,
    O_TOTALPRICE   AS total_price
FROM {{ source('snowflake_sample_data', 'orders') }}

