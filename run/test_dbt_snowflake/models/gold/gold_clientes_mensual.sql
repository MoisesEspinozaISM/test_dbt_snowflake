
  
    

        create or replace transient table dbt_sandbox.default_public.gold_clientes_mensual
         as
        (

SELECT
    customer_id,
    customer_name,
    DATE_TRUNC('month', order_date) AS mes,
    COUNT(order_id) AS total_pedidos,
    ROUND(SUM(total_price), 2) AS total_ventas,
    ROUND(AVG(total_price), 2) AS ticket_promedio
FROM dbt_sandbox.default_public.silver_orders_enriched
GROUP BY 1, 2, 3
ORDER BY 1, 3
        );
      
  