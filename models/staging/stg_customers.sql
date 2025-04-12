-- models/staging/stg_customers.sql

{{ config(materialized='view') }}

SELECT
    C_CUSTKEY      AS customer_id,
    C_NAME         AS customer_name,
    C_ADDRESS      AS address,
    C_NATIONKEY    AS nation_id,
    C_PHONE        AS phone,
    C_ACCTBAL      AS balance,
    C_MKTSEGMENT   AS segment
FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER
