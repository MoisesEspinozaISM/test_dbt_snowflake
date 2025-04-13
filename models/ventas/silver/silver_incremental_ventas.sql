{{ config(
    materialized='incremental',
    unique_key='order_id',
    database=generate_database_name_from_node(this),
    schema=generate_schema_name_from_node(this)
) }}

SELECT
    order_id,
    customer_id,
    order_date,
    total_price

FROM {{ ref('stg_ventas_demo') }}

{% if is_incremental() %}
WHERE order_date > (SELECT MAX(order_date) FROM {{ this }})
{% endif %}
