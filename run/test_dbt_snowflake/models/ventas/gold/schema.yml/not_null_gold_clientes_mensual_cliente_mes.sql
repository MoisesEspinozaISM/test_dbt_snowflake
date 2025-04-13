select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select cliente_mes
from VENTAS.gold.gold_clientes_mensual
where cliente_mes is null



      
    ) dbt_internal_test