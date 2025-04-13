select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select segmento_cliente
from CLIENTES.gold.gold_segmentacion_clientes
where segmento_cliente is null



      
    ) dbt_internal_test