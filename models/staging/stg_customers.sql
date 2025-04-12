{{ config(
    materialized='view',
    alias='stg_customers'
) }}


SELECT
    C_CUSTKEY      AS customer_id,
    C_NAME         AS customer_name,
    C_NATIONKEY    AS nation_id,
    C_ACCTBAL      AS balance
FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER
