

SELECT
    order_id,
    customer_id,
    order_date,
    total_price

FROM VENTAS.staging.stg_ventas_demo


WHERE order_date > (SELECT MAX(order_date) FROM VENTAS.silver.silver_incremental_ventas)
