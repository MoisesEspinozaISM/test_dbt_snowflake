{{ config(materialized='table') }}

SELECT
    customer_id,
    customer_name,
    COUNT(order_id) AS total_orders,
    ROUND(SUM(total_price), 2) AS total_revenue,
    ROUND(AVG(total_price), 2) AS avg_order_value
FROM {{ ref('silver_orders_enriched') }}
GROUP BY 1, 2
