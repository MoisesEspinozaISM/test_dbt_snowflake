{{ config(
    materialized='incremental',
    unique_key='cliente_mes',
    database=generate_database_name_from_node(this),
    schema=generate_schema_name_from_node(this)
) }}

WITH base AS (

    SELECT
        customer_id,
        DATE_TRUNC('month', order_date) AS mes,
        ROUND(SUM(total_price), 2) AS total_ventas,
        COUNT(order_id) AS total_pedidos

    FROM {{ ref('silver_incremental_ventas') }}
    
    {% if is_incremental() %}
    WHERE order_date > (SELECT MAX(mes) FROM {{ this }})
    {% endif %}

    GROUP BY 1, 2

),

con_clave AS (
    SELECT
        customer_id,
        mes,
        total_ventas,
        total_pedidos,
        -- Generamos una clave única para evitar duplicados
        {{ dbt_utils.generate_surrogate_key(['customer_id', 'mes']) }} AS cliente_mes
    FROM base
)

SELECT * FROM con_clave
