{{ config(
    materialized='view',
    alias='silver_orders_enriched'
) }}


SELECT
    o.order_id,
    o.customer_id,
    o.status,
    o.order_date,
    o.total_price,
    c.customer_name,
    c.nation_id
FROM {{ ref('stg_orders') }} o
LEFT JOIN {{ ref('stg_customers') }} c
  ON o.customer_id = c.customer_id
