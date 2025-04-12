{{ config(materialized='view') }}

SELECT
    L_ORDERKEY     AS order_id,
    L_EXTENDEDPRICE AS extended_price,
    L_DISCOUNT     AS discount
FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.LINEITEM
