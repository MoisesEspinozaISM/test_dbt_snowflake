
  
    

        create or replace transient table dbt_sandbox.public_silver.silver_incremental_ventas
         as
        (

SELECT
    order_id,
    customer_id,
    total_price,
    order_date
FROM dbt_sandbox.public_staging.stg_orders

        );
      
  