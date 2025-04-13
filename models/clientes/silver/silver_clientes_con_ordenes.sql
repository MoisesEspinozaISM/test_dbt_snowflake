{{ config(
    materialized='table',
    database=generate_database_name_from_node(this),
    schema=generate_schema_name_from_node(this)
) }}

SELECT
    c.customer_id,
    c.customer_name,
    c.market_segment,
    COUNT(o.order_id) AS total_ordenes,
    ROUND(SUM(o.total_price), 2) AS total_comprado,
    MAX(o.order_date) AS ultima_compra
FROM {{ ref('stg_clientes_demo') }} c
LEFT JOIN {{ ref('stg_ventas_demo') }} o
    ON c.customer_id = o.customer_id
GROUP BY 1, 2, 3
