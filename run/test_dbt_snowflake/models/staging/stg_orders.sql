
  create or replace   view dbt_sandbox.public.stg_orders
  
   as (
    

SELECT
    O_ORDERKEY     AS order_id,
    O_CUSTKEY      AS customer_id,
    O_ORDERSTATUS  AS status,
    O_TOTALPRICE   AS total_price,
    O_ORDERDATE    AS order_date
FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS
  );

