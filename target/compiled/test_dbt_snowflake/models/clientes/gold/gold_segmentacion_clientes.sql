

SELECT
    *,
    CASE
        WHEN total_comprado > 100000 THEN 'Alto Valor'
        WHEN total_comprado BETWEEN 50000 AND 100000 THEN 'Valor Medio'
        ELSE 'Bajo Valor'
    END AS segmento_cliente
FROM CLIENTES.silver.silver_clientes_con_ordenes