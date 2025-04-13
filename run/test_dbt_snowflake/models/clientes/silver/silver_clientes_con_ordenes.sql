
  
    

        create or replace transient table CLIENTES.silver.silver_clientes_con_ordenes
         as
        (

SELECT
    c.customer_id,
    c.customer_name,
    c.market_segment,
    COUNT(o.order_id) AS total_ordenes,
    ROUND(SUM(o.total_price), 2) AS total_comprado,
    MAX(o.order_date) AS ultima_compra
FROM CLIENTES.staging.stg_clientes_demo c
LEFT JOIN VENTAS.staging.stg_ventas_demo o
    ON c.customer_id = o.customer_id
GROUP BY 1, 2, 3
        );
      
  