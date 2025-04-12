
  create or replace   view dbt_sandbox.public.silver_orders_enriched
  
   as (
    

SELECT
    o.order_id,
    o.customer_id,
    o.status,
    o.order_date,
    o.total_price,
    c.customer_name,
    c.nation_id
FROM dbt_sandbox.public.stg_orders o
LEFT JOIN dbt_sandbox.public.stg_customers c
  ON o.customer_id = c.customer_id
  );

