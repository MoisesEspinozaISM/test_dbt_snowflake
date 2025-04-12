{{ config(
    materialized='incremental',
    unique_key='customer_id'
) }}

SELECT
    customer_id,
    DATE_TRUNC('month', order_date) AS mes,
    COUNT(order_id) AS total_pedidos,
    ROUND(SUM(total_price), 2) AS total_ventas
FROM {{ ref('silver_incremental_ventas') }}
{% if is_incremental() %}
  WHERE order_date > (SELECT MAX(order_date) FROM {{ this }})
{% endif %}
GROUP BY 1, 2
