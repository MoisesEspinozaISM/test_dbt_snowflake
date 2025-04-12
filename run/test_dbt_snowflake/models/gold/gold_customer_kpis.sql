
  
    

        create or replace transient table dbt_sandbox.public.gold_customer_kpis
         as
        (

SELECT
    customer_id,
    customer_name,
    COUNT(order_id) AS total_orders,
    ROUND(SUM(total_price), 2) AS total_revenue,
    ROUND(AVG(total_price), 2) AS avg_order_value
FROM dbt_sandbox.public.silver_orders_enriched
GROUP BY 1, 2
        );
      
  