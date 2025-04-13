{{ config(
    materialized='table',
    database=generate_database_name_from_node(this),
    schema=generate_schema_name_from_node(this)
) }}

SELECT
    c_custkey AS customer_id,
    c_name AS customer_name,
    c_nationkey AS nation_id,
    c_mktsegment AS market_segment
FROM {{ source('snowflake_sample_data', 'customer') }}
