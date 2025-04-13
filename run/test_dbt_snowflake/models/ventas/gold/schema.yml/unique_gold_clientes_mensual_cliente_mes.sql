select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    cliente_mes as unique_field,
    count(*) as n_records

from VENTAS.gold.gold_clientes_mensual
where cliente_mes is not null
group by cliente_mes
having count(*) > 1



      
    ) dbt_internal_test