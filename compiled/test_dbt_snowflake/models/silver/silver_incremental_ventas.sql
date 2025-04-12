

SELECT
    order_id,
    customer_id,
    total_price,
    order_date
FROM dbt_sandbox.staging.stg_orders

  WHERE order_date > (SELECT MAX(order_date) FROM dbt_sandbox.silver.silver_incremental_ventas)
