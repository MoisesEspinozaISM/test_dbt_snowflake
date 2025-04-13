

WITH base AS (

    SELECT
        customer_id,
        DATE_TRUNC('month', order_date) AS mes,
        ROUND(SUM(total_price), 2) AS total_ventas,
        COUNT(order_id) AS total_pedidos

    FROM VENTAS.silver.silver_incremental_ventas
    
    
    WHERE order_date > (SELECT MAX(mes) FROM VENTAS.gold.gold_clientes_mensual)
    

    GROUP BY 1, 2

),

con_clave AS (
    SELECT
        customer_id,
        mes,
        total_ventas,
        total_pedidos,
        -- Generamos una clave única para evitar duplicados
        md5(cast(coalesce(cast(customer_id as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(mes as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT)) AS cliente_mes
    FROM base
)

SELECT * FROM con_clave