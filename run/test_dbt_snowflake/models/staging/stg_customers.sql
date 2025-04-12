
  create or replace   view dbt_sandbox.public.stg_customers
  
   as (
    -- models/staging/stg_customers.sql



SELECT
    C_CUSTKEY      AS customer_id,
    C_NAME         AS customer_name,
    C_ADDRESS      AS address,
    C_NATIONKEY    AS nation_id,
    C_PHONE        AS phone,
    C_ACCTBAL      AS balance,
    C_MKTSEGMENT   AS segment
FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER
  );

