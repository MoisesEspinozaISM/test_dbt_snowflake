
  
    

        create or replace transient table dbt_sandbox.silver.silver_incremental_ventas
         as
        (

SELECT
    order_id,
    customer_id,
    total_price,
    order_date
FROM dbt_sandbox.staging.stg_orders

        );
      
  