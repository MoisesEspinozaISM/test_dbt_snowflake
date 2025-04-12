

SELECT
    customer_id,
    DATE_TRUNC('month', order_date) AS mes,
    COUNT(order_id) AS total_pedidos,
    ROUND(SUM(total_price), 2) AS total_ventas
FROM dbt_sandbox.silver.silver_incremental_ventas

  WHERE order_date > (SELECT MAX(order_date) FROM dbt_sandbox.gold.gold_incremental_kpis)

GROUP BY 1, 2